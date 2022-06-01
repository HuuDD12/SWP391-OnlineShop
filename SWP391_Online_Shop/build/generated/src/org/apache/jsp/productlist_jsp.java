package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class productlist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("Template: Metronic Frontend Freebie - Responsive HTML Template Based On Twitter Bootstrap 3.3.4\r\n");
      out.write("Version: 1.0.0\r\n");
      out.write("Author: KeenThemes\r\n");
      out.write("Website: http://www.keenthemes.com/\r\n");
      out.write("Contact: support@keenthemes.com\r\n");
      out.write("Follow: www.twitter.com/keenthemes\r\n");
      out.write("Like: www.facebook.com/keenthemes\r\n");
      out.write("Purchase Premium Metronic Admin Theme: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes\r\n");
      out.write("-->\r\n");
      out.write("<!--[if IE 8]> <html lang=\"en\" class=\"ie8 no-js\"> <![endif]-->\r\n");
      out.write("<!--[if IE 9]> <html lang=\"en\" class=\"ie9 no-js\"> <![endif]-->\r\n");
      out.write("<!--[if !IE]><!-->\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <!--<![endif]-->\r\n");
      out.write("\r\n");
      out.write("    <!-- Head BEGIN -->\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <title>Men category | Metronic Shop UI</title>\r\n");
      out.write("\r\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n");
      out.write("\r\n");
      out.write("        <meta content=\"Metronic Shop UI description\" name=\"description\">\r\n");
      out.write("        <meta content=\"Metronic Shop UI keywords\" name=\"keywords\">\r\n");
      out.write("        <meta content=\"keenthemes\" name=\"author\">\r\n");
      out.write("\r\n");
      out.write("        <meta property=\"og:site_name\" content=\"-CUSTOMER VALUE-\">\r\n");
      out.write("        <meta property=\"og:title\" content=\"-CUSTOMER VALUE-\">\r\n");
      out.write("        <meta property=\"og:description\" content=\"-CUSTOMER VALUE-\">\r\n");
      out.write("        <meta property=\"og:type\" content=\"website\">\r\n");
      out.write("        <meta property=\"og:image\" content=\"-CUSTOMER VALUE-\"><!-- link to image for socio -->\r\n");
      out.write("        <meta property=\"og:url\" content=\"-CUSTOMER VALUE-\">\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"favicon.ico\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Fonts START -->\r\n");
      out.write("        <link href=\"http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all\" rel=\"stylesheet\" type=\"text/css\"> \r\n");
      out.write("        <!-- Fonts END -->\r\n");
      out.write("\r\n");
      out.write("        <!-- Global styles START -->          \r\n");
      out.write("        <link href=\"assets/plugins/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"assets/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <!-- Global styles END --> \r\n");
      out.write("\r\n");
      out.write("        <!-- Page level plugin styles START -->\r\n");
      out.write("        <link href=\"assets/plugins/fancybox/source/jquery.fancybox.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"assets/plugins/owl.carousel/assets/owl.carousel.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"assets/plugins/uniform/css/uniform.default.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css\" rel=\"stylesheet\" type=\"text/css\"><!-- for slider-range -->\r\n");
      out.write("        <link href=\"assets/plugins/rateit/src/rateit.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <!-- Page level plugin styles END -->\r\n");
      out.write("\r\n");
      out.write("        <!-- Theme styles START -->\r\n");
      out.write("        <link href=\"assets/pages/css/components.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"assets/corporate/css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"assets/pages/css/style-shop.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"assets/corporate/css/style-responsive.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"assets/corporate/css/themes/red.css\" rel=\"stylesheet\" id=\"style-color\">\r\n");
      out.write("        <link href=\"assets/corporate/css/custom.css\" rel=\"stylesheet\">\r\n");
      out.write("        <!-- Theme styles END -->\r\n");
      out.write("    </head>\r\n");
      out.write("    <!-- Head END -->\r\n");
      out.write("\r\n");
      out.write("    <!-- Body BEGIN -->\r\n");
      out.write("    <body class=\"ecommerce\">\r\n");
      out.write("        <!-- BEGIN STYLE CUSTOMIZER -->\r\n");
      out.write("        <div class=\"color-panel hidden-sm\">\r\n");
      out.write("            <div class=\"color-mode-icons icon-color\"></div>\r\n");
      out.write("            <div class=\"color-mode-icons icon-color-close\"></div>\r\n");
      out.write("            <div class=\"color-mode\">\r\n");
      out.write("                <p>THEME COLOR</p>\r\n");
      out.write("                <ul class=\"inline\">\r\n");
      out.write("                    <li class=\"color-red current color-default\" data-style=\"red\"></li>\r\n");
      out.write("                    <li class=\"color-blue\" data-style=\"blue\"></li>\r\n");
      out.write("                    <li class=\"color-green\" data-style=\"green\"></li>\r\n");
      out.write("                    <li class=\"color-orange\" data-style=\"orange\"></li>\r\n");
      out.write("                    <li class=\"color-gray\" data-style=\"gray\"></li>\r\n");
      out.write("                    <li class=\"color-turquoise\" data-style=\"turquoise\"></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- END BEGIN STYLE CUSTOMIZER --> \r\n");
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <div class=\"title-wrapper\">\r\n");
      out.write("                <div class=\"container\"><div class=\"container-inner\">\r\n");
      out.write("                        <h1><span>MEN</span> CATEGORY</h1>\r\n");
      out.write("                        <em>Over 4000 Items are available here</em>\r\n");
      out.write("                    </div></div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"main\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <ul class=\"breadcrumb\">\r\n");
      out.write("                        <li><a href=\"index.html\">Home</a></li>\r\n");
      out.write("                        <li><a href=\"\">Store</a></li>\r\n");
      out.write("                        <li class=\"active\">Men category</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <!-- BEGIN SIDEBAR & CONTENT -->\r\n");
      out.write("                    <div class=\"row margin-bottom-40\">\r\n");
      out.write("                        <!-- BEGIN SIDEBAR -->\r\n");
      out.write("                        <div class=\"sidebar col-md-3 col-sm-5\">\r\n");
      out.write("                            <ul class=\"list-group margin-bottom-25 sidebar-menu\">\r\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"sidebar-filter margin-bottom-25\">\r\n");
      out.write("                            <h2>Filter</h2>\r\n");
      out.write("                            <h3>Availability</h3>\r\n");
      out.write("                            <div class=\"checkbox-list\">\r\n");
      out.write("                                <label><input type=\"checkbox\"> Not Available (3)</label>\r\n");
      out.write("                                <label><input type=\"checkbox\"> In Stock (26)</label>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <h3>Price</h3>\r\n");
      out.write("                            <p>\r\n");
      out.write("                                <label for=\"amount\">Range:</label>\r\n");
      out.write("                                <input type=\"text\" id=\"amount\" style=\"border:0; color:#f6931f; font-weight:bold;\">\r\n");
      out.write("                            </p>\r\n");
      out.write("                            <div id=\"slider-range\"> </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"sidebar-products clearfix\">\r\n");
      out.write("                            <h2>Bestsellers</h2>\r\n");
      out.write("                            <div class=\"item\">\r\n");
      out.write("                                <a href=\"shop-item.html\"><img src=\"assets/pages/img/products/k1.jpg\" alt=\"Some Shoes in Animal with Cut Out\"></a>\r\n");
      out.write("                                <h3><a href=\"shop-item.html\">Some Shoes in Animal with Cut Out</a></h3>\r\n");
      out.write("                                <div class=\"price\">$31.00</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"item\">\r\n");
      out.write("                                <a href=\"shop-item.html\"><img src=\"assets/pages/img/products/k4.jpg\" alt=\"Some Shoes in Animal with Cut Out\"></a>\r\n");
      out.write("                                <h3><a href=\"shop-item.html\">Some Shoes in Animal with Cut Out</a></h3>\r\n");
      out.write("                                <div class=\"price\">$23.00</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"item\">\r\n");
      out.write("                                <a href=\"shop-item.html\"><img src=\"assets/pages/img/products/k3.jpg\" alt=\"Some Shoes in Animal with Cut Out\"></a>\r\n");
      out.write("                                <h3><a href=\"shop-item.html\">Some Shoes in Animal with Cut Out</a></h3>\r\n");
      out.write("                                <div class=\"price\">$86.00</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- END SIDEBAR -->\r\n");
      out.write("                    <!-- BEGIN CONTENT -->\r\n");
      out.write("                    <div class=\"col-md-9 col-sm-7\">\r\n");
      out.write("                        <div class=\"row list-view-sorting clearfix\">\r\n");
      out.write("                            <div class=\"col-md-2 col-sm-2 list-view\">\r\n");
      out.write("                                <a href=\"javascript:;\"><i class=\"fa fa-th-large\"></i></a>\r\n");
      out.write("                                <a href=\"javascript:;\"><i class=\"fa fa-th-list\"></i></a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-10 col-sm-10\">\r\n");
      out.write("                                <div class=\"pull-right\">\r\n");
      out.write("                                    <label class=\"control-label\">Show:</label>\r\n");
      out.write("                                    <select class=\"form-control input-sm\">\r\n");
      out.write("                                        <option value=\"#?limit=24\" selected=\"selected\">24</option>\r\n");
      out.write("                                        <option value=\"#?limit=25\">25</option>\r\n");
      out.write("                                        <option value=\"#?limit=50\">50</option>\r\n");
      out.write("                                        <option value=\"#?limit=75\">75</option>\r\n");
      out.write("                                        <option value=\"#?limit=100\">100</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"pull-right\">\r\n");
      out.write("\r\n");
      out.write("                                    <label class=\"control-label\">Sort&nbsp;By:</label>\r\n");
      out.write("                                    <form action=\"sort\">\r\n");
      out.write("                                        <select name=\"type\" onchange=\"this.form.submit()\" class=\"form-control input-sm\">\r\n");
      out.write("                                            <option ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${type==0?\"selected\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" value=\"0\" selected=\"selected\">Default</option>\r\n");
      out.write("                                            <option ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${type==1?\"selected\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" value=\"1\">Name (A - Z)</option>\r\n");
      out.write("                                            <option ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${type==2?\"selected\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" value=\"2\">Name (Z - A)</option>\r\n");
      out.write("                                            <option ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${type==3?\"selected\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" value=\"3\">Price (Low &gt; High)</option>\r\n");
      out.write("                                            <option ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${type==4?\"selected\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" value=\"4\">Price (High &gt; Low)</option>\r\n");
      out.write("                                        </select>  \r\n");
      out.write("                                    </form>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- BEGIN PRODUCT LIST -->\r\n");
      out.write("                        <div class=\"row product-list\">\r\n");
      out.write("                            <!-- PRODUCT ITEM START -->\r\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            <!-- PRODUCT ITEM END -->\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- END PRODUCT LIST -->\r\n");
      out.write("                        <!-- BEGIN PAGINATOR -->\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-md-4 col-sm-4 items-info\">Items 1 to 9 of 10 total</div>\r\n");
      out.write("                            <div class=\"col-md-8 col-sm-8\">\r\n");
      out.write("                                <ul class=\"pagination pull-right\">\r\n");
      out.write("                                    <li><a href=\"javascript:;\">&laquo;</a></li>\r\n");
      out.write("                                    <li><a href=\"javascript:;\">1</a></li>\r\n");
      out.write("                                    <li><span>2</span></li>\r\n");
      out.write("                                    <li><a href=\"javascript:;\">3</a></li>\r\n");
      out.write("                                    <li><a href=\"javascript:;\">4</a></li>\r\n");
      out.write("                                    <li><a href=\"javascript:;\">5</a></li>\r\n");
      out.write("                                    <li><a href=\"javascript:;\">&raquo;</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- END PAGINATOR -->\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- END CONTENT -->\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- END SIDEBAR & CONTENT -->\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- BEGIN BRANDS -->\r\n");
      out.write("        <div class=\"brands\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"owl-carousel owl-carousel6-brands\">\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/canon.jpg\" alt=\"canon\" title=\"canon\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/esprit.jpg\" alt=\"esprit\" title=\"esprit\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/gap.jpg\" alt=\"gap\" title=\"gap\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/next.jpg\" alt=\"next\" title=\"next\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/puma.jpg\" alt=\"puma\" title=\"puma\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/zara.jpg\" alt=\"zara\" title=\"zara\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/canon.jpg\" alt=\"canon\" title=\"canon\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/esprit.jpg\" alt=\"esprit\" title=\"esprit\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/gap.jpg\" alt=\"gap\" title=\"gap\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/next.jpg\" alt=\"next\" title=\"next\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/puma.jpg\" alt=\"puma\" title=\"puma\"></a>\r\n");
      out.write("                    <a href=\"shop-product-list.html\"><img src=\"assets/pages/img/brands/zara.jpg\" alt=\"zara\" title=\"zara\"></a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- END BRANDS -->\r\n");
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- BEGIN fast view of a product -->\r\n");
      out.write("        <div id=\"product-pop-up\" style=\"display: none; width: 700px;\">\r\n");
      out.write("            <div class=\"product-page product-pop-up\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-6 col-sm-6 col-xs-3\">\r\n");
      out.write("                        <div class=\"product-main-image\">\r\n");
      out.write("                            <img src=\"assets/pages/img/products/model7.jpg\" alt=\"Cool green dress with red bell\" class=\"img-responsive\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"product-other-images\">\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"active\"><img alt=\"Berry Lace Dress\" src=\"assets/pages/img/products/model3.jpg\"></a>\r\n");
      out.write("                            <a href=\"javascript:;\"><img alt=\"Berry Lace Dress\" src=\"assets/pages/img/products/model4.jpg\"></a>\r\n");
      out.write("                            <a href=\"javascript:;\"><img alt=\"Berry Lace Dress\" src=\"assets/pages/img/products/model5.jpg\"></a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-6 col-sm-6 col-xs-9\">\r\n");
      out.write("                        <h1>Cool green dress with red bell</h1>\r\n");
      out.write("                        <div class=\"price-availability-block clearfix\">\r\n");
      out.write("                            <div class=\"price\">\r\n");
      out.write("                                <strong><span>$</span>47.00</strong>\r\n");
      out.write("                                <em>$<span>62.00</span></em>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"availability\">\r\n");
      out.write("                                Availability: <strong>In Stock</strong>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"description\">\r\n");
      out.write("                            <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat \r\n");
      out.write("                                Nostrud duis molestie at dolore.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"product-page-options\">\r\n");
      out.write("                            <div class=\"pull-left\">\r\n");
      out.write("                                <label class=\"control-label\">Size:</label>\r\n");
      out.write("                                <select class=\"form-control input-sm\">\r\n");
      out.write("                                    <option>L</option>\r\n");
      out.write("                                    <option>M</option>\r\n");
      out.write("                                    <option>XL</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"pull-left\">\r\n");
      out.write("                                <label class=\"control-label\">Color:</label>\r\n");
      out.write("                                <select class=\"form-control input-sm\">\r\n");
      out.write("                                    <option>Red</option>\r\n");
      out.write("                                    <option>Blue</option>\r\n");
      out.write("                                    <option>Black</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"product-page-cart\">\r\n");
      out.write("                            <div class=\"product-quantity\">\r\n");
      out.write("                                <input id=\"product-quantity\" type=\"text\" value=\"1\" readonly name=\"product-quantity\" class=\"form-control input-sm\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <button class=\"btn btn-primary\" type=\"submit\">Add to cart</button>\r\n");
      out.write("                            <a href=\"shop-item.html\" class=\"btn btn-default\">More details</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"sticker sticker-sale\"></div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- END fast view of a product -->\r\n");
      out.write("\r\n");
      out.write("        <!-- Load javascripts at bottom, this will reduce page load time -->\r\n");
      out.write("        <!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->\r\n");
      out.write("        <!--[if lt IE 9]>\r\n");
      out.write("        <script src=\"assets/plugins/respond.min.js\"></script>  \r\n");
      out.write("        <![endif]-->  \r\n");
      out.write("        <script src=\"assets/plugins/jquery.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"assets/plugins/jquery-migrate.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"assets/plugins/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>      \r\n");
      out.write("        <script src=\"assets/corporate/scripts/back-to-top.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <!-- END CORE PLUGINS -->\r\n");
      out.write("\r\n");
      out.write("        <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->\r\n");
      out.write("        <script src=\"assets/plugins/fancybox/source/jquery.fancybox.pack.js\" type=\"text/javascript\"></script><!-- pop up -->\r\n");
      out.write("        <script src=\"assets/plugins/owl.carousel/owl.carousel.min.js\" type=\"text/javascript\"></script><!-- slider for products -->\r\n");
      out.write("        <script src='assets/plugins/zoom/jquery.zoom.min.js' type=\"text/javascript\"></script><!-- product zoom -->\r\n");
      out.write("        <script src=\"assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js\" type=\"text/javascript\"></script><!-- Quantity -->\r\n");
      out.write("        <script src=\"assets/plugins/uniform/jquery.uniform.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"assets/plugins/rateit/src/jquery.rateit.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"http://code.jquery.com/ui/1.10.3/jquery-ui.js\" type=\"text/javascript\"></script><!-- for slider-range -->\r\n");
      out.write("\r\n");
      out.write("        <script src=\"assets/corporate/scripts/layout.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("                                            jQuery(document).ready(function () {\r\n");
      out.write("                                                Layout.init();\r\n");
      out.write("                                                Layout.initOWL();\r\n");
      out.write("                                                Layout.initTwitter();\r\n");
      out.write("                                                Layout.initImageZoom();\r\n");
      out.write("                                                Layout.initTouchspin();\r\n");
      out.write("                                                Layout.initUniform();\r\n");
      out.write("                                                Layout.initSliderRange();\r\n");
      out.write("                                            });\r\n");
      out.write("        </script>\r\n");
      out.write("        <!-- END PAGE LEVEL JAVASCRIPTS -->\r\n");
      out.write("    </body>\r\n");
      out.write("    <!-- END BODY -->\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listC}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("c");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                <li class=\"list-group-item clearfix dropdown active\">\r\n");
          out.write("                                    <a href=\"javascript:void(0);\" class=\"collapsed\">\r\n");
          out.write("                                        <i class=\"fa fa-angle-right\"></i>\r\n");
          out.write("                                        ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.cate_name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                    </a>\r\n");
          out.write("                                    <ul class=\"dropdown-menu\" style=\"display:block;\">\r\n");
          out.write("                                        ");
          if (_jspx_meth_c_forEach_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                    </ul>\r\n");
          out.write("                                </li>\r\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listS}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("s");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                            ");
          if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\r\n");
          out.write("                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.cate_id == s.cate_id}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                <li class=\"list-group-item dropdown clearfix active\">\r\n");
        out.write("                                                    <a href=\"productlist\" style=\"color: #000\" class=\"collapsed\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${s.subcate_name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write(" </a>                                \r\n");
        out.write("                                                </li>\r\n");
        out.write("                                            ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("p");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                <div class=\"col-md-4 col-sm-6 col-xs-12\">\r\n");
          out.write("                                    <div class=\"product-item\">\r\n");
          out.write("                                        <div class=\"pi-img-wrapper\">\r\n");
          out.write("                                            <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.url}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"img-responsive\" alt=\"Berry Lace Dress\">\r\n");
          out.write("                                            <div>\r\n");
          out.write("                                            \r\n");
          out.write("                                                <a href=\"#product-pop-up\" class=\"btn btn-default fancybox-fast-view\">View</a>\r\n");
          out.write("                                            </div>\r\n");
          out.write("                                        </div>\r\n");
          out.write("                                        <h3><a href=\"shop-item.html\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.productName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></h3>\r\n");
          out.write("                                        <div class=\"pi-price\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.originalPrice}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</div>\r\n");
          out.write("                                        <a href=\"add-to-cart?pid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.productID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"btn btn-default add2cart\">Add to cart</a>\r\n");
          out.write("                                    </div>\r\n");
          out.write("                                </div>\r\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }
}
