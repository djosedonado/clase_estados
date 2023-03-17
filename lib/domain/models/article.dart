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
  "vrUnitario": 849.900
};

List<Articulo> listaOriginal = [
  Articulo.Crear(art),
  Articulo.Crear(art),
  Articulo.Crear(art),
  Articulo.Crear(art),
  Articulo.Crear(art),
  Articulo.Crear(art),
];
