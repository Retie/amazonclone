package clone.amazon.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import clone.amazon.domain.Member;
import clone.amazon.service.MemberService;


/*
 * @WebServlet("/MemberJoinServlet") public class MemberJoinServlet extends
 * HttpServlet { private static final long serialVersionUID = 1L;
 * 
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * request.setCharacterEncoding("UTF-8");
 * response.setContentType("text/html;charset=UTF-8");
 * 
 * String name = request.getParameter("name"); String email =
 * request.getParameter("email"); String password =
 * request.getParameter("password"); String pwdCheck =
 * request.getParameter("pwdCheck");
 * 
 * response.getWriter().write(register(name, email, password, pwdCheck)); }
 * 
 * public int register(String name, String email, String password, String
 * pwdCheck) { Member member = new Member(); try { member.setName(name);
 * member.setEmail(email); member.setPassword(password); } catch (Exception e) {
 * return 0; } return new MemberService().join(member); } }
 */