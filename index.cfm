<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Task 28</title>
    </head>    
    <body>
        <div class="container">
                <form action="components/task1.cfc?method=insertdetails" method="post">
                    <h1>Login</h1>
                    <hr>
                    <div class="col-md-12">
                        <label for="email">
                            <b>Username</b>
                        </label>
                        <input type="text" placeholder="Enter username" name="username" required>
                        <br>
                        <label for="psw">
                            <b>Password</b>
                        </label>
                        <input type="password" placeholder="Enter Password" name="password" required>
                        <br>
                        <button type="submit" class="signupbtn" value="Login" name="form_submit">Login</button>
                    </div>            
                </form>                 
            <cfoutput>
                <cfif structKeyExists(url,"error")>
                 Please enter correct username and password.
                </cfif>
                <cfif structKeyExists(url,"ses_error")>             
                    <p>Session Expired.please log in</p>               
                </cfif>
                <cfif structKeyExists(url,"message")>
                 Please enter correct username and password
                </cfif>
            </cfoutput> 
         </div>              
    </body>
</html>