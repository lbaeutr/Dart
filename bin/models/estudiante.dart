// models/estudiante.dart
class Estudiantes {
  final Map<String, double> _calificaciones = {};  // Mapa vacío

  // Método para agregar o actualizar la calificación de un estudiante
  void agregarCalificacion(String nombre, double calificacion) {
    _calificaciones[nombre] = calificacion;
    print("Calificación de $nombre añadida/actualizada: $calificacion");
  }

  // Mostrar las calificaciones de los estudiantes
  void mostrarCalificaciones() {
    if (_calificaciones.isEmpty) {
      print("No hay calificaciones disponibles.");
    } else {
      print("Calificaciones de estudiantes:");
      _calificaciones.forEach((nombre, calificacion) {
        print("$nombre: $calificacion");
      });
    }
  }
}
