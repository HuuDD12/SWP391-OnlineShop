/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BrandDAO;
import DAO.CategoryDAO;
import DAO.ProductDAO;
import DAO.SubCategoryDAO;
import Model.Brand;
import Model.Category;
import Model.Product;
import Model.Subcategory;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADM
 */
@WebServlet(name = "LocProductlistControl", urlPatterns = {"/locproductlistcontrol"})
public class LocProductlistControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        final int size = 6;
        final int Pid = 2;
        HttpSession session = request.getSession();
        String type = request.getParameter("type");
        String cate = request.getParameter("cate");
        int cateP = Integer.parseInt(cate);
        String brand = request.getParameter("brand");
        int brandP = Integer.parseInt(brand);
        String page = request.getParameter("page");
        ProductDAO pdao = new ProductDAO();
        CategoryDAO cdao = new CategoryDAO();
        List<Category> listC = cdao.getAllCategory();
        SubCategoryDAO sdao = new SubCategoryDAO();
        List<Subcategory> listS = sdao.getAllSubCategory();
        List<Product> listTop3 = pdao.getTop3Product();
        BrandDAO bdao = new BrandDAO();
        List<Brand> listB = bdao.getAllBrand();

        if (page == null) {
            page = "1";
        }
        int count = 0;
        if (cate.equals("0") && brand.equals("0")) {
            count = pdao.count();
        } else if (!brand.equals("0") && !cate.equals("0")) {
            count = pdao.countBrandandCategoryandSort(brandP, cateP);

        } else if (!cate.equals("0") && brand.equals("0")) {
            count = pdao.countCategoryandSort(cateP);

        } else if (cate.equals("0") && !brand.equals("0")) {
            count = pdao.countBrandandSort(brandP);
        }
        int endPage = count / size;
        if (count % size != 0) {
         endPage++;
        }
        int pTid = Integer.parseInt(page);
        if (type.equals("1")) {
            if (cate.equals("0") && brand.equals("0")) {
                List<Product> listP = pdao.sortProductByNameAsc(pTid);
                request.setAttribute("listP", listP);

            } else if (!brand.equals("0") && !cate.equals("0")) {
                List<Product> listP = pdao.sortProductByNameAscAndbrandcate(pTid,brandP,cateP);
                request.setAttribute("listP", listP);

            } else if (!cate.equals("0") && brand.equals("0")) {
                List<Product> listP = pdao.sortProductByNameAscAndcate(pTid,cateP);
                request.setAttribute("listP", listP);

            } else if (cate.equals("0") && !brand.equals("0")) {
                List<Product> listP = pdao.sortProductByNameAscAndbrand(pTid,brandP);
                request.setAttribute("listP", listP);
            }

        } else if (type.equals("2")) {
            if (cate.equals("0") && brand.equals("0")) {
                List<Product> listP = pdao.sortProductByNameDesc(pTid);
                request.setAttribute("listP", listP);

            } else if (!brand.equals("0") && !cate.equals("0")) {
                List<Product> listP = pdao.sortProductByNameDescAndbrandcate(pTid,brandP,cateP);
                request.setAttribute("listP", listP);

            } else if (!cate.equals("0") && brand.equals("0")) {
                List<Product> listP = pdao.sortProductByNameDescAndcate(pTid,cateP);
                request.setAttribute("listP", listP);

            } else if (cate.equals("0") && !brand.equals("0")) {
                List<Product> listP = pdao.sortProductByNameDescAndbrand(pTid,brandP);
                request.setAttribute("listP", listP);

            }

        } else if (type.equals("3")) {
            if (cate.equals("0") && brand.equals("0")) {
                List<Product> listP = pdao.sortProductByPriceAsc(pTid);
                request.setAttribute("listP", listP);

            } else if (!brand.equals("0") && !cate.equals("0")) {
                List<Product> listP = pdao.sortProductByPriceAscbrandcate(pTid,brandP,cateP);
                request.setAttribute("listP", listP);

            } else if (!cate.equals("0") && brand.equals("0")) {
                List<Product> listP = pdao.sortProductByPriceAsccate(pTid,cateP);
                request.setAttribute("listP", listP);

            } else if (cate.equals("0") && !brand.equals("0")) {
                List<Product> listP = pdao.sortProductByPriceAscbrand(pTid,brandP);
                request.setAttribute("listP", listP);

            }

        } else if (type.equals("4")) {
            if (cate.equals("0") && brand.equals("0")) {
                List<Product> listP = pdao.sortProductByPriceDesc(pTid);
                request.setAttribute("listP", listP);

            } else if (!brand.equals("0") && !cate.equals("0")) {
                List<Product> listP = pdao.sortProductByPriceDescbrandcate(pTid,brandP,cateP);
                request.setAttribute("listP", listP);

            } else if (!cate.equals("0") && brand.equals("0")) {
                List<Product> listP = pdao.sortProductByPriceDesccate(pTid,cateP);
                request.setAttribute("listP", listP);

            } else if (cate.equals("0") && !brand.equals("0")) {
                List<Product> listP = pdao.sortProductByPriceDescbrand(pTid,brandP);
                request.setAttribute("listP", listP);

            }


        } else {
            if (cate.equals("0") && brand.equals("0")) {             
                List<Product> list = pdao.pagingProduct(pTid);
                request.setAttribute("listP", list);

            } else if (!brand.equals("0") && !cate.equals("0")) {
                 List<Product> list = pdao.pagingProductByCateandbrand(pTid,brandP,cateP);
                request.setAttribute("listP", list);

            } else if (!cate.equals("0") && brand.equals("0")) {
                 List<Product> list = pdao.pagingProductByCate(pTid,cateP);
                request.setAttribute("listP", list);

            } else if (cate.equals("0") && !brand.equals("0")) {
                List<Product> list = pdao.pagingProductByBrand(pTid,brandP);
                request.setAttribute("listP", list);

            }

        }
        request.setAttribute("Pid", Pid);
        request.setAttribute("type", type);
        request.setAttribute("cate", cate);
        request.setAttribute("brand", brand);
        session.setAttribute("listB", listB);
        request.setAttribute("endPage", endPage);
        request.setAttribute("page", page);
        session.setAttribute("listTop3", listTop3);
        session.setAttribute("listC", listC);
        session.setAttribute("listS", listS);
        request.getRequestDispatcher("productlist.jsp").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
