import 'dart:developer';

import 'package:deliveryboy/src/helpers/helper.dart';
import 'package:deliveryboy/src/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'src/repository/user_repository.dart' as userRepo;


Future<void> sendLocation(order_id) async{
  log("rec");
  Location location = new Location();
  LocationData _locationData;
  _locationData = await location.getLocation();
  log("Loc");
  print(_locationData.toString());
  Uri uri = Helper.getUri('driver/api/updateLocation/'+order_id.toString() );
  Map<String, dynamic> _queryParams = {};
  User _user = userRepo.currentUser.value;
  String api = _user.apiToken;
  _queryParams['api_token'] = _user.apiToken;
  uri = uri.replace(queryParameters: _queryParams);
  log("URL");
  print(uri);
  Map<String, String> loc= {
    "lat": _locationData.latitude.toString(),
    "long": _locationData.longitude.toString()


  } ;
  http.Response res = await http.put(uri , body:loc);
  log(res.statusCode.toString());
}