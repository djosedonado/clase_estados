
import 'package:clase_estados/domain/controller/gestionarticulos.dart';
import 'package:clase_estados/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main(){
  Get.put(ComprasController());//Conectamos comprascontroller al main
  runApp(App());
}