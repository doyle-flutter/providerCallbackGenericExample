class HttpExampleJsonModel2{
  String? name;
  List<HttpExampleJsonModel2ChildModel>? childModel;
  HttpExampleJsonModel2({required this.name, required this.childModel});
  HttpExampleJsonModel2.init();

  factory HttpExampleJsonModel2.toJson(json) => HttpExampleJsonModel2(
    name: json["name"].toString(),
    childModel: List.of(json["contact"]).map<HttpExampleJsonModel2ChildModel>((e) => HttpExampleJsonModel2ChildModel.init(e)).toList()
  );
}

class HttpExampleJsonModel2ChildModel{
  final String email;
  final String cafe;
  final String edu;
  const HttpExampleJsonModel2ChildModel({required this.edu, required this.email, required this.cafe});
  factory HttpExampleJsonModel2ChildModel.init(json) => HttpExampleJsonModel2ChildModel(
    edu: json["edu"].toString(),
    email: json["email"].toString(),
    cafe: json["cafe"].toString()
  );
}