<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->



<!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/charts/apexcharts.min.js"></script>
	<%-- <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/extensions/toastr.min.js"></script> --%>
	<script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/calendar/fullcalendar.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/extensions/moment.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
	<!--     <script src="/lms/resources/vuexy/app-assets/vendors/js/charts/apexcharts.min.js"></script> -->
	<!--     <script src="/lms/resources/vuexy/app-assets/js/scripts/cards/card-advance.js"></script> -->
<!-- END: Page Vendor JS-->



<!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->



<!-- BEGIN: Page JS-->
	<%-- <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/scripts/pages/dashboard-ecommerce.js"></script> --%>
	<script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/scripts/pages/app-user-edit.js"></script>
<!-- END: Page JS-->



<!-- 스와이퍼 관련 -->
	<script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/extensions/swiper.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/scripts/extensions/ext-component-swiper.js"></script>


	<script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>

	<script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/scripts/forms/pickers/form-pickers.js"></script>




<!-- include summernote css -->
	<script src="<%=request.getContextPath() %>/resources/summernote/summernote.min.js"></script>

	<script src="<%=request.getContextPath() %>/resources/js/common.js" ></script>
    <script src="<%=request.getContextPath() %>/resources/js/index.js"></script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.6/handlebars.min.js"></script>


    <script>
        $(window).on('load', function() {
            if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
        })
    </script>


	<script>

	function resizeHeight(id){
   			 var the_height = document.getElementById(id).contentWindow.document.body.scrollHeight;
   			 document.getElementById(id).height = the_height + 30;
		}
	function init_manage(){
			goPage('${menu.menuUrl}','${menu.menuCode}');
			subMenu_manage('${menu.menuCode}'.substring(0,3)+"0000");
		}
	</script>

