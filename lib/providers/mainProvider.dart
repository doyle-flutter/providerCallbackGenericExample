import 'dart:convert';

import 'package:example/models/httpExampleJsonModel1.dart';
import 'package:example/repos/requestLogic.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class MainProvider with ChangeNotifier{
  HttpExampleJsonModel1 _data = HttpExampleJsonModel1.init();
  HttpExampleJsonModel1 get data => this._data;
  set data(HttpExampleJsonModel1 data){
    this._data = data;
    this.notifyListeners();
  }

  RequestLogic _requestLogic = RequestLogic();

  MainProvider(){
    Future.microtask(_reqGet);
  }

  Future<void> _reqGet() async => await _requestLogic.reqGet<void>("/1ebf7595244d0ea988091f48b98bd041/raw/e46abeb6d2982422c2ab5adef8b3e88402cef74a/httpExampleJson.json", (http.Response _res) {
      Map<String, dynamic> _result = json.decode(_res.body);
      this.data = HttpExampleJsonModel1.toJson(_result);
    });
}