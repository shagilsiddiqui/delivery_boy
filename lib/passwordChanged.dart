import 'package:flutter/material.dart';
import 'package:deliveryboy/src/elements/BlockButtonWidget.dart';
class PasswordChanged extends StatefulWidget {
  @override
  _PasswordChangedState createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        alignment: AlignmentDirectional.center,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient:
                      LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
                        Colors.green.withOpacity(1),
                        Colors.green.withOpacity(0.2),
                      ])),
                  child: Icon(
                    Icons.check,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    size: 90,
                  ),
                ),
                Positioned(
                  right: -30,
                  bottom: -50,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(150),
                    ),
                  ),
                ),
                Positioned(
                  left: -20,
                  top: -50,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(150),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Opacity(
              opacity: 0.4,
              child: Text(
                'Password Chnaged Succefully',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.display2.merge(TextStyle(fontWeight: FontWeight.w300)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BlockButtonWidget(
                  text: Text(
                    'Continue',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/Login');
                  },
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
