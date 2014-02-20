<?php
// Setting the page title.
if (isset($pagetitle))
  $main_page_title = $pagetitle . ' | Webpit';
else
  $main_page_title = 'Welcome to Webpit';
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php print $main_page_title; ?></title>
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Including the styles -->
    <link href="<?php print base_url(); ?>css/bootstrap.css" rel="stylesheet">
    <link href="<?php print base_url(); ?>css/bootstrap-responsive.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    
    <!-- Including the scripts -->
    <script type="text/javascript">
      var base_url = '<?php print base_url(); ?>index.php';
    </script>
    
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.2/angular.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="<?php print base_url(); ?>js/angular-bootstrap.js"></script>
    
    <?php if (isset($scripts)): ?>
      <?php foreach ($scripts as $key=>$value): ?>
        <script type="text/javascript" src="<?php print base_url(); ?>js/<?php print $value; ?>/<?php print $key; ?>.js"></script>
      <?php endforeach; ?>
    <?php endif; ?>
    
  </head>
  
  <body>
    <!-- Navigation view called -->
    <?php $this->load->view('includes/nav'); ?>
    
    <!-- Main body start -->
    <div class="container-fluid">
      <div class="row-fluid">
        <!-- Content container starts -->
        <div class="span9">
          <?php if (isset($viewname) && isset($viewdata)): ?>
            <div id="wrapper-<?php print $viewname ?>" class="wrapper wrapper-<?php print $viewname ?>"><?php $this->load->view($viewname, $viewdata); ?></div>
          <?php else: ?>
            <div id="wrapper-<?php print $viewname ?>" class="wrapper wrapper-<?php print $viewname ?>"><?php $this->load->view($viewname); ?></div>
          <?php endif; ?>
        </div>
        <!-- Content container ends -->
        
        <!-- Sidebar starts -->
        <div class="span3">
          <?php if(isset($sidebar)): ?>
            <?php $this->load->view('includes/sidebar'); ?>
          <?php endif; ?>
        </div>
        <!-- Sidebar ends -->
      </div>
    </div>
    <!-- Main body ends -->
  </body>
</html>