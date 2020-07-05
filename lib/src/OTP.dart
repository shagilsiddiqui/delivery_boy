import 'package:flutter/material.dart';
import 'package:deliveryboy/generated/i18n.dart';
import 'package:deliveryboy/src/controllers/user_controller.dart';
import 'package:deliveryboy/src/elements/BlockButtonWidget.dart';
import 'package:deliveryboy/src/helpers/app_config.dart' as config;
import 'package:mvc_pattern/mvc_pattern.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends StateMVC<OTP> {
  UserController _con;

  _OTPState() : super(UserController()) {
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
                  'OTP',
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
                          'One Time Password is sent to your\n registered number,Kindly put it in the box below! and press submit',
                          style: Theme.of(context).textTheme.display3.merge(TextStyle(color:Colors.black87)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        //onSaved: (input) => _con.user.email = input,
                        //validator: (input) => input.length != 6 ?'should_be_equal_to_6 ': null,
                        decoration: InputDecoration(
                          labelText: 'OTP',
                          labelStyle: TextStyle(color: Theme.of(context).accentColor),
                          contentPadding: EdgeInsets.all(12),
                          hintText: '1234567',
                          hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                          prefixIcon: Icon(Icons.call, color: Theme.of(context).accentColor),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.5))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
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
                              Navigator.of(context).pushReplacementNamed('/document');
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
