import 'package:clase_estados/domain/models/article.dart';
import 'package:get/get.dart';

/*
//Para Administrar nuestros recursos.
class ComprasController extends GetxController{
  final _counter = 0.obs;//variable observable 

  aumentar(){//podemos modificar esa variable atraves de esete metodo
    _counter.value++;
  }
}
*/
class ComprasController extends GetxController{
  Rx<List<Articulo>> listaGart = Rx<List<Articulo>>([]);
  @override
  void onInit(){
    listaGart.value = listaOriginal;
    super.onInit();
  }
  List<Articulo> get listaFinal => listaGart.value;
}