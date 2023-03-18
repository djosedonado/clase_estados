import 'package:clase_estados/domain/controller/gestionarticulos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ListaArticulos extends StatefulWidget {
  const ListaArticulos({super.key});
  static String RUTES = "/listArd";
  @override
  State<ListaArticulos> createState() => _ListaArticulosState();
}

class _ListaArticulosState extends State<ListaArticulos> {
  ComprasController controlc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Articulos"),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
                itemCount: controlc.listaFinal.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                child: Center(child: Text(controlc.listaFinal[index].detalle)),
              ),
            );
          }),
    );
  }
}
