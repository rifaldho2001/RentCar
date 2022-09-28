import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/cars_overview.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpScreen createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUp> {
  bool _isHide = true;

  void goHome() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CarsOverviewScreen(),
      ),
    );
  }

  void goLogin() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
  }

  Widget inputFullname() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Fullname",
          style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 255, 0, 0),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon:
                    Icon(Icons.people, color: Color.fromARGB(255, 255, 0, 0)),
                hintText: 'Fullname',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
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
              color: Color.fromARGB(255, 246, 0, 0),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon:
                    Icon(Icons.email, color: Color.fromARGB(255, 252, 0, 0)),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
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
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: _isHide,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon:
                    Icon(Icons.lock, color: Color.fromARGB(255, 250, 0, 0)),
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
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget inputConfirmPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Confirm Password",
          style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 255, 0, 0),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: _isHide,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon:
                    Icon(Icons.lock, color: Color.fromARGB(255, 251, 0, 0)),
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
                hintText: 'Confirm Password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget inputNumberPhone() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Number Phone",
          style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 246, 0, 0),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon:
                    Icon(Icons.phone, color: Color.fromARGB(255, 252, 0, 0)),
                hintText: 'Number Phone',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget inputKTP() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upload KTP",
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 246, 0, 0),
            fontWeight: FontWeight.bold,
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
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: GestureDetector(
            child: Center(
              child: Text("Upload KTP")), 
              onTap: (() {
                AlertDialog(
                  content: Text("Hallo"),
                  );
                }
              ),
            ),
          // child: TextField(
          //   keyboardType: TextInputType.emailAddress,
          //   style: TextStyle(
          //       color: Colors.black87
          //   ),
          //   decoration: InputDecoration(
          //       border: InputBorder.none,
          //       contentPadding: EdgeInsets.only(top: 14),
          //       prefixIcon: Icon(
          //           Icons.document_scanner,
          //           color: Color.fromARGB(255, 252, 0, 0)
          //       ),
          //       hintText: 'Number Phone',
          //       hintStyle: TextStyle(
          //           color: Colors.black38
          //       )
          //   ),
          // ),
        )
      ],
    );
  }

  Widget signUpButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
          style: TextButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: Color.fromARGB(255, 255, 0, 0)),
          onPressed: () {
            goHome();
          },
          child: Text(
            "SIGN UP",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget haveAccount() {
    return GestureDetector(
      onTap: () {
        goLogin();
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Already have an account? ',
              style: TextStyle(color: Color.fromARGB(255, 249, 0, 0))),
          TextSpan(
              text: 'Login',
              style: TextStyle(
                  color: Color.fromARGB(255, 247, 0, 0),
                  fontWeight: FontWeight.bold))
        ]),
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
                decoration: BoxDecoration(color: Colors.white),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/splash/512.png")),
                        ),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Color.fromARGB(255, 249, 0, 0),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50),
                      inputFullname(),
                      SizedBox(height: 20),
                      inputEmail(),
                      SizedBox(height: 20),
                      inputPassword(),
                      SizedBox(height: 20),
                      inputConfirmPassword(),
                      SizedBox(height: 20),
                      inputNumberPhone(),
                      SizedBox(height: 20),
                      inputKTP(),
                      SizedBox(height: 20),
                      signUpButton(),
                      haveAccount()
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
