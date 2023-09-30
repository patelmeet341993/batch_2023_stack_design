import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Random r=Random();
  Color? c;


  void getRandomColor(){
    int red=r.nextInt(255);
    int green=r.nextInt(255);
    int blue=r.nextInt(255);


    c=Color.fromARGB(255, red, green, blue);
    setState(() {
      
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _buildBody()));
  }


  Widget _buildBody(){
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: c,
            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/2)
          ),
        ),

        Spacer(),
        _button(),
        Spacer(),
      ],
    );
  }

  Widget _button(){
    return InkWell(
      onTap: (){
        getRandomColor();
      },
      child: Container(
        color: Colors.grey,
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Text("Click here"),
      ),
    );
  }

}
