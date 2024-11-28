
class GenerosMusicales {
  final Set<String> _generos = {};  // Set vacío

  // Método para agregar un género
  void agregarGenero(String genero) {
    if (_generos.length >= 5) {
      print("Error: No puedes añadir más de 5 géneros favoritos.");
    } else {
      if (_generos.add(genero)) {
        print("Género '$genero' añadido.");
      } else {
        print("El género '$genero' ya está en la lista.");
      }
    }
  }

  // Obtener la lista de géneros
  Set<String> get generos => _generos;
}
