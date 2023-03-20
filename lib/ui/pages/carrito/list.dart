import 'package:clase_estados/domain/controller/gestionarticulos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount: controlc.listaFinal.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: LimitedBox(
                maxWidth: MediaQuery.of(context).size.height,
                maxHeight: 200,
                child: Row(
                  children: [
                    LimitedBox(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 250,
                        child: Image.network(controlc.listaFinal[index].foto),
                      ),
                    ),
                    LimitedBox(
                      maxWidth: 80,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: ListView(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                                child: Text(
                                    textAlign: TextAlign.justify,
                                    controlc.listaFinal[index].detalle),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                                child: Text(
                                    "Valor ${controlc.listaFinal[index].vrUnitario}"),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    
                                  },
                                  child: Icon(Icons.add_circle),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          textAlign: TextAlign.right,
                          "${controlc.listaFinal[index].exitencia}"),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
