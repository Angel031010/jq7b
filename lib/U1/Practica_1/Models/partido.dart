class Partido {
  final String local;
  final String visitante;
  final int noTarjetasRojas;
  final int noTarjetasAmarillas;
  final String imageLocal;
  final String imageVisitante;
  final int golesLocal;
  final int golesVisitante;
  final int noRojasLocal;
  final int noRojasVisitante;
  final int noAmarillasLocal;
  final int noAmarillasVisitante;
  final bool esProximo;
  final String fecha;

  Partido(
      {required this.local,
      required this.visitante,
      required this.noTarjetasRojas,
      required this.noTarjetasAmarillas,
      required this.imageLocal,
      required this.imageVisitante,
      required this.golesLocal,
      required this.golesVisitante,
      required this.noRojasLocal,
      required this.noRojasVisitante,
      required this.noAmarillasLocal,
      required this.noAmarillasVisitante,
      required this.esProximo,
      required this.fecha});
}
