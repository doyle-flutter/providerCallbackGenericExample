import 'dart:convert';
import 'package:example/models/HttpExampleJsonModel2.dart';
import 'package:example/repos/requestLogic.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ChildProvider with ChangeNotifier{
  RequestLogic _requestLogic = RequestLogic();

  HttpExampleJsonModel2 _data = HttpExampleJsonModel2.init();
  HttpExampleJsonModel2 get data => this._data;
  set data(HttpExampleJsonModel2 data){
    this._data = data;
    this.notifyListeners();
  }

  ChildProvider(){
    Future.microtask(_reqGet);
  }

  Future<void> _reqGet() async => await _requestLogic.reqGet<void>("/8732a00538430e2a4bb6ed104a8284c5/raw/031d622f0d0fca6bb10b2da3d1ef88da2dabc4d9/httpExampleJson2.json", (http.Response _res){
    Map<String, dynamic> _result = json.decode(_res.body);
    this.data = HttpExampleJsonModel2.toJson(_result);
  });
}