import 'package:flutter/material.dart';
import 'package:deliveryboy/generated/i18n.dart';
import 'package:deliveryboy/src/controllers/user_controller.dart';
import 'package:deliveryboy/src/elements/BlockButtonWidget.dart';
import 'package:deliveryboy/src/helpers/app_config.dart' as config;
import 'package:mvc_pattern/mvc_pattern.dart';




class UploadDocument extends StatefulWidget {
  @override
  _UploadDocumentState createState() => _UploadDocumentState();
}

class _UploadDocumentState extends StateMVC<UploadDocument> {
  UserController _con;

  _UploadDocumentState() : super(UserController()) {
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
                    new ListTile(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/upload');
                      },
                      title: new Text('Driver Photograph'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    new ListTile(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/upload');
                      },
                      title: new Text('Driver License'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    new ListTile(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/upload');
                      },
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: new Text('Vechile Registration Certificate'),
                    ),
                    new ListTile(
                      onTap: (){},
                      title: new Text('Insurance'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    new ListTile(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/upload');
                      },
                      title: new Text('Bank Details'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    SizedBox(
                      height: 30,
                    ),
//                    Row(
//                      children: <Widget>[
//                        BlockButtonWidget(
//                          text: Text(
//                            'Continue',
//                            style: TextStyle(color: Theme.of(context).primaryColor),
//                          ),
//                          color: Theme.of(context).accentColor,
//                          onPressed: () {
//                            Navigator.of(context).pushReplacementNamed('/upload');
//                          },
//                        ),
//                      ],
//                    )
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

