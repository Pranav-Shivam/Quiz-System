<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>About</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/my.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background
            {
                clip-path: polygon(50% 0, 100% 1%, 99% 50%, 100% 100%, 84% 94%, 41% 99%, 15% 94%, 0 100%, 1% 46%, 0 2%);
            }
        </style>
        <style type="text/css">
            h2{
                font-weight: 6px;
                color: orange;
            }
            h6
            {
                color: green;
            }
            h1
            {
                color: purple;
            }
            h3
            {
                color: red;
            }
        </style>
    </head>
    <body >
         <%
            if(session.getAttribute("adminUser")== null)
            {
            response.sendRedirect("loginAdmin.jsp");
        }
            %>
        <div class="container text-center">
        <h2>Work</h2>

        <p>If you have experience as an administrator in another sector you could transfer these skills into the construction industry. Your new employer may provide training to help you progress in the role.
            Work experience

            Work experience is essential to gaining work within the industry. This could have been gained at school or by working weekends and holidays with a company or relative who works in administration. Potential employers will always be pleased to see work experience listed on your CV.
        </p>
        <h5> Find out more about work experience</h5>

        <h3>Skills</h3>

        <h6>Additional skills which may benefit anyone considering a job as an administrator include:</h6>
        <p>
            Be thorough and pay attention to detail<br>
            Able to work well with others<br>
            Able to work on your own<br>
            Sensitivity and understanding
            Flexible and open to change<br>
            Excellent verbal communication skills<br>
            Customer service skills<br>
            Able to use a computer and the main software packages competently

        </p>
        <h3>What does an administrator do?</h3>
        <br>
        <p>As an administrator, you will be responsible for helping the smooth running of the business by ensuring filing and documentation is kep up to date. Duties may include using specialist computer software and understanding the requirements of the business you are working in. You could also be required to be customer-facing - via email, phone, or greeting visitors.
        </p><br>
        <h6>The job role of an administrator involves the following duties:</h6>  
        <br>
        Preparing, organising and storing information in paper and digital form<br>
        Dealing with queries on the phone and by email
        Greeting visitors at reception<br>
        Managing diaries, scheduling meetings and booking rooms<br>
        Arranging travel and accommodation
        Arranging post and deliveries<br>
        Taking minutes at meetings
        Typing up letters and reports<br>
        Updating computer records using a database
        Printing and photocopying
        Ordering office supplies<br>
        Maintaining office systems<br>
        Liaising with suppliers and contractors
        Liaising with staff in other departments, e.g. finance, HR<br>
        Working in an office.
        <br>

        <h3>How much could you earn as an administrator?</h3>
        <br>
        <p>The expected salary for an adminstrator varies as you become more experienced.

            Newly trained administrators can earn £16,000 - £20,000
            Trained administrators with some experience can earn £18,000 - £25,000
            Senior administrators can earn £25,000 - £35,000.*

            Hours and salary depend on location, employer and any overtime you may do.

            * Salaries have been collected from multiple industry sources and have been updated as of 2019

        </p>	
    </body>
</html>