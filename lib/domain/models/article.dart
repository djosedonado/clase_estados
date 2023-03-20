class Articulo {
  late String detalle;
  late String Codigo;
  late int exitencia;
  late double vrUnitario;
  late String foto;
  Articulo(
      {required this.Codigo,
      required this.detalle,
      required this.exitencia,
      required this.foto,
      required this.vrUnitario});

  factory Articulo.Crear(Map<String, dynamic> jsonMap) {
    return Articulo(
        Codigo: jsonMap['codigo'],
        detalle: jsonMap['detalle'],
        exitencia: jsonMap['exitencia'],
        foto: jsonMap['foto'],
        vrUnitario: jsonMap['vrUnitario']);
  }
}

Map<String, dynamic> art = {
  "codigo": "3191550",
  "detalle": "Note 11 8 Redmi Note 11",
  "exitencia": 20,
  "foto":
      "https://exitocol.vtexassets.com/arquivos/ids/16830448/Celular-XIAOMI-Xiaomi-Redmi-Note-11-128GB-Gris-128-GB-Gris-3191550_a.jpg?v=638139871343930000",
  "vrUnitario": 849900.0
};
Map<String, dynamic> art2 = {
  "codigo": "32191550",
  "detalle": "Samsung Galaxy A53 128GB 5G",
  "exitencia": 24,
  "foto":
      "https://tienda.claro.com.co/wcsstore/Claro/images/catalog/equipos/646x1000/70045940.jpg",
  "vrUnitario": 1710950.0
};
Map<String, dynamic> art3 = {
  "codigo": "31915534",
  "detalle": "Audífonos Nokia Clarity Earbuds Pro",
  "exitencia": 80,
  "foto":
      "https://tienda.claro.com.co/wcsstore/Claro/images/catalog/equipos/646x1000/7016853.jpg",
  "vrUnitario": 429900.0
};

List<Articulo> listaOriginal = [
  Articulo.Crear(art),
  Articulo.Crear(art2),
  Articulo.Crear(art3),
];
