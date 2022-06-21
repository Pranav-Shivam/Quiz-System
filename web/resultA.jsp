
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <%
            ArrayList<String> cAnswer = (ArrayList<String>) request.getAttribute("youranswer");
            ArrayList<String> ccAnswer = (ArrayList<String>) request.getAttribute("correctanswer");
            int ct = 0;
            for (int i = 0; i < cAnswer.size(); i++) {
                if (cAnswer.get(i).equals(ccAnswer.get(i))) {
                    ct++;
                }
            }

        %>

        <h1 class="text-center">Result aaa gya Bhai!</h1>
        <br><!-- <> -->
        <hr>
        <div class="container text-center">
            <table class="table">

                <tbody>
                    <tr>                  
                        <th>Questions .. </th>
                        <th>Your Answer</th>
                        <th>Correct Answer</th>
                    </tr>
                    <tr>
                        <td>Question 1.</td>
                        <td><%= cAnswer.get(0)%></td>
                        <td><%= ccAnswer.get(0)%></td>
                    </tr>
                    <tr>
                        <td>Question 2.</td>
                        <td><%= cAnswer.get(1)%></td>
                        <td><%= ccAnswer.get(1)%></td>
                    </tr>
                    <tr>
                        <td>Question 3.</td>
                        <td><%= cAnswer.get(2)%></td>
                        <td><%= ccAnswer.get(2)%></td>
                    </tr>
                    <tr>
                        <td>Question 4.</td>
                        <td><%= cAnswer.get(3)%></td>
                        <td><%= ccAnswer.get(3)%></td>
                    </tr>
                    <tr>
                        <td>Question 5.</td>
                        <td><%= cAnswer.get(4)%></td>
                        <td><%= ccAnswer.get(4)%></td>
                    </tr>
                    <br>
                    <tr>
                        <th>Total Correct answer</th>
                        <td>=</td>
                        <td><%= ct  %></td>
                    </tr>
                    <tr>
                        <th>Marks Obtained</th>
                        <td>=</td>
                        <td><%= ct*5  %></td>
                    </tr>

                </tbody>
            </table>
        </div>
    </body>
</html>
