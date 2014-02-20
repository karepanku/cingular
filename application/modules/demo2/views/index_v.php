<?php
$this->load->helper('url');
$this->load->helper('html');
?>
<div id="section-container" ng-app="demo2">
   <p>This is some text</p>
   <div ng-controller="MyCtrl1">
    <p>Base path: {{basepth}}</p>
    <ul>
    	<li><?php print anchor('demo2#/view1','West Bengal'); ?></li>
    	<li><?php print anchor('demo2#/view2','Maharashtra'); ?></li>
    </ul>
    <div ng-view></div>
   </div>
</div>