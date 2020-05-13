<?php 
class ControllerExtensionPaymentCmsopencart extends Controller {
	private $error = array(); 

	public function index() {
		$this->load->language('extension/payment/cmsopencart');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
			
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

			$this->model_setting_setting->editSetting('cmsopencart', $this->request->post);				
			
			$this->session->data['success'] = $this->language->get('text_success');
			
			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true));
		}

		$data['heading_title'] = $this->language->get('heading_title');
		$data['entry_module'] = $this->language->get('entry_module');
		$data['entry_module_id'] = $this->language->get('entry_module_id');
		
		$data['entry_order_status'] = $this->language->get('entry_order_status');	
		$data['entry_order_fail_status'] = $this->language->get('entry_order_fail_status');	
		$data['entry_order_cancel_status'] = $this->language->get('entry_order_cancel_status');
		$data['entry_status'] = $this->language->get('entry_status');
		
		//$data['entry_currency'] = $this->language->get('entry_currency');
		//$data['help_currency'] = $this->language->get('help_currency');
		
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_all_zones'] = $this->language->get('text_all_zones');		
				
		$data['entry_merchant'] = $this->language->get('entry_merchant');
		$data['entry_workingkey'] = $this->language->get('entry_workingkey');
		$data['entry_partner_name'] = $this->language->get('entry_partner_name');
		
		$data['entry_partner_id'] = $this->language->get('entry_partner_id');
		$data['entry_partner_testurl'] = $this->language->get('entry_partner_testurl');
		$data['entry_partner_liveurl'] = $this->language->get('entry_partner_liveurl');
		$data['entry_ipaddress'] = $this->language->get('entry_ipaddress');
		$data['entry_test'] = $this->language->get('entry_test');
		
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
      

 		if ($this->error) {
			$data = array_merge($data,$this->error);
		} 
		
  		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true),
      		'separator' => false
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_payment'),
			'href'      => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true),
      		'separator' => ' :: '
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('extension/payment/cmsopencart', 'token=' . $this->session->data['token'], true),
      		'separator' => ' :: '
   		);
				
		$data['action'] = $this->url->link('extension/payment/cmsopencart', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'], 'SSL');
		
		if (isset($this->request->post['cmsopencart_module'])) {
			$data['cmsopencart_module'] = $this->request->post['cmsopencart_module'];
		} else {
			$data['cmsopencart_module'] = $this->config->get('cmsopencart_module');
		}
		
		
		
		
		if (isset($this->request->post['cmsopencart_cms_merchant'])) {
			$data['cmsopencart_cms_merchant'] = $this->request->post['cmsopencart_cms_merchant'];
		} else {
			$data['cmsopencart_cms_merchant'] = $this->config->get('cmsopencart_cms_merchant');
		}
		
		if (isset($this->request->post['cmsopencart_cms_workingkey'])) {
			$data['cmsopencart_cms_workingkey'] = $this->request->post['cmsopencart_cms_workingkey'];
		} else {
			$data['cmsopencart_cms_workingkey'] = $this->config->get('cmsopencart_cms_workingkey');
		}
		
		
		if (isset($this->request->post['cmsopencart_cms_partner_name'])) {
			$data['cmsopencart_cms_partner_name'] = $this->request->post['cmsopencart_cms_partner_name'];
		} else {
			$data['cmsopencart_cms_partner_name'] = $this->config->get('cmsopencart_cms_partner_name');
		}

		
		
		if (isset($this->request->post['cmsopencart_cms_partner_id'])) {
			$data['cmsopencart_cms_partner_id'] = $this->request->post['cmsopencart_cms_partner_id'];
		} else {
			$data['cmsopencart_cms_partner_id'] = $this->config->get('cmsopencart_cms_partner_id');
		}
		
		/* New Code Starts here */
		if (isset($this->request->post['cmsopencart_cms_testurl'])) {
			$data['cmsopencart_cms_testurl'] = $this->request->post['cmsopencart_cms_testurl'];
		} else {
			$data['cmsopencart_cms_testurl'] = $this->config->get('cmsopencart_cms_testurl');
		}
		
		
		if (isset($this->request->post['cmsopencart_cms_liveurl'])) {
			$data['cmsopencart_cms_liveurl'] = $this->request->post['cmsopencart_cms_liveurl'];
		} else {
			$data['cmsopencart_cms_liveurl'] = $this->config->get('cmsopencart_cms_liveurl');
		}
		
		/* New Code Ends here */
		
		
		
		if (isset($this->request->post['cmsopencart_cms_ipaddress'])) {
			$data['cmsopencart_cms_ipaddress'] = $this->request->post['cmsopencart_cms_ipaddress'];
		} else {
			$data['cmsopencart_cms_ipaddress'] = $this->config->get('cmsopencart_cms_ipaddress');
		}
		
		
		
		
	
		if (isset($this->request->post['cmsopencart_order_status_id'])) {
			$data['cmsopencart_order_status_id'] = $this->request->post['cmsopencart_order_status_id'];
		} else {
			$data['cmsopencart_order_status_id'] = $this->config->get('cmsopencart_order_status_id'); 
		} 

		if (isset($this->request->post['cmsopencart_order_fail_status_id'])) {
			$data['cmsopencart_order_fail_status_id'] = $this->request->post['cmsopencart_order_fail_status_id'];
		} else {
			$data['cmsopencart_order_fail_status_id'] = $this->config->get('cmsopencart_order_fail_status_id'); 
		} 
		
		if (isset($this->request->post['cmsopencart_order_cancel_status_id'])) {
			$data['cmsopencart_order_cancel_status_id'] = $this->request->post['cmsopencart_order_cancel_status_id'];
		} else {
			$data['cmsopencart_order_cancel_status_id'] = $this->config->get('cmsopencart_order_cancel_status_id'); 
		} 
		
		$this->load->model('localisation/order_status');
		
		$data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();
		
		if (isset($this->request->post['cmsopencart_geo_zone_id'])) {
			$data['cmsopencart_geo_zone_id'] = $this->request->post['cmsopencart_geo_zone_id'];
		} else {
			$data['cmsopencart_geo_zone_id'] = $this->config->get('cmsopencart_geo_zone_id'); 
		} 
		
		$this->load->model('localisation/geo_zone');
										
		$data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();
		
		if (isset($this->request->post['cmsopencart_status'])) {
			$data['cmsopencart_status'] = $this->request->post['cmsopencart_status'];
		} else {
			$data['cmsopencart_status'] = $this->config->get('cmsopencart_status');
		}
		
		
        $data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

				
		$this->response->setOutput($this->load->view('extension/payment/cmsopencart.tpl', $data));
	}

	private function validate() {
		$flag=false;
		
		if (!$this->user->hasPermission('modify', 'extension/payment/cmsopencart')) {
			$this->error['error_warning'] = $this->language->get('error_permission');
		}
		
		//Cmsopencart both parameters mandatory
		if($this->request->post['cmsopencart_cms_merchant'] || $this->request->post['cmsopencart_cms_workingkey']) {
			if (!$this->request->post['cmsopencart_cms_merchant']) {
				$this->error['error_merchant'] = $this->language->get('error_merchant');
			}
			
			if (!$this->request->post['cmsopencart_cms_workingkey']) {
				$this->error['error_salt'] = $this->language->get('error_workingkey');
			}
		}
		if($this->request->post['cmsopencart_cms_merchant'] && $this->request->post['cmsopencart_cms_workingkey']) {
			$flag=true;	
		}
		
		
		if (!$this->request->post['cmsopencart_module']) {
			$this->error['error_module'] = $this->language->get('error_module');
		}
		
		if (!$this->request->post['cmsopencart_cms_testurl']) {
			$this->error['error_module'] = $this->language->get('error_module');
		}
		
		
		if(!$flag && $this->request->post['cmsopencart_status'] == '1')
		{
			$this->error['error_status'] = $this->language->get('error_status');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>