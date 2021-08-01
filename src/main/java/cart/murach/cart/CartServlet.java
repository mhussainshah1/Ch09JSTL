package cart.murach.cart;

import cart.murach.business.Cart;
import cart.murach.business.LineItem;
import cart.murach.business.Product;
import cart.murach.data.ProductIO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "CartServlet", value = "/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext sc = getServletContext();

        var cart = new Cart();
        cart.addItem(new LineItem(new Product("8601", "86 (the band) - True Life Songs and Pictures", 14.95)));
        cart.addItem(new LineItem(new Product("pf01", "Paddlefoot - The first CD", 12.95)));
        cart.addItem(new LineItem(new Product("pf02", "Paddlefoot - The second CD", 14.95)));
        cart.addItem(new LineItem(new Product("jr01", "Joe Rut - Genuine Wood Grained Finish", 14.95)));

        request.setAttribute("cart", cart);

        String url = "/cart/cart.jsp";

        HttpSession session = request.getSession();
        //forToken Tags
        session.setAttribute("productCodes","8601,pf01,pf02,jr01");

        sc.getRequestDispatcher(url).forward(request, response);
    }
}