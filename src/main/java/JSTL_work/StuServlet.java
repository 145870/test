package JSTL_work;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/7-JSTL-worl/stu")
public class StuServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Student std1=new Student("张三","tr02022",20,80);
        Student std2=new Student("李四","tr02022",18,30);
        Student std3=new Student("王五","tr02022",19,90);
        Student std4=new Student("赵六","tr02022",29,10);
        Student std5=new Student("刘琦","tr02022",19,100);
        List<Student> list=List.of(std1,std2,std3,std4,std5);
        req.setAttribute("list",list);
        req.getRequestDispatcher("w3.jsp").forward(req,resp);
    }
}
