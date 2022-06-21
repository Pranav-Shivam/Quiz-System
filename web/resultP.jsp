
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
            ArrayList<String> cAnswe = (ArrayList<String>) request.getAttribute("pythonanswer");
            ArrayList<String> ccAnswe = (ArrayList<String>) request.getAttribute("pythoncanswer");
            int ct = 0;
            for (int i = 0; i < 20; i++) {
                if (cAnswe.get(i).equals(ccAnswe.get(i))) {
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
                        <td><%= cAnswe.get(0)%></td>
                        <td><%= ccAnswe.get(0)%></td>
                    </tr>
                    <tr>
                        <td>Question 2.</td>
                        <td><%= cAnswe.get(1)%></td>
                        <td><%= ccAnswe.get(1)%></td>
                    </tr>
                    <tr>
                        <td>Question 3.</td>
                        <td><%= cAnswe.get(2)%></td>
                        <td><%= ccAnswe.get(2)%></td>
                    </tr>
                    <tr>
                        <td>Question 4.</td>
                        <td><%= cAnswe.get(3)%></td>
                        <td><%= ccAnswe.get(3)%></td>
                    </tr>
                    <tr>
                        <td>Question 5.</td>
                        <td><%= cAnswe.get(4)%></td>
                        <td><%= ccAnswe.get(4)%></td>
                    </tr>
                    <tr>
                        <td>Question 6.</td>
                        <td><%= cAnswe.get(5)%></td>
                        <td><%= ccAnswe.get(5)%></td>
                    </tr>
                    <tr>
                        <td>Question 7.</td>
                        <td><%= cAnswe.get(6)%></td>
                        <td><%= ccAnswe.get(6)%></td>
                    </tr>
                    <tr>
                        <td>Question 8.</td>
                        <td><%= cAnswe.get(7)%></td>
                        <td><%= ccAnswe.get(7)%></td>
                    </tr>
                    <tr>
                        <td>Question 9.</td>
                        <td><%= cAnswe.get(8)%></td>
                        <td><%= ccAnswe.get(8)%></td>
                    </tr>
                    <tr>
                        <td>Question 10.</td>
                        <td><%= cAnswe.get(9)%></td>
                        <td><%= ccAnswe.get(9)%></td>
                    </tr>
                    <tr>
                        <td>Question 11.</td>
                        <td><%= cAnswe.get(10)%></td>
                        <td><%= ccAnswe.get(10)%></td>
                    </tr>
                    <tr>
                        <td>Question 12.</td>
                        <td><%= cAnswe.get(11)%></td>
                        <td><%= ccAnswe.get(11)%></td>
                    </tr>
                    <tr>
                        <td>Question 13.</td>
                        <td><%= cAnswe.get(12)%></td>
                        <td><%= ccAnswe.get(12)%></td>
                    </tr>
                    <tr>
                        <td>Question 14.</td>
                        <td><%= cAnswe.get(13)%></td>
                        <td><%= ccAnswe.get(13)%></td>
                    </tr>
                    <tr>
                        <td>Question 15.</td>
                        <td><%= cAnswe.get(14)%></td>
                        <td><%= ccAnswe.get(14)%></td>
                    </tr>
                    <tr>
                        <td>Question 16.</td>
                        <td><%= cAnswe.get(15)%></td>
                        <td><%= ccAnswe.get(15)%></td>
                    </tr>
                    <tr>
                        <td>Question 17.</td>
                        <td><%= cAnswe.get(16)%></td>
                        <td><%= ccAnswe.get(16)%></td>
                    </tr>
                    <tr>
                        <td>Question 18.</td>
                        <td><%= cAnswe.get(17)%></td>
                        <td><%= ccAnswe.get(17)%></td>
                    </tr>
                    <tr>
                        <td>Question 19.</td>
                        <td><%= cAnswe.get(18)%></td>
                        <td><%= ccAnswe.get(18)%></td>
                    </tr>
                    <tr>
                        <td>Question 20.</td>
                        <td><%= cAnswe.get(19)%></td>
                        <td><%= ccAnswe.get(19)%></td>
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
