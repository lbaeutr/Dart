class Tareas {
  // Lista privada para almacenar las tareas
  List<String> _tareas = [];

  // Getter para acceder a la lista de tareas
  List<String> get tareas => _tareas;

  // Método para agregar una tarea a la lista
  void agregarTarea(String tarea) {
    _tareas.add(tarea);
  }

  // Método para mostrar todas las tareas
  void mostrarTareas() {
    print('Tareas:');
    _tareas.forEach((tarea) {
      print('- $tarea');
    });
  }
}