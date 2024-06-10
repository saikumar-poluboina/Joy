<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #006400, #8b008b);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            width: 300px;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 5px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
        }
        h2 {
            color: #fff;
            text-align: center;
            margin-bottom: 20px;
        }
        .input-group {
            position: relative;
            margin-bottom: 20px;
        }
        .input-group input {
            width: 100%;
            border-radius: 20px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .input-group i {
            position: absolute;
            top: 15px;
            left: 10px;
            color: #fff;
        }
        button {
            width: 70%;
            padding: 10px;
            border: black;
            outline: none;
            text-align: center;
            cursor: pointer;
            border-radius: 40px;
            background-color: #4caf50;
            color: #fff;
            transition: 0.3s ease-in-out;
            width: 50%;
            margin-left: 50px;
        }
        button:hover {
            background-color: #3628d3;
            color: white;
            border-radius: 20px;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
            margin-left: 50px;
                }
           .forgot-register {
            text-align: center;
            background-color:black;
               color:white ;
               margin-top: 30px;
               border-radius: 40px;
               margin-right: 20px;
           }
    </style>
</head>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>sql
<script type="text/javascript">
   function login() {
       $.ajax({
           type: 'post',
           url: '/loginemail/type=login',
           async: false,
           data: {
               email: $('#email').val(),
               subject: $('#subject').val(),
               msg: $('#msg').val()
           },
           success: function(response) {
               alert("Succeeded");
           },
           error: function(xhr, status, error) {
               console.error('AJAX error:', error);
           }
       });
   }
   function forgotpwd(){
    $.ajax({
              type: 'post',
              url: '/loginemail/type=forgotpwd',
              async: false,
              data: {
                  email: $('#email').val(),
                  subject: $('#subject').val(),
                  msg: $('#msg').val()
              },
              success: function(response) {
                  alert("Succeeded");
              },
              error: function(xhr, status, error) {
                  console.error('AJAX error:', error);
              }
          });
          }
</script>
<body>
    <div class="login-container">
        <h2>Welcome........</h2>
        <div class="input-group">
            <input type="text" placeholder="Username" required>
        </div>
        <div class="input-group">
            <input type="password" placeholder="Password" required>
        </div>
        <div>
        <button onclick='login()'>LOGIN</button></br>
        </div>
        <input type='button' value='Forgot Password' class='forgot-register' onclick='forgotpwd'/>
        <input type='button' value='New User?Register' class='forgot-register'/>
    </div>
</body>
</html>
