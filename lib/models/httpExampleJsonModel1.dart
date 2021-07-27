class HttpExampleJsonModel1{
  String? name;
  String? url;
  String? src;
  HttpExampleJsonModel1({required this.name, required this.url, required this.src});
  factory HttpExampleJsonModel1.toJson(json) => HttpExampleJsonModel1(
    name: json["name"].toString(),
    url: json["url"].toString(),
    src: json["src"].toString()
  );
  HttpExampleJsonModel1.init();
  List<String?> toList() => [this.name, this.url, this.src];
  Map<String, String?> toMap() => {"name": this.name, "url": this.url, "src": this.src};
}