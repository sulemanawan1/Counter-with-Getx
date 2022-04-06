import 'dart:async';

import 'package:get/get.dart';

class counterController extends GetxController


{


RxInt count=0.obs ;






 void Increment() {

     count++;

 }

 void Decrement(){


   count--;
 }


 void Reset(){


   count.value=0 ;
 }










}