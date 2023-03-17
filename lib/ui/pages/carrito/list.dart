import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaArticulos extends StatefulWidget {
  const ListaArticulos({super.key});
  static String RUTES = "/listArd";
  @override
  State<ListaArticulos> createState() => _ListaArticulosState();
}

class _ListaArticulosState extends State<ListaArticulos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Articulos"),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              width: 50,
              height: 50,
              color: Colors.blue,
              child: Center(child: Text("$index")),
            );
          }),
    );
  }
}
