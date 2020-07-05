import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deliveryboy/generated/i18n.dart';
import 'package:deliveryboy/src/controllers/user_controller.dart';
import 'package:deliveryboy/src/elements/BlockButtonWidget.dart';
import 'package:deliveryboy/src/helpers/app_config.dart' as config;
import 'package:mvc_pattern/mvc_pattern.dart';




class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends StateMVC<Upload> {
  UserController _con;

  _UploadState() : super(UserController()) {
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
                  'Upload your Documents Here',
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
                child:Column(
                  children: <Widget>[
                   Container(
                     height: 100,
                     width: 100,
                     child: Image.asset('assets/img/document_icon.png',fit: BoxFit.cover,),
                   ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: BlockButtonWidget(
                            text: Text(
                              'Upload',
                              style: TextStyle(color: Theme.of(context).primaryColor),
                            ),
                            color: Colors.greenAccent,
                            onPressed: () {
                             // _con.register();
                              //Navigator.of(context).pushReplacementNamed('/Pages', arguments: 2);
                              Navigator.of(context).pushReplacementNamed('/thanks');
                            },
                          ),
                        ),
//                        Expanded(
//                          child: BlockButtonWidget(
//                            text: Text(
//                              'Scan',
//                              style: TextStyle(color: Theme.of(context).primaryColor),
//                            ),
//                            color: Colors.blueAccent,
//                            onPressed: () {
//                             // _con.register();
//                              //Navigator.of(context).pushReplacementNamed('/Pages', arguments: 2);
//                            },
//                          ),
//                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: BlockButtonWidget(
                        text: Text(
                          'Back',
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        color: Theme.of(context).accentColor,
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/UploadDocument');
                        },
                      ),
                    ),

                  ],
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}

