class Alumno {
  final String nControl;
  final String nombre;
  final String apellido;
  final String carrera;

  Alumno({required this.nombre, required this.nControl, required this.carrera, required this.apellido});
}


//Si la carrera es sistemas, debe ser color verde, si no por default, las inciales deben ser nombre y apellido
//a la derecha un icono de PC