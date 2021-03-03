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
            <div class="col-md-9 col-sm-9 col-xs-9 bio-left">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-bars"></i> Yard Fitness <small>Bio Entry Application</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">


                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                      <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Logins</a>
                        </li>
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Members</a>
                        </li>
                      </ul>
                      <div id="myTabContent" class="tab-content">
                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                        </div>
                      </div>
                    </div>

                  </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-3 col-xs-3 bio-right">
              <video id="preview" style="width: 100%;"></video>
              <div class="status"><h1>Scan QR Code!</h1></div>
              <div class="member_info"><h3></h3></div>
              <div class="logo">
                <img src="./view/images/logo.jpg"/>
              </div>
            </div>
          </div>
          <br />
        </div>
        <!-- /page content -->

<!-- Modal -->
<div id="qrCodeModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">QR Code Generator</h4>
      </div>
      <div class="modal-body">
        <div id="qrinfo"></div>
        <div id="qrcode"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
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
	  <script src="./view/build/js/datatable.js"></script>

	{* <script src="./view/src/js/webcodecamjquery.js"></script>
	<script src="./view/src/js/qrcodelib.js"></script>
	<script src="./view/src/js/DecoderWorker.js"></script> *}
  	<script src="./view/src/js/qrcode.js"></script> 
	<script src="./view/src/js/instascan.min.js"></script> 
  <script src="./view/src/js/scripts.js"></script> 

  </body>
</html>