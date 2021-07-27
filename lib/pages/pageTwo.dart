import 'package:example/models/httpExampleJsonModel2.dart';
import 'package:example/providers/childProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChildProvider childProvider = Provider.of<ChildProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("HttpExample2"),),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                child: Text(childProvider.data.name ?? "")
              ),
              Column(
                children: childProvider.data.childModel?.map<Widget>(
                  (e) => Column(
                    children: [
                      Text(e.email),
                      Text(e.edu),
                      Text(e.cafe)
                    ],
                  )
                ).toList() ?? [Container()]
              ),
            ],
          ),
        )
    );
  }
}
