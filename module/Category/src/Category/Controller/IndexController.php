<?php


namespace Category\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class IndexController extends AbstractActionController
{
    public function indexAction()
    {
    	

    	$postService = $this->getServiceLocator()->get("Category\Model\PostTable");
		$paginator = $postService->fetchAll(true);
		$paginator->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
		$paginator->setItemCountPerPage(2);
		return array('paginator'=>$paginator);
    }
    public function manageAction()
    {
    $postService = $this->getServiceLocator()->get("Category\Model\PostTable");
    $paginator = $postService->fetchAll(true);
    $paginator->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
    $paginator->setItemCountPerPage(2);
    return array('paginator'=>$paginator);
    }
    
}
