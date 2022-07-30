<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Èrrôr_MART.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/c_style.css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <section>
        <div class="container">
            <div class="contactinfo">
                <div>
                    <h2>Contact Info</h2>
                    <ul class="info">
                        <li>
                            <span><img src="location.jpg" width="100" height="100" /></span>
                            <span>
                                2912 Meadowbrook Road<br />
                                Los Angeles, CA<br />
                                90017
                            </span>
                        </li>
                        <li>
                            <span><img src="mail.png" width="100" height="100" /></span>
                            <span>anurag@gmail.com</span>
                        </li>
                        <li>
                            <span><img src="call.png" width="100" height="100" /></span>
                            <span>1234567890</span>
                        </li>



                    </ul>
                </div>
                    <ul class="sci">
                        <li><a href="#"><img src="1.png" width="50" height="50"></a></li>
                        <li><a href="#"><img src="2.png" width="50" height="50"></a></li>
                        <li><a href="#"><img src="3.png" width="50" height="50"></a></li>
                        <li><a href="#"><img src="4.png" width="50" height="50"></a></li>
                        <li><a href="#"><img src="5.png" width="50" height="50"></a></li>
                    </ul>
             </div>

                    <div class="contactform">
                        <h2>Send a Message</h2>
                        <div class="formbox">
                            <div class="inputbox w50">
                                <input type="text" name="" required />
                                <span>First name</span>
                            </div>
                            <div class="inputbox w50">
                                <input type="text" name="" required />
                                <span>Last name</span>
                            </div>
                            <div class="inputbox w50">
                                <input type="text" name="" required />
                                <span>Email Address</span>
                            </div>
                            <div class="inputbox w50">
                                <input type="text" name="" required />
                                <span>Mobile Number</span>
                            </div>
                            <div class="inputbox w100">
                                <textarea name="" required></textarea>
                                <span>Write your message here....</span>
                            </div>
                            <div class="inputbox w100">
                                 <input type="submit" value="send" />
                            </div>
                        </div>
                    </div>
             
        </div>
    </section>
     

    </form>
</body>
</html>
