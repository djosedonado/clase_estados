
import 'package:clase_estados/ui/auth/login.dart';
import 'package:clase_estados/ui/pages/carrito/add.dart';
import 'package:clase_estados/ui/pages/carrito/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Articulos",
      theme: ThemeData.dark(),
      home: ListaArticulos(),
      routes: {
        Login.RUTES: (context) => const Login(),
        ListaArticulos.RUTES: (context) => const ListaArticulos(),
        AddArticulo.RUTES : (context) => const AddArticulo()
      },
    );
  }
}