<%@page import="Escola.Alunos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Escola Tesla Lda</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        body {
            background-color:  #8a7d7d;
        }

        #customizar {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: #8a7d7d;
            width: 100%;
        }

        #customizar td, #customizar th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customizar tr:nth-child(even){background-color: #8a7d7d;}

        #customizar tr:hover {background-color: #515A5A;}

        #customizar th {
            padding-top: 2px;
            padding-bottom: 2px;
            text-align:center;
            background-color: #B2BABB;
            color: black;
        }
    </style>
    <body>
        <h2 style="color:whitesmoke; text-align: center; ">Lista de alunos</h2>
        <h4 style="color:whitesmoke; text-align: center; ">3° Ano Ensino Médio </h4>
        <a href="page2.jsp" target="_self" rel="external">Pagina 2</a>
        <a href="index.jsp" target="_self" rel="external">Inicio</a>
        <%
            List<Alunos> alunos = new ArrayList<Alunos>();
            alunos.add(new Alunos("Edward Snowden", 123545589, 10.0, 10.0, 10.0, 10.0));
            alunos.add(new Alunos("Hosain Rahman", 398654857, 6.0, 4.0, 6.0, 7.0));
            alunos.add(new Alunos("Tim Cook", 732123856, 4.0, 5.0, 6.0, 8.0));
            alunos.add(new Alunos("Ernst Handel", 982123213, 7.0, 3.0, 6.0, 7.0));
            alunos.add(new Alunos("Jonathan Ive", 323698853, 9.0, 6.0, 5.0, 4.0));
            alunos.add(new Alunos("Jeff Bezos", 52563744, 5.0, 7.0, 8.0, 4.0));
            out.println("<table id='customizar'>");
            out.println("<tr>"
                    + "<th>Nome do Aluno</th>"
                    + "<th>RA</th>"
                    + "<th>Nota 1</th>"
                    + "<th>Nota 2</th>"
                    + "<th>Nota 3</th>"
                    + "<th>Nota 4</th>"
                    + "<th>Média</th>"
                    + "</tr>");
            for (Alunos aluno : alunos) {
                aluno.setMedia(aluno.getNota1(), aluno.getNota2(), aluno.getNota3(), aluno.getNota4());
                out.println("<tr>"
                        + "<td>" + aluno.getNome() + "</td>"
                        + "<td>" + aluno.getRA() + "</td>"
                        + "<td>" + aluno.getNota1() + "</td>"
                        + "<td>" + aluno.getNota2() + "</td>"
                        + "<td>" + aluno.getNota3() + "</td>"
                        + "<td>" + aluno.getNota4() + "</td>"
                        + "<td>" + aluno.getMedia() + "</td"
                        + "</tr>");
            }
            out.println("</table>");

        %>
       
    </body>
</html>

