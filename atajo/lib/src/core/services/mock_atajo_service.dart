// lib/src/core/services/mock_atajo_service.dart
import '../../features/atajos/models/atajo_model.dart';

class MockAtajoService {
  final List<Atajo> _atajos = [
    Atajo(
      id: '1',
      title: 'Mirador Secreto en Samaipata',
      shortDescription: 'La mejor vista del codo de los Andes.',
      longDescription: 'Sube por el sendero menos conocido detrás del mercado principal para encontrar una vista panorámica impresionante, ideal para el atardecer. Pocos turistas conocen este lugar.',
      imageUrl: 'https://placehold.co/600x400/000000/FFFFFF/png?text=Samaipata', // URL de imagen de prueba
      category: 'Naturaleza',
      latitude: -18.1798,
      longitude: -63.8745,
    ),
    Atajo(
      id: '2',
      title: 'El Mejor Salteño de Sucre',
      shortDescription: 'Salteñería "El Patio", un clásico local.',
      longDescription: 'Olvídate de las cadenas turísticas. En "El Patio" encontrarás la receta tradicional que los locales aman. Pide el de carne picante, no te arrepentirás.',
      imageUrl: 'https://placehold.co/600x400/c42828/FFFFFF/png?text=Salteña',
      category: 'Comida',
      latitude: -19.0432,
      longitude: -65.2592,
    ),
    // Puedes añadir más atajos aquí
  ];

  // Método para obtener todos los atajos
  List<Atajo> getAtajos() {
    return _atajos;
  }

  // Método para obtener un atajo por su ID
  Atajo getAtajoById(String id) {
    return _atajos.firstWhere((atajo) => atajo.id == id);
  }
}