
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddArticulo extends StatefulWidget {
  const AddArticulo({super.key});
  static String RUTES = "/add";

  @override
  State<AddArticulo> createState() => _AddArticuloState();
}

class _AddArticuloState extends State<AddArticulo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carrito de Compras")),
      body: Container(child: Text("hola"),),
    );
  }
}