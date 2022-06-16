package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cartdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("        <title>Shopping cart | Metronic Shop UI</title>\r\n");
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
      out.write("        <div class=\"main\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <!-- BEGIN SIDEBAR & CONTENT -->\r\n");
      out.write("                <div class=\"row margin-bottom-40\">\r\n");
      out.write("                    <!-- BEGIN CONTENT -->\r\n");
      out.write("                    <div class=\"col-md-12 col-sm-12\">\r\n");
      out.write("                        <h1>Shopping cart</h1>\r\n");
      out.write("                        <div class=\"goods-page\">\r\n");
      out.write("                            <div class=\"goods-data clearfix\">\r\n");
      out.write("                                <div class=\"table-wrapper-responsive\">\r\n");
      out.write("                                    <table summary=\"Shopping cart\">\r\n");
      out.write("                                        <tr>\r\n");
      out.write("                                            <th class=\"goods-page-image\">Name</th>\r\n");
      out.write("                                            <th style=\"padding-left: 50px;\" class=\"goods-page-description\">Image</th>\r\n");
      out.write("                                            <th style=\"padding-left: 70px;\" class=\"goods-page-ref-no\">Price</th>\r\n");
      out.write("                                            <th style=\"padding-left: 50px;\" class=\"goods-page-quantity\">Quantity</th>\r\n");
      out.write("                                            <th style=\"padding-left: 50px;\" class=\"goods-page-total\" colspan=\"2\">Total</th>\r\n");
      out.write("\r\n");
      out.write("                                        </tr>\r\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write(" \r\n");
      out.write("\r\n");
      out.write("                                    </table>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"shopping-total\">\r\n");
      out.write("                                    <ul>        \r\n");
      out.write("                                        <li>\r\n");
      out.write("                                            <em>Shipping cost</em>\r\n");
      out.write("                                            <strong class=\"price\">Free</strong>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"shopping-total-price\">\r\n");
      out.write("                                            <em>Total</em>\r\n");
      out.write("                                            <strong class=\"price\"><span>$</span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${totalMoney}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <button class=\"btn btn-default\" type=\"submit\"><a style=\"color: #FFF\" href=\"productlist\">Continue shopping </a><i class=\"fa fa-shopping-cart\"></i></button>\r\n");
      out.write("                            <button class=\"btn btn-primary\" type=\"submit\"><a style=\"color: #FFF\" href=\"checkout\">Checkout <i class=\"fa fa-check\"></a></i></button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- END CONTENT -->\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- END SIDEBAR & CONTENT -->\r\n");
      out.write("\r\n");
      out.write("                <!-- BEGIN SIMILAR PRODUCTS -->\r\n");
      out.write("                <div class=\"row margin-bottom-40\">\r\n");
      out.write("                    <div class=\"col-md-12 col-sm-12\">\r\n");
      out.write("                        <h2>Most popular products</h2>\r\n");
      out.write("                        <div class=\"owl-carousel owl-carousel4\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <div class=\"product-item\">\r\n");
      out.write("                                    <div class=\"pi-img-wrapper\">\r\n");
      out.write("                                        <img src=\"assets/pages/img/products/k1.jpg\" class=\"img-responsive\" alt=\"Berry Lace Dress\">\r\n");
      out.write("                                        <div>\r\n");
      out.write("                                            <a href=\"assets/pages/img/products/k1.jpg\" class=\"btn btn-default fancybox-button\">Zoom</a>\r\n");
      out.write("                                            <a href=\"#product-pop-up\" class=\"btn btn-default fancybox-fast-view\">View</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <h3><a href=\"shop-item.html\">Berry Lace Dress</a></h3>\r\n");
      out.write("                                    <div class=\"pi-price\">$29.00</div>\r\n");
      out.write("                                    <a href=\"javascript:;\" class=\"btn btn-default add2cart\">Add to cart</a>\r\n");
      out.write("                                    <div class=\"sticker sticker-new\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <div class=\"product-item\">\r\n");
      out.write("                                    <div class=\"pi-img-wrapper\">\r\n");
      out.write("                                        <img src=\"assets/pages/img/products/k2.jpg\" class=\"img-responsive\" alt=\"Berry Lace Dress\">\r\n");
      out.write("                                        <div>\r\n");
      out.write("                                            <a href=\"assets/pages/img/products/k2.jpg\" class=\"btn btn-default fancybox-button\">Zoom</a>\r\n");
      out.write("                                            <a href=\"#product-pop-up\" class=\"btn btn-default fancybox-fast-view\">View</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <h3><a href=\"shop-item.html\">Berry Lace Dress2</a></h3>\r\n");
      out.write("                                    <div class=\"pi-price\">$29.00</div>\r\n");
      out.write("                                    <a href=\"javascript:;\" class=\"btn btn-default add2cart\">Add to cart</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <div class=\"product-item\">\r\n");
      out.write("                                    <div class=\"pi-img-wrapper\">\r\n");
      out.write("                                        <img src=\"assets/pages/img/products/k3.jpg\" class=\"img-responsive\" alt=\"Berry Lace Dress\">\r\n");
      out.write("                                        <div>\r\n");
      out.write("                                            <a href=\"assets/pages/img/products/k3.jpg\" class=\"btn btn-default fancybox-button\">Zoom</a>\r\n");
      out.write("                                            <a href=\"#product-pop-up\" class=\"btn btn-default fancybox-fast-view\">View</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <h3><a href=\"shop-item.html\">Berry Lace Dress3</a></h3>\r\n");
      out.write("                                    <div class=\"pi-price\">$29.00</div>\r\n");
      out.write("                                    <a href=\"javascript:;\" class=\"btn btn-default add2cart\">Add to cart</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <div class=\"product-item\">\r\n");
      out.write("                                    <div class=\"pi-img-wrapper\">\r\n");
      out.write("                                        <img src=\"assets/pages/img/products/k4.jpg\" class=\"img-responsive\" alt=\"Berry Lace Dress\">\r\n");
      out.write("                                        <div>\r\n");
      out.write("                                            <a href=\"assets/pages/img/products/k4.jpg\" class=\"btn btn-default fancybox-button\">Zoom</a>\r\n");
      out.write("                                            <a href=\"#product-pop-up\" class=\"btn btn-default fancybox-fast-view\">View</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <h3><a href=\"shop-item.html\">Berry Lace Dress4</a></h3>\r\n");
      out.write("                                    <div class=\"pi-price\">$29.00</div>\r\n");
      out.write("                                    <a href=\"javascript:;\" class=\"btn btn-default add2cart\">Add to cart</a>\r\n");
      out.write("                                    <div class=\"sticker sticker-sale\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <div class=\"product-item\">\r\n");
      out.write("                                    <div class=\"pi-img-wrapper\">\r\n");
      out.write("                                        <img src=\"assets/pages/img/products/k1.jpg\" class=\"img-responsive\" alt=\"Berry Lace Dress\">\r\n");
      out.write("                                        <div>\r\n");
      out.write("                                            <a href=\"assets/pages/img/products/k1.jpg\" class=\"btn btn-default fancybox-button\">Zoom</a>\r\n");
      out.write("                                            <a href=\"#product-pop-up\" class=\"btn btn-default fancybox-fast-view\">View</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <h3><a href=\"shop-item.html\">Berry Lace Dress5</a></h3>\r\n");
      out.write("                                    <div class=\"pi-price\">$29.00</div>\r\n");
      out.write("                                    <a href=\"javascript:;\" class=\"btn btn-default add2cart\">Add to cart</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <div class=\"product-item\">\r\n");
      out.write("                                    <div class=\"pi-img-wrapper\">\r\n");
      out.write("                                        <img src=\"assets/pages/img/products/k2.jpg\" class=\"img-responsive\" alt=\"Berry Lace Dress\">\r\n");
      out.write("                                        <div>\r\n");
      out.write("                                            <a href=\"assets/pages/img/products/k2.jpg\" class=\"btn btn-default fancybox-button\">Zoom</a>\r\n");
      out.write("                                            <a href=\"#product-pop-up\" class=\"btn btn-default fancybox-fast-view\">View</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <h3><a href=\"shop-item.html\">Berry Lace Dress6</a></h3>\r\n");
      out.write("                                    <div class=\"pi-price\">$29.00</div>\r\n");
      out.write("                                    <a href=\"javascript:;\" class=\"btn btn-default add2cart\">Add to cart</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- END SIMILAR PRODUCTS -->\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
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
      out.write("                                <input id=\"product-quantity3\" type=\"text\" value=\"1\" readonly class=\"form-control input-sm\">\r\n");
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
      out.write("        <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->\r\n");
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
      out.write("                                                                jQuery(document).ready(function () {\r\n");
      out.write("                                                                    Layout.init();\r\n");
      out.write("                                                                    Layout.initOWL();\r\n");
      out.write("                                                                    Layout.initTwitter();\r\n");
      out.write("                                                                    Layout.initImageZoom();\r\n");
      out.write("                                                                    Layout.initTouchspin();\r\n");
      out.write("                                                                    Layout.initUniform();\r\n");
      out.write("                                                                    Layout.initSliderRange();\r\n");
      out.write("                                                                });\r\n");
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
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${carts}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("C");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                            <form action=\"update-quantity\">\r\n");
          out.write("                                                <input type=\"hidden\" name=\"productId\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.value.product.productID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"\r\n");
          out.write("                                                       <tr>\r\n");
          out.write("\r\n");
          out.write("                                                    <td class=\"goods-page-description\">\r\n");
          out.write("                                                        ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.value.product.productName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                                                    </td>\r\n");
          out.write("                                                    <td style=\"padding-left: 50px;\" class=\"goods-page-image\">\r\n");
          out.write("                                                        <a href=\"javascript:;\"><img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.value.product.url}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"Berry Lace Dress\"></a>\r\n");
          out.write("                                                    </td>\r\n");
          out.write("                                                    <td style=\"padding-left: 70px;\" class=\"goods-page-price\">\r\n");
          out.write("                                                        <strong><span>$</span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.value.product.originalPrice}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</strong>\r\n");
          out.write("                                                    </td>\r\n");
          out.write("                                                    <td style=\"padding-left: 50px;\" class=\"goods-page-quantity\">\r\n");
          out.write("                                                        <div class=\"product-quantity\">\r\n");
          out.write("                                                            <input onchange=\"this.form.submit()\" name=\"quantity\" id=\"product-quantity\" type=\"number\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.value.quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\r\n");
          out.write("                                                        </div>\r\n");
          out.write("                                                    </td>\r\n");
          out.write("\r\n");
          out.write("                                                    <td style=\"padding-left: 50px;\" class=\"goods-page-total\">\r\n");
          out.write("                                                        <strong><span>$</span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.value.product.originalPrice*C.value.quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</strong>\r\n");
          out.write("                                                    </td>\r\n");
          out.write("                                                    <td style=\"padding-left: 50px;\" class=\"del-goods-col\">\r\n");
          out.write("                                                        <a class=\"del-goods\" href=\"delete-cart?productId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.value.product.productID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">&nbsp;</a>\r\n");
          out.write("                                                    </td>\r\n");
          out.write("                                                </tr>\r\n");
          out.write("                                            </form>\r\n");
          out.write("\r\n");
          out.write("                                        ");
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
}
