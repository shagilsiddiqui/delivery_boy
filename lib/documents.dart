import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:deliveryboy/generated/i18n.dart';
import 'package:deliveryboy/src/controllers/user_controller.dart';
import 'package:deliveryboy/src/elements/BlockButtonWidget.dart';
import 'package:deliveryboy/src/helpers/app_config.dart' as config;
import 'package:mvc_pattern/mvc_pattern.dart';
class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,
      width: 20.0,
      decoration: new BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
      ),
    );
  }
}



class Documents extends StatefulWidget {
  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends StateMVC<Documents> {
  UserController _con;

  _DocumentsState() : super(UserController()) {
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
                  'Documents Required',
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
                      leading: new MyBullet(),
                      title: new Text('Driver Photograph'),
                    ),
                    new ListTile(
                      leading: new MyBullet(),
                      title: new Text('Driver License'),
                    ),
                    new ListTile(
                      leading: new MyBullet(),
                      title: new Text('Vechile Registration Certificate'),
                    ),
                    new ListTile(
                      leading: new MyBullet(),
                      title: new Text('Insurance'),
                    ),
                    new ListTile(
                      leading: new MyBullet(),
                      title: new Text('Bank Details'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        BlockButtonWidget(
                          text: Text(
                            'Continue',
                            style: TextStyle(color: Theme.of(context).primaryColor),
                          ),
                          color: Theme.of(context).accentColor,
                          onPressed: () {
                            _con.register();
                            Navigator.of(context).pushReplacementNamed('/UploadDocument');
                          },
                        ),
                      ],
                    )
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

