import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rentcar/Login/login.dart';
import 'package:rentcar/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import '../widgets/profile_pic.dart';
import 'package:http/http.dart' as http;


class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {

  var name = "";
  var email = ""; 
  var numberphone = "";

  _ProfilState(){
    getId();
  }

  getId () async {
    final prefs = await SharedPreferences.getInstance();
    var id = prefs.getInt("id");

    final response = await http.get(Uri.parse('http://192.168.212.84:8000/api/detail-user?id=' + id.toString()));
    final responseData = jsonDecode(response.body)["data"];
    print(responseData);
    setState(() {
      name=responseData["name"];
      email=responseData["email"];
      numberphone=responseData["numberphone"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 20)
          ),
          // ProfilePic(),
          Padding(
            padding: const EdgeInsets.only(top: 20)
          ),
          Text(name, style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),),
          Padding(
              padding: const EdgeInsets.only(top: 5)
          ),
          Text(email, style: TextStyle(
            fontSize: 16.0,
          ),),
          Padding(
              padding: const EdgeInsets.only(top: 10)
          ),
          Text(numberphone, style: TextStyle(
            fontSize: 14.0,
          ),),
          Padding(
              padding: const EdgeInsets.only(left: 40,right: 40, top: 30),
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                        Icons.account_circle_outlined,
                        color: Colors.red,
                        size: 30,
                    ),
                    SizedBox(width: 20),
                    Expanded(child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                    )
                    )
                    ),
                    Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                    )
                  ],
                ),
              ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40, top: 20),
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.lock_open_rounded,
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Expanded(child: Text(
                      "Change Password",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      )
                  )
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40, top: 20),
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.help_outline,
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Expanded(child: Text(
                      "Help Center",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      )
                  )
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40, top: 20),
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
              ),
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Splash())
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.logout_rounded,
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Expanded(child: Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      )
                  )
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}
