package com.subtitlor.servlets;

import com.subtitlor.utilities.SubtitlesHandler;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditSubtitles")
public class EditSubtitles extends HttpServlet {

    private static final String FILE_NAME = "/WEB-INF/password_presentation.srt";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        ServletContext context = getServletContext();
        System.out.println(context.getRealPath(FILE_NAME));
        SubtitlesHandler subtitles = new SubtitlesHandler(context.getRealPath(FILE_NAME));

        request.setAttribute("subtitles", subtitles.getSubtitles());

        // redirection de la servlet vers sa jsp associée.

        this.getServletContext().getRequestDispatcher("/WEB-INF/edit_subtitle.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

    }


}
