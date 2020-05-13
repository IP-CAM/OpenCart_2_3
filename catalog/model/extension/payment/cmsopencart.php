<?php 
class ModelExtensionPaymentCmsopencart extends Model {
  	public function getMethod($address, $total) {
		$this->load->language('extension/payment/cmsopencart');
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('cmsopencart_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");
		
		if ($this->config->get('cmsopencart_total') > $total) {
			$status = false;
		} elseif (!$this->config->get('cmsopencart_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true; 
		} else {
			$status = false;
		}	
		
		$text_title = ''; 
		
		if(!$this->config->get('cmsopencart_cms_merchant') && !$this->config->get('cmsopencart_cms_salt')) {
			$text_title = 'CsPay';			
		}
		elseif(!$this->config->get('cmsopencart_cs_vanityurl') && !$this->config->get('cmsopencart_cs_access_key') && !$this->config->get('cmsopencart_cs_secret_key')) {
			$text_title = 'Cmsopencart'; // company or brand name 
			
		}
		else {
			if($this->config->get('cmsopencart_route_cs') == 0)
			{
				$text_title = 'Cmsopencart';
			}
			elseif($this->config->get('cmsopencart_route_cms') == 0)
			{
				$text_title = 'CsPay';	
			}
			else {
				$cper = $this->db->query("SELECT I.payment_method,I.payment_code, COUNT(*) / T.total * 100 AS percent FROM oc_order as I, (SELECT COUNT(*) AS total FROM oc_order where order_status_id > 0) AS T WHERE payment_method='CsPay' and payment_code='cmsopencart' and order_status_id >= ".$this->config->get('cmsopencart_order_status_id'));
		
				$pper = $this->db->query("SELECT I.payment_method,I.payment_code, COUNT(*) / T.total * 100 AS percent FROM oc_order as I, (SELECT COUNT(*) AS total FROM oc_order where order_status_id > 0) AS T WHERE payment_method='Cmsopencart' and payment_code='cmsopencart' and order_status_id >= ".$this->config->get('cmsopencart_order_status_id'));			
				
				if($cper->row['percent'] > $this->config->get('cmsopencart_route_cs') && $pper->row['percent'] <= $this->config->get('cmsopencart_route_cms')) {
					$text_title = 'Cmsopencart';
				}
				elseif($cper->row['percent'] <= $this->config->get('cmsopencart_route_cs') && $pper->row['percent'] > $this->config->get('cmsopencart_route_cms')) {
					$text_title = 'CsPay';
				}
				else {
					if($pper->row['percent'] >= $cper->row['percent'])
						$text_title = 'CsPay';
					else
						$text_title = 'Cmsopencart';
				}
			}
		}
		
		$method_data = array();
	
		if ($status && $text_title) {  
      		$method_data = array( 
        		'code'       => 'cmsopencart',
        		'title'      => $text_title,
				'terms'      => '',
				'sort_order' => $this->config->get('cmsopencart_sort_order')
      		);
    	}
   
    	return $method_data;
  	}
	
	
	
}
?>