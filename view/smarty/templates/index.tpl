{config_load file='site.conf'}
<!DOCTYPE html>
<html lang="en">
	<head>
	{include file="head_meta_properties.tpl"}
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
    <script src="./view/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="./view/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="./view/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="./view/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="./view/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="./view/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="./view/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="./view/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="./view/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="./view/vendors/Flot/jquery.flot.js"></script>
    <script src="./view/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="./view/vendors/Flot/jquery.flot.time.js"></script>
    <script src="./view/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="./view/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="./view/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="./view/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="./view/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="./view/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="./view/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="./view/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="./view/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="./view/vendors/moment/min/moment.min.js"></script>
    <script src="./view/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="./view/build/js/custom.min.js"></script>
	

	{* <script src="./view/src/js/webcodecamjquery.js"></script>
	<script src="./view/src/js/qrcodelib.js"></script>
	<script src="./view/src/js/DecoderWorker.js"></script> *}
	<script src="./view/src/js/instascan.min.js"></script> 
  <script src="./view/src/js/scripts.js"></script> 

  </body>
</html>