<?php
namespace Vokuro\Controllers;


/**
 * Display the "About" page.
 */
class AboutController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function indexAction()
    {
      
      if ($this->session->has('auth-identity')) {
          // $this->view->setTemplateBefore('private');
            $this->view->setTemplateBefore('cobaprivate');
      }else {
        // $this->view->setTemplateBefore('public');
        $this->view->setTemplateBefore('coba');
      }


      // $file = new \Phalcon\Http\Request\File($FILES["photo1"]["file1"]);
      #check if there is any file
      if($this->request->hasFiles() == true)
      {
        if(!is_dir("ImageUpload/".date("Y-m-d")))
        {
         mkdir("ImageUpload/".date("Y-m-d"));
        }

        $dir = "ImageUpload/".date("Y-m-d")."/";
        if($_FILES['photo1']['name'])
        {
        $file1 = $dir . ($_FILES['photo1']['name']);
        move_uploaded_file($_FILES['photo1']['tmp_name'], $file1);
        $this->flash->success($file1);
        }
        if($_FILES['photo2']['name'])
        {
        $file2 = $dir . ($_FILES['photo2']['name']);
        move_uploaded_file($_FILES['photo2']['tmp_name'], $file2);
        $this->flash->success($file2);
        }
        if($_FILES['photo3']['name']){
        $file3 = $dir . ($_FILES['photo3']['name']);
        move_uploaded_file($_FILES['photo3']['tmp_name'], $file3);
        $this->flash->success($file3);
        }
        if($_FILES['photo4']['name']){
        $file4 = $dir . ($_FILES['photo4']['name']);
        move_uploaded_file($_FILES['photo4']['tmp_name'], $file4);
        }
        if($_FILES['photo5']['name']){
        $file5 = $dir . ($_FILES['photo5']['name']);
        move_uploaded_file($_FILES['photo5']['tmp_name'], $file5);
        }
        if($_FILES['photo6']['name']){
        $file6 = $dir . ($_FILES['photo6']['name']);
        move_uploaded_file($_FILES['photo6']['tmp_name'], $file6);
        }
        if($_FILES['photo7']['name']){
        $file7 = $dir . ($_FILES['photo7']['name']);
        move_uploaded_file($_FILES['photo7']['tmp_name'], $file7);
        }
        if($_FILES['photo8']['name']){
        $file8 = $dir . ($_FILES['photo8']['name']);
        move_uploaded_file($_FILES['photo8']['tmp_name'], $file8);
        }
        if($_FILES['photo9']['name']){
        $file9 = $dir . ($_FILES['photo9']['name']);
        move_uploaded_file($_FILES['photo9']['tmp_name'], $file9);
        }
        if($_FILES['photo10']['name']){
        $file10 = $dir . ($_FILES['photo10']['name']);
        move_uploaded_file($_FILES['photo10']['tmp_name'], $file10);
        }
        if($_FILES['photo11']['name']){
        $file11 = $dir . ($_FILES['photo11']['name']);
        move_uploaded_file($_FILES['photo11']['tmp_name'], $file11);
        }
        if($_FILES['photo12']['name']){
        $file12 = $dir . ($_FILES['photo12']['name']);
        move_uploaded_file($_FILES['photo12']['tmp_name'], $file12);
        }
        if($_FILES['photo13']['name']){
        $file13 = $dir . ($_FILES['photo13']['name']);
        move_uploaded_file($_FILES['photo13']['tmp_name'], $file13);
        }
        if($_FILES['photo14']['name']){
        $file14 = $dir . ($_FILES['photo14']['name']);
        move_uploaded_file($_FILES['photo14']['tmp_name'], $file14);
        }
        if($_FILES['photo15']['name']){
        $file15 = $dir . ($_FILES['photo15']['name']);
        move_uploaded_file($_FILES['photo15']['tmp_name'], $file15);
        }
        if($_FILES['photo16']['name']){
        $file16 = $dir . ($_FILES['photo16']['name']);
        move_uploaded_file($_FILES['photo16']['tmp_name'], $file16);
        }
        if($_FILES['photo17']['name']){
        $file17 = $dir . ($_FILES['photo17']['name']);
        move_uploaded_file($_FILES['photo17']['tmp_name'], $file17);
        }
        if($_FILES['photo18']['name']){
        $file18 = $dir . ($_FILES['photo18']['name']);
        move_uploaded_file($_FILES['photo18']['tmp_name'], $file18);
        }
        if($_FILES['photo19']['name']){
        $file19 = $dir . ($_FILES['photo19']['name']);
        move_uploaded_file($_FILES['photo19']['tmp_name'], $file19);
        }
        if($_FILES['photo20']['name']){
        $file20 = $dir . ($_FILES['photo20']['name']);
        move_uploaded_file($_FILES['photo20']['tmp_name'], $file20);
        }

      }else{

      }
    }

    public function uploadAction()
    {
      if ($this->session->has('auth-identity')) {
          $this->view->setTemplateBefore('private');
      }else {
        $this->view->setTemplateBefore('public');
      }

    }

}
