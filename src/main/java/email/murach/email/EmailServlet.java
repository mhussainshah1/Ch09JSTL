package email.murach.email;

import email.murach.business.User;
import email.murach.data.UserDB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "EmailServlet", value = "/emailList")
public class EmailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/email/index.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        } else if (action.equals("join")) {
            // perform action and set URL to appropriate page
            url = "/email/index.jsp";    // the "join" page
        } else if (action.equals("add")) {
            String email = request.getParameter("email");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");

            User user = new User(firstName, lastName, email);
            UserDB.insert(user);

            // validate the parameters
            String message = null;
            if (firstName == null || lastName == null || email == null ||
                    firstName.isBlank() || lastName.isBlank() || email.isBlank()) {
                message = "Please fill out all three text boxes.";
                url = "/email/index.jsp";
            } else {
                url = "/email/thanks.jsp";
            }

            HttpSession session = request.getSession();

            //forToken
            session.setAttribute("emailAddress", "jsmith@gmail.com");

            //for loop
            int[] numbers = new int[30];
            for (int i = 0; i < 30; i++) {
                numbers[i] = i + 1;
            }
            session.setAttribute("numbers", numbers);

            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}