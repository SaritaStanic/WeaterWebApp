
    <?php
    //logging in with sessions
    session_start();
    $error=''; //storing error message in this variable

    $host="Localhost";
    $user= "root";
    $password="";
    $db="demo";

    // Store Session Data
    $_SESSION['login_user']= $username;  // Initializing Session with value of PHP Variable
    echo $_SESSION['login_user'];





 
 

    if(isset($_POST['submit'])){
        if (empty($_POST['username']) || empty($_POST['password'])) {
            $error = "Username or Password is invalid";
        }
        else
        {
        //defined user:
        $unname=$_POST['username'];
        $password=$_POST['password'];


    // Establishing Connection with Server by passing server_name, user_id and password as a parameter
        $connection = mysql_connect($host,$user,$password); //needs to be expanded to 5 columns

    // To protect MySQL injection for Security purpose
        $username = stripslashes($username);
        $password = stripslashes($password);
        $username = mysql_real_escape_string($username);
        $password = mysql_real_escape_string($password);
        $db = mysql_select_db($db, $connection);
        $sql="select + form loginform where User='".$username."'AND Pass='".$password."' limit 1";

        $result=mysql_query($sql,$connection);
            if(mysal_mun_rows($result)==1){
                echo "You have Successfully logged in"
                $_SESSION['login_user']=$username; // Initializing Session 
             //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!why is ths a problem?
                header("location:profile.php"); // Redirecting To Other Page
        
        
            }
            else
            {
            $error = "Username or Password is invalid";
            exit();
        }
    }

    if(isset($_SESSION['id'])){
    unset($_SESSION['id']);  //Is Used To Destroy Specified Session
    mysql_close($conection); // Closing Connection
    }
    

    //Welcome echo $_POST["username"];
    //Your password is:  echo $_POST["password"]; 

?>