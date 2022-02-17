import 'package:flutter/material.dart'; //widget do android
import 'package:projeto_lista/pages/home_page.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //retirar o banner debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
      ), //trocando a cor do appBar
      home: HomePage(),
    );
  }
}
