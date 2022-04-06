import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controller/Counter  Service/counter_service.dart';

class CounterUi extends StatelessWidget {

final counterController _controller =Get.put( counterController());

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(


        body:Center(
          child: Container(
            color: Colors.amber,

            child: Column(


            children: [
           Obx(()  {   return Text(_controller.count.toString(),style:
             TextStyle(fontSize: 50),);}),



              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: (){

                    _controller.Increment();
                  }, child: Text("Increment")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: (){
                    _controller.Decrement();

                  }, child: Text("Decrement")),
                  ElevatedButton(  style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: (){
                    _controller.Reset();

                  }, child: Text("Reset")),




                ],),

            ],
          ), ),
        )



      ),
    );
  }
}
