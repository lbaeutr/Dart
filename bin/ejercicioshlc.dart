import 'dart:io';
import 'models/generoo.dart';
import 'models/tarea.dart';
import 'models/estudiante.dart';

void main(List<String> arguments) {
  final generoo = GenerosMusicales();
  final tareas = Tareas();
  final estudiantes = Estudiantes();

  while (true) {
    // Menu
    print('\nMenú de opciones:');
    print('1. Añadir género musical');
    print('2. Ver géneros musicales');
    print('3. Añadir tarea');
    print('4. Ver tareas');
    print('5. Añadir calificación de estudiante');
    print('6. Ver calificaciones');
    print('7. Salir');

    // Leer la opción
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        // Añadir género musical
        print('Introduce el género musical:');
        String? genero = stdin.readLineSync();
        if (genero != null && genero.isNotEmpty) {
          genero = genero[0].toUpperCase() + genero.substring(1).toLowerCase();
          generoo.agregarGenero(genero);
        }
        break;

      case '2':
        // Ver géneros musicales
        print('Géneros musicales favoritos:');
        generoo.generos.forEach((genero) {
          print('- $genero');
        });
        break;

      case '3':
        // Añadir tarea
        print('Introduce la tarea:');
        String? tarea = stdin.readLineSync();
        if (tarea != null && tarea.isNotEmpty) {
          if (tareas.tareas.contains(tarea)) {
            print('La tarea ya está en la lista.');
          } else {
            tareas.agregarTarea(tarea);
          }
        }
        break;

      case '4':
        // Ver tareas
        tareas.mostrarTareas();
        break;

      case '5':
        // Añadir calificación de estudiante
        print('Introduce el nombre del estudiante:');
        String? nombre = stdin.readLineSync();
        print('Introduce la calificación para $nombre:');
        String? calificacionStr = stdin.readLineSync();
        double? calificacion = double.tryParse(calificacionStr ?? '');
        if (nombre != null && nombre.isNotEmpty && calificacion != null) {
          estudiantes.agregarCalificacion(nombre, calificacion);
        }
        break;

      case '6':
        // Ver calificaciones
        estudiantes.mostrarCalificaciones();
        break;

      case '7':

        print('¡Hasta luego!');
        return;

      default:
        print('Opción no válida, por favor ingrese una opción válida.');
    }
  }
}