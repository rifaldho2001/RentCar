import 'package:flutter/material.dart';
import '../screens/cars_overview.dart';
import 'package:flutter/services.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  static String routeName = "/login";
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<Login> {
  bool _isRemember = false;

  bool _isHide = true;

  void goHome() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CarsOverviewScreen(),
      ),
    );
  }

  void goSignUp() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignUp(),
      ),
    );
  }

  Widget inputEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 251, 8, 8),
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 250, 3, 3)
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget inputPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 255, 0, 0),
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            obscureText: _isHide,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 252, 0, 0)
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isHide ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black26,
                  ),
                  onPressed: () {
                    setState(() {
                      _isHide = !_isHide;
                    });
                  },
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget forgetPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print("Forget Password"),
        child: Text(
          "Forget Password?",
          style: TextStyle(
              color: Color.fromARGB(255, 245, 1, 1),
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget rememberMe() {
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.black26),
              child: Checkbox(
                value: _isRemember,
                checkColor: Colors.white,
                activeColor: Color.fromARGB(255, 245, 0, 0),
                onChanged: (value) {
                  setState(() {
                    _isRemember = value!;
                  });
                },
              )
          ),
          Text(
            "Remember Me",
            style: TextStyle(
                color: Color.fromARGB(255, 247, 0, 0)
            ),
          )
        ],
      ),
    );
  }

  Widget loginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          elevation: 5,
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          backgroundColor: Color.fromARGB(255, 231, 44, 44)
        ),
        onPressed: () {
          goHome();
        },
        child: Text(
          "LOGIN",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        )
      ),
    );
  }

  Widget dontHaveAccount() {
    return GestureDetector(
      onTap: () {
        goSignUp();
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have any account? ',
              style: TextStyle(
                  color: Color.fromARGB(255, 252, 2, 2)
              )
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                  color: Color.fromARGB(255, 252, 2, 2),
                  fontWeight: FontWeight.bold
              )
            )
          ]
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
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/splash/512.png")
                          ),
                        ),
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 50),
                      inputEmail(),
                      SizedBox(height: 20),
                      inputPassword(),
                      forgetPassword(),
                      rememberMe(),
                      loginButton(),
                      dontHaveAccount()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}