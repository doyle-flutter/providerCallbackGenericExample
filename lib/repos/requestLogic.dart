import 'package:http/http.dart' as http;

class RequestLogic{
  final String _endPoint = "https://gist.githubusercontent.com/doyle-flutter";

  Future<T> reqGet<T>(String path, T Function(http.Response _res) cb) async => cb(await http.get(Uri.parse(this._endPoint+path)));
}