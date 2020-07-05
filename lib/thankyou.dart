import 'package:flutter/material.dart';
import 'package:deliveryboy/generated/i18n.dart';
import 'package:deliveryboy/src/controllers/user_controller.dart';
import 'package:deliveryboy/src/elements/BlockButtonWidget.dart';
import 'package:deliveryboy/src/helpers/app_config.dart' as config;
import 'package:mvc_pattern/mvc_pattern.dart';

class Thankyou extends StatefulWidget {
  @override
  _ThankyouState createState() => _ThankyouState();
}

class _ThankyouState extends StateMVC<Thankyou> {
  UserController _con;

  _ThankyouState() : super(UserController()) {
    _con = controller;
  }
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: _con.scaffoldKey,
        resizeToAvoidBottomPadding: false,
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Positioned(
              top: 0,
              child: Container(
                width: config.App(context).appWidth(100),
                height: config.App(context).appHeight(37),
                decoration: BoxDecoration(color: Theme.of(context).accentColor),
              ),
            ),
            Positioned(
              top: config.App(context).appHeight(37) - 120,
              child: Container(
                width: config.App(context).appWidth(84),
                height: config.App(context).appHeight(37),
                child: Text(
                  'Thank you!',
                  style: Theme.of(context).textTheme.display3.merge(TextStyle(color: Theme.of(context).primaryColor)),
                ),
              ),
            ),
            Positioned(
              top: config.App(context).appHeight(37) - 50,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 50,
                        color: Theme.of(context).hintColor.withOpacity(0.2),
                      )
                    ]),
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 27),
                width: config.App(context).appWidth(88),
//              height: config.App(context).appHeight(55),
                child: Form(
                  key: _con.loginFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        //width: config.App(context).appWidth(84),
                        //height: config.App(context).appHeight(37),
                        child: Text(
                          'Thank you for Registration!\n Your Document verification is in process\n Kindly wait for 4-5 Days!',
                          style: Theme.of(context).textTheme.display3.merge(TextStyle(color:Colors.black87)),
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: <Widget>[
                          BlockButtonWidget(
                            text: Text(
                              'Submit',
                              style: TextStyle(color: Theme.of(context).primaryColor),
                            ),
                            color: Theme.of(context).accentColor,
                            onPressed: () {
                             // _con.register();
                              Navigator.of(context).pushReplacementNamed('/Login');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
