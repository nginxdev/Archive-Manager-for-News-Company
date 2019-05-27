<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="includes/adminheader.jsp" />
         <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form role="form" method="post" action="registrationhandler.jsp" autocomplete="off">
                <h2>Please Login</h2>
                <hr/>
                
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input class="form-control input-lg" type="text" name='name' placeholder="name"/>
                </div>                
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input class="form-control input-lg" type="text" name='uname' placeholder="username"/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input class="form-control input-lg" type="password" name='password' placeholder="password"/>
                </div>
            
                <div class="form-group">
                    <input type="submit" name="submit" value="Login" class="btn btn-primary btn-block" tabindex="5"></input>
                </div>
                <div class="form-group text-center">
                    <a href="login.jsp">Have an Account?</a>
                </div>
                <hr/>
            </form>
        </div>
    </div>
    </body>
</html>