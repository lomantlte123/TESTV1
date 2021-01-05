import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Login'),
        backgroundColor: Color(0xFF1241db),
      ),
      body: Stack(
        children: <Widget> [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF1241db),
                  Color(0xFF1270db),
                  Color(0xFF129bdb),
                  Color(0xFF12c7db),
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 100.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0
                    ),
                  ),
                  SizedBox(height: 20,),
                  buildBoxUserID(),
                  SizedBox(height: 20,),
                  buildBoxPassword(),
                  SizedBox(height: 10,),
                  buildForgotPasswordButton(),
                  SizedBox(height: 5,),
                  buildSignInButton(),
                  buildSignInButtonFacebook(),
                  buildSignInButtonGoogle(),
                  buildRegisterButton()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildBoxUserID(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Username",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 5 ,
        ),
        TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              hintText: "Enter your username.",
              hintStyle: TextStyle(color: Colors.white24)
          ),
        )
      ],
    );
  }

  Widget buildBoxPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Password",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 5 ,
        ),
        TextField(
          obscureText: true,
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.verified_user,
                color: Colors.white,
              ),
              hintText: "Enter your password.",
              hintStyle: TextStyle(color: Colors.white24)
          ),
        )
      ],
    );
  }
  Widget buildForgotPasswordButton(){
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => [],
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          "Forgot Password?",
          style: TextStyle(
              color: Colors.white),
        ),
      ),
    );
  }

  Widget buildRegisterButton(){
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () => [],
        child: Text(
          "Don't have an Account ? Sign Up",
          style: TextStyle(
              color: Colors.white),
        ),
      ),
    );
  }
  Widget buildSignInButton(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => {},
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text("LOGIN",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 15.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildSignInButtonFacebook(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0 , horizontal: 10.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => {},
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.blue,
        child: Text("Login with Facebook",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 15.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget buildSignInButtonGoogle(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0 , horizontal: 10.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => {},
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.deepOrange,
        child: Text("Login with Google",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 15.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
