import 'package:example/pages/mainPage.dart';
import 'package:example/providers/mainProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(Sys());

class Sys extends StatelessWidget {
  const Sys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainProvider>(create: (BuildContext context) => MainProvider()),
      ],
      child: MaterialApp(
        home: MainPage(),
      )
    );
  }
}
