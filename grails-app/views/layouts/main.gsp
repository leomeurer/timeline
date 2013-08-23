<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Widgets - Ace Admin</title>

    <meta name="description" content="Draggabble Widget Boxes &amp; Containers"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!--basic styles-->

    <link href="${resource(dir: 'assets/css', file: 'bootstrap.min.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'assets/css', file: 'bootstrap-responsive.min.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'assets/css', file: 'font-awesome.min.css')}" rel="stylesheet"/>

    <!--[if IE 7]>
		   <link  href="${resource(dir: 'assets/css', file: 'font-awesome-ie7.min.css')}" rel="stylesheet"/>
		<![endif]-->

    <!--page specific plugin styles-->

    <!--fonts-->

    <link rel="stylesheet" href="${resource(dir: 'assets/css', file: 'ace-fonts.css')}"/>

    <!--ace styles-->

    <link  href="${resource(dir: 'assets/css', file: 'ace.min.css')}" rel="stylesheet"/>
    <link  href="${resource(dir: 'assets/css', file: 'ace-responsive.min.css')}" rel="stylesheet"/>
    <link  href="${resource(dir: 'assets/css', file: 'ace-skins.min.css')}" rel="stylesheet"/>

    <!--[if lte IE 8]>
		  <link rel="stylesheet" href="${resource(dir: 'assets/css', file: '')}"ace-ie.min.css" />
		<![endif]-->

    <!--inline styles related to this page-->

    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>

<g:render template="/layouts/navbar"/>

<div class="main-container container-fluid">
    <a class="menu-toggler" id="menu-toggler" href="#">
        <span class="menu-text"></span>
    </a>

    <g:render template="/layouts/sidebar"/>

    <div class="main-content">

        <g:render template="/layouts/breadcrumbs"/>

        <div class="page-content">
            <div class="page-header position-relative">
                <h1>
                    Widgets
                    <small>
                        <i class="icon-double-angle-right"></i>
                        Draggabble Widget Boxes &amp; Containers
                    </small>
                </h1>
            </div><!--/.page-header-->

        <g:layoutBody/>

        </div><!--/.page-content-->

        <div class="ace-settings-container" id="ace-settings-container">
            <div class="btn btn-app btn-mini btn-warning ace-settings-btn" id="ace-settings-btn">
                <i class="icon-cog bigger-150"></i>
            </div>

            <div class="ace-settings-box" id="ace-settings-box">
                <div>
                    <div class="pull-left">
                        <select id="skin-colorpicker" class="hide">
                            <option data-class="default" value="#438EB9">#438EB9</option>
                            <option data-class="skin-1" value="#222A2D">#222A2D</option>
                            <option data-class="skin-2" value="#C6487E">#C6487E</option>
                            <option data-class="skin-3" value="#D0D0D0">#D0D0D0</option>
                        </select>
                    </div>
                    <span>&nbsp; Choose Skin</span>
                </div>

                <div>
                    <input type="checkbox" class="ace-checkbox-2" id="ace-settings-header"/>
                    <label class="lbl" for="ace-settings-header">Fixed Header</label>
                </div>

                <div>
                    <input type="checkbox" class="ace-checkbox-2" id="ace-settings-sidebar"/>
                    <label class="lbl" for="ace-settings-sidebar">Fixed Sidebar</label>
                </div>

                <div>
                    <input type="checkbox" class="ace-checkbox-2" id="ace-settings-breadcrumbs"/>
                    <label class="lbl" for="ace-settings-breadcrumbs">Fixed Breadcrumbs</label>
                </div>

                <div>
                    <input type="checkbox" class="ace-checkbox-2" id="ace-settings-rtl"/>
                    <label class="lbl" for="ace-settings-rtl">Right To Left (rtl)</label>
                </div>
            </div>
        </div><!--/#ace-settings-container-->
    </div><!--/.main-content-->
</div><!--/.main-container-->

<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-small btn-inverse">
    <i class="icon-double-angle-up icon-only bigger-110"></i>
</a>

<!--basic scripts-->

<!--[if !IE]>-->

<script type="text/javascript">
    window.jQuery || document.write("<script src='${resource(dir: 'assets/js', file: 'jquery-2.0.3.min.js')}'>" + "<" + "/script>");
</script>

<!--<![endif]-->

<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${resource(dir: 'assets/js', file: 'jquery-1.10.2.min.js')}'>"+"<"+"/script>");
</script>
<![endif]-->

<script type="text/javascript">
    if ("ontouchend" in document) document.write("<script src='${resource(dir: 'assets/js', file: 'jquery.mobile.custom.min.js')}'>" + "<" + "/script>");
</script>
<script src="${resource(dir: 'assets/js', file: 'bootstrap.min.js')}"></script>

<!--page specific plugin scripts-->

<script src="${resource(dir: 'assets/js', file: 'jquery-ui-1.10.3.custom.min.js')}"></script>
<script src="${resource(dir: 'assets/js', file: 'jquery.ui.touch-punch.min.js')}"></script>
<script src="${resource(dir: 'assets/js', file: 'jquery.slimscroll.min.js')}"></script>

<!--ace scripts-->

<script src="${resource(dir: 'assets/js', file: 'ace-elements.min.js')}"></script>
<script src="${resource(dir: 'assets/js', file: 'ace.min.js')}"></script>

<!--inline scripts related to this page-->

<script type="text/javascript">
    $(function () {

        $('#simple-colorpicker-1').ace_colorpicker({pull_right: true}).on('change', function () {
            var color_class = $(this).find('option:selected').data('class');
            var new_class = 'widget-header';
            if (color_class != 'default')  new_class += ' header-color-' + color_class;
            $(this).closest('.widget-header').attr('class', new_class);
        });


        // scrollables
        $('.slim-scroll').each(function () {
            var $this = $(this);
            $this.slimScroll({
                height: $this.data('height') || 100,
                railVisible: true
            });
        });


        // Portlets (boxes)
        $('.widget-container-span').sortable({
            connectWith: '.widget-container-span',
            items: '> .widget-box',
            opacity: 0.8,
            revert: true,
            forceHelperSize: true,
            placeholder: 'widget-placeholder',
            forcePlaceholderSize: true,
            tolerance: 'pointer'
        });

    });
</script>
</body>
</html>
