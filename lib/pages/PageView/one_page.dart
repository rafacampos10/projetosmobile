import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width, //largura da tela em questão
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              "Olá Mundo !",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,

              ),
            ),
          ), //
        ),
        Row(children: [
          Container(
            color: Colors.red,
            height: 100,
            width: 200,
            child: Center(
              child: Text("Container 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),

            ),
          ),
          Container(
            color: Colors.yellow,
            height: 100,
            width: 175,
            child: Center(
              child: Text("Container 2",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],)
      ],
    );
  }
}
