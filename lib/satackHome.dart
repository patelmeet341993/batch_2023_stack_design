import 'package:flutter/material.dart';

class StackHome extends StatefulWidget {
  const StackHome({super.key});

  @override
  State<StackHome> createState() => _StackHomeState();
}

class _StackHomeState extends State<StackHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _mainBody(),
      ),
    );
  }

  Widget _mainBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      child: Stack(

        children: [

          Container(width: double.maxFinite,
          height: 150,
          color: Colors.orange,),
          // Container(
          //   margin: EdgeInsets.only(top: 75,left: (MediaQuery.of(context).size.width/2)-75),
          //   width: 150,
          //   height: 150,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(75),
          //     color: Colors.red,
          //   ),
          //   ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
             margin: EdgeInsets.only(top: 75),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Colors.red,
              ),
            ),
          ),


          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 75),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Colors.red,
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(bottom: 75),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Colors.red,
              ),
            ),
          ),


          Positioned(
            bottom: 0,
            child: Container(width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.orange,),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 75),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Colors.red,
              ),
            ),
          ),


          Container(
            margin: EdgeInsets.only(bottom: 75),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(75),
              color: Colors.red,
            ),
          ),

          Positioned(

            right: 50,
            bottom: 50,

            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Colors.red,
              ),
            ),
          ),



        ],

      ),




    );
  }
}
