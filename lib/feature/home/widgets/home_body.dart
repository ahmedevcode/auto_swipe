import 'dart:ui';

import 'package:autoswipe/feature/home/widgets/animation_button.dart';
import 'package:flutter/material.dart';

class home_body extends StatefulWidget {
  const home_body({super.key});


  @override
  State<home_body> createState() => _home_bodyState();
}

class _home_bodyState extends State<home_body> {
  TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff5C62D4),
      appBar: AppBar(


        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings,color: Colors.white,size: 30,),
            onPressed: () {
              // Add your action when the icon is pressed
              // For example, navigate to settings page
            },
          ),
        ],
        title: Text('Auto Swipe',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
              child:
              TextButton(
                onPressed: () {
                  // Handle button press
                },
                child: Text('Edit',style: TextStyle(fontSize: 20,color: Colors.black),),
              )
          ),
          Row(
            children: [
              Container(
                  // color: Colors.cyan,
                  // height: 30,
                  // width: 30,
                  margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),

                  child: Text('PX',style: TextStyle(color:Colors.white,fontSize: 18),)),
              Container(
                //color: Colors.cyan,
                height: 30,
                width: 30,

                margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),
                child: TextField(

                  controller: _numberController,
                  keyboardType: TextInputType.number,
                  keyboardAppearance: Brightness.light,
                  decoration: InputDecoration(
                    hintText: '14',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                //  height: 30,
                //  width: 30,
                  margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),

                  child: Text('position',style: TextStyle(color:Colors.white,fontSize: 18),)),
            ],
          ),
          Row(
            children: [
              Container(
                // color: Colors.cyan,
                // height: 30,
                // width: 30,
                  margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),

                  child: Text('PX',style: TextStyle(color:Colors.white,fontSize: 18),)),
              Container(
                //color: Colors.cyan,
                height: 30,
                width: 30,

                margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),
                child: TextField(

               //   controller: _numberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '12',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                //  height: 30,
                //  width: 30,
                  margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),

                  child: Text('position',style: TextStyle(color:Colors.white,fontSize: 18),)),
            ],
          ),
          Row(
            children: [
              Container(
                // color: Colors.cyan,
                // height: 30,
                // width: 30,
                  margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),

                  child: Text('PX',style: TextStyle(color:Colors.white,fontSize: 18),)),
              Container(
                //color: Colors.cyan,
                height: 30,
                width: 30,

                margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),
                child: TextField(

                //  controller: _numberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '1',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                //  height: 30,
                //  width: 30,
                  margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),

                  child: Text('position',style: TextStyle(color:Colors.white,fontSize: 18),)),
            ],
          ),
          Row(
            children: [
              Container(
                // color: Colors.cyan,
                // height: 30,
                // width: 30,
                  margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),

                  child: Text('PX',style: TextStyle(color:Colors.white,fontSize: 18),)),
              Container(
                //color: Colors.cyan,
                height: 30,
                width: 30,

                margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),
                child: TextField(
                //  controller: _numberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '0',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                //  height: 30,
                //  width: 30,
                  margin: EdgeInsets.only(top: 0, left: 100, right: 10,bottom: 50),

                  child: Text('position',style: TextStyle(color:Colors.white,fontSize: 18),)),
            ],
          ),
          AnimatedButton(),




        ],
      ) ,



    );
  }
}
