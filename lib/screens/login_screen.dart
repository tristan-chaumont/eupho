import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eupho/utilities/constants.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  Column _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            cursorColor: euphoBlue,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: euphoBlue,
              fontFamily: 'Source Sans Pro',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: euphoYellow,
              ),
              hintText: 'Entrez votre email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Column _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Mot de passe',
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            cursorColor: euphoBlue,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(
              color: euphoBlue,
              fontFamily: 'Source Sans Pro',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: euphoYellow,
              ),
              hintText: 'Entrez votre mot de passe',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Container _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Mot de passe oublié ?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Container _buildRememberMeCheckbox() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Se souvenir de moi',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Container _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 25,
      ),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: euphoYellow,
        child: Text(
          'CONNEXION',
          style: TextStyle(
            color: euphoBlue,
            letterSpacing: 1.5,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Source Sans Pro',
          ),
        ),
      ),
    );
  }

  Column _buildSignInWithText() {
    return Column(
      children: <Widget>[
        Text(
          '- OU -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Se connecter avec',
          style: kLabelStyle,
        ),
      ],
    );
  }

  GestureDetector _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Padding _buildSocialBtnRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login With Facebook'),
            AssetImage('assets/logos/facebook.jpg'),
          ),
          _buildSocialBtn(
            () => print('Login With Google'),
            AssetImage('assets/logos/google.jpg'),
          ),
        ],
      ),
    );
  }

  GestureDetector _buildSignUpButton() {
    return GestureDetector(
      onTap: () => print('Sign Up Button Pressed'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Pas de compte ? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Source Sans Pro',
              ),
            ),
            TextSpan(
              text: 'Inscrivez-vous',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Sans Pro',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.only(
                    left: 40,
                    right: 40,
                    top: 80,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 4,
                        child: Image.asset('assets/logos/eupho-large-cut.png'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      _buildEmailTF(),
                      SizedBox(
                        height: 30,
                      ),
                      _buildPasswordTF(),
                      _buildForgotPasswordBtn(),
                      _buildRememberMeCheckbox(),
                      _buildLoginBtn(),
                      _buildSignInWithText(),
                      _buildSocialBtnRow(),
                      _buildSignUpButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
