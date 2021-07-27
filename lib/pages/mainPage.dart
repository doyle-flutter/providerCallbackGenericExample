import 'package:example/pages/pageTwo.dart';
import 'package:example/providers/childProvider.dart';
import 'package:example/providers/mainProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainProvider mainProvider = Provider.of<MainProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("CallBack & Generic"),),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: mainProvider.data.toList().map<Widget>(
            (String? e) => Expanded(
              child: Container(
                child: Text(e ?? ""),
              ),
            )
          ).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send),
        onPressed: () => this._onPressed(context),
      ),
    );
  }
  Future<void> _onPressed(BuildContext context) async => await Navigator.of(context).push<void>(
    MaterialPageRoute(builder: (BuildContext context) => MultiProvider(
      providers: [
        ChangeNotifierProvider<ChildProvider>(create: (BuildContext context) => ChildProvider()),
      ],
      child: PageTwo(),
    ))
  );
}
