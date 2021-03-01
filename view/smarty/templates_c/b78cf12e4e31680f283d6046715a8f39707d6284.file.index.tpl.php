<?php /* Smarty version Smarty-3.1.21-dev, created on 2021-03-01 15:12:01
         compiled from "/Applications/MAMP/htdocs/yard_bio/view/smarty/templates/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11140019603cdc707f8c53-32699955%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b78cf12e4e31680f283d6046715a8f39707d6284' => 
    array (
      0 => '/Applications/MAMP/htdocs/yard_bio/view/smarty/templates/index.tpl',
      1 => 1614611507,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11140019603cdc707f8c53-32699955',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_603cdc70961812_86382162',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603cdc70961812_86382162')) {function content_603cdc70961812_86382162($_smarty_tpl) {?><?php  $_config = new Smarty_Internal_Config('site.conf', $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars(null, 'local'); ?>
<!DOCTYPE html>
<html lang="en">
	<head>
	<?php echo $_smarty_tpl->getSubTemplate ("head_meta_properties.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

	</head>
  <body>
    <div class="container body">
        <div role="main">
          <!-- top tiles -->
          <div class="row tile_count">
            <div class="col-md-4 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Total Members</span>
              <div class="count">0</div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-clock-o"></i> Members for the Day</span>
              <div class="count">0</div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Monthly Count Logins</span>
              <div class="count">0</div>
            </div>
          </div>
          <!-- /top tiles -->

          <div class="row">
            <div class="col-md-8 col-sm-8 col-xs-8 bio-left">
            </div>

            <div class="col-md-4 col-sm-4 col-xs-4 bio-right">
              <video id="preview" style="width: 100%;"></video>
              <div class="status"><h1>Scan QR Code!</h1></div>
              <div class="member_info"><h3></h3></div>
            </div>
          </div>
          <br />
        </div>
        <!-- /page content -->

        <!-- footer content -->
    <!-- jQuery -->
    <?php echo '<script'; ?>
 src="./view/vendors/jquery/dist/jquery.min.js"><?php echo '</script'; ?>
>
    <!-- Bootstrap -->
    <?php echo '<script'; ?>
 src="./view/vendors/bootstrap/dist/js/bootstrap.min.js"><?php echo '</script'; ?>
>
    <!-- FastClick -->
    <?php echo '<script'; ?>
 src="./view/vendors/fastclick/lib/fastclick.js"><?php echo '</script'; ?>
>
    <!-- NProgress -->
    <?php echo '<script'; ?>
 src="./view/vendors/nprogress/nprogress.js"><?php echo '</script'; ?>
>
    <!-- Chart.js -->
    <?php echo '<script'; ?>
 src="./view/vendors/Chart.js/dist/Chart.min.js"><?php echo '</script'; ?>
>
    <!-- gauge.js -->
    <?php echo '<script'; ?>
 src="./view/vendors/gauge.js/dist/gauge.min.js"><?php echo '</script'; ?>
>
    <!-- bootstrap-progressbar -->
    <?php echo '<script'; ?>
 src="./view/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"><?php echo '</script'; ?>
>
    <!-- iCheck -->
    <?php echo '<script'; ?>
 src="./view/vendors/iCheck/icheck.min.js"><?php echo '</script'; ?>
>
    <!-- Skycons -->
    <?php echo '<script'; ?>
 src="./view/vendors/skycons/skycons.js"><?php echo '</script'; ?>
>
    <!-- Flot -->
    <?php echo '<script'; ?>
 src="./view/vendors/Flot/jquery.flot.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="./view/vendors/Flot/jquery.flot.pie.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="./view/vendors/Flot/jquery.flot.time.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="./view/vendors/Flot/jquery.flot.stack.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="./view/vendors/Flot/jquery.flot.resize.js"><?php echo '</script'; ?>
>
    <!-- Flot plugins -->
    <?php echo '<script'; ?>
 src="./view/vendors/flot.orderbars/js/jquery.flot.orderBars.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="./view/vendors/flot-spline/js/jquery.flot.spline.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="./view/vendors/flot.curvedlines/curvedLines.js"><?php echo '</script'; ?>
>
    <!-- DateJS -->
    <?php echo '<script'; ?>
 src="./view/vendors/DateJS/build/date.js"><?php echo '</script'; ?>
>
    <!-- JQVMap -->
    <?php echo '<script'; ?>
 src="./view/vendors/jqvmap/dist/jquery.vmap.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="./view/vendors/jqvmap/dist/maps/jquery.vmap.world.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="./view/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"><?php echo '</script'; ?>
>
    <!-- bootstrap-daterangepicker -->
    <?php echo '<script'; ?>
 src="./view/vendors/moment/min/moment.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="./view/vendors/bootstrap-daterangepicker/daterangepicker.js"><?php echo '</script'; ?>
>

    <!-- Custom Theme Scripts -->
    <?php echo '<script'; ?>
 src="./view/build/js/custom.min.js"><?php echo '</script'; ?>
>
	

	
	<?php echo '<script'; ?>
 src="./view/src/js/instascan.min.js"><?php echo '</script'; ?>
> 
  <?php echo '<script'; ?>
 src="./view/src/js/scripts.js"><?php echo '</script'; ?>
> 

  </body>
</html><?php }} ?>
