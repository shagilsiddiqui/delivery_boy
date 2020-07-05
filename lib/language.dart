import 'dart:ui';
import 'package:deliveryboy/src/repository/user_repository.dart' as userRepo;
import 'package:flutter/material.dart';
import 'package:deliveryboy/src/controllers/user_controller.dart';
import 'package:deliveryboy/src/controllers/splash_screen_controller.dart';
import 'package:deliveryboy/src/repository/user_repository.dart';

class language extends StatefulWidget {

  @override
  _languageState createState() => _languageState();
}

class _languageState extends State<language> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Your Language',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),

            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButton(
                  onPressed: () {
                    try {
                      if (currentUser.value.apiToken == null) {
                        Navigator.of(context).pushReplacementNamed('/Login');
                      } else {
                        Navigator.of(context).pushReplacementNamed('/Pages', arguments: 1);
                      }
                    } catch (e) {}
                  },
          child: Text('English',style: TextStyle(color: Colors.black),),
                  borderSide: BorderSide(color: Colors.blue),
                  shape: StadiumBorder(),
                ),
                SizedBox(
                  width: 20,
                ),
                OutlineButton(
                  onPressed: () {
      try {
        if (currentUser.value.apiToken == null) {
            Navigator.of(context).pushReplacementNamed('/Login');
          } else {
            Navigator.of(context).pushReplacementNamed('/Pages', arguments: 1);
          }
        } catch (e) {}
                  },
                  child: Text('Swedish',style: TextStyle(color: Colors.black),),
                  borderSide: BorderSide(color: Colors.blue),
                  shape: StadiumBorder(),
                ),




              ],
            )
          ],
        ),
      ),
    );
  }
}
