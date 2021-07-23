<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

      <!-- BEGIN: Vendor JS-->
    <script src="../../../app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/extensions/swiper.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/extensions/toastr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/scripts/pages/app-ecommerce-details.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/scripts/forms/form-number-input.js"></script>
    <!-- END: Page JS-->

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
</body>
<!-- END: Body-->