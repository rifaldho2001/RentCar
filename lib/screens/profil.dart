import 'package:flutter/material.dart';
import '../widgets/profile_pic.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 20)
          ),
          ProfilePic(),
          Padding(
            padding: const EdgeInsets.only(top: 20)
          ),
          Text('Rifaldho Muhammad Rizki', style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),),
          Text('rifalmuhammadri@gmail.com', style: TextStyle(
            fontSize: 14.0,
          ),),
          Text('087826789043', style: TextStyle(
            fontSize: 12.0,
          ),),
          Padding(
              padding: const EdgeInsets.only(left: 30,right: 30, top: 30),
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
            padding: const EdgeInsets.only(left: 30,right: 30, top: 20),
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
            padding: const EdgeInsets.only(left: 30,right: 30, top: 20),
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
            padding: const EdgeInsets.only(left: 30,right: 30, top: 20),
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
