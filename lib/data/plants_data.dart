/*import 'package:ui_13/models/plant.dart';

final List<Plant> plants = [
  Plant(
    name: 'Aloe Vera',
    scientificName: 'Aloe barbadensis miller',
    imagePath: 'assets/images/aloevera.jpg',
    location: 'África',
    type: 'Suculenta',
    isMedicinal: true,
    price: 49.99,
    category: 'Interior',
    description: 'Planta suculenta conocida por sus propiedades medicinales.',
  ),
  Plant(
    name: 'Menta',
    scientificName: 'Mentha',
    imagePath: 'assets/images/image2.jpg',
    location: 'Europa',
    type: 'Herbácea',
    isMedicinal: true,
    price: 49.99,
    category: 'Interior',
    description: 'Planta suculenta conocida por sus propiedades medicinales.',
  ),
  Plant(
    name: 'Cactus',
    scientificName: 'Cactaceae',
    imagePath: 'assets/images/image3.jpg',
    location: 'América',
    type: 'Suculenta',
    isMedicinal: false,
    price: 49.99,
    category: 'Interior',
    description: 'Planta suculenta conocida por sus propiedades medicinales.',
  ),
  // Agrega más plantas aquí
];

final List<Plant> popularPlants = [
  // algunos datos de ejemplo
  Plant(
    name: 'Lavanda',
    scientificName: 'Lavandula',
    imagePath: 'assets/images/lavanda.jpg',
    location: 'Mediterráneo',
    type: 'Herbácea',
    isMedicinal: true,
    price: 49.99,
    category: 'Interior',
    description: 'Planta suculenta conocida por sus propiedades medicinales.',
  ),
  Plant(
    name: 'Helecho',
    scientificName: 'Pteridophyta',
    imagePath: 'assets/images/helecho.jpg',
    location: 'Bosques húmedos',
    type: 'Follaje',
    isMedicinal: false,
    price: 49.99,
    category: 'Interior',
    description: 'Planta suculenta conocida por sus propiedades medicinales.',
  ),
];*/

import '../models/plant.dart';

final List<Plant> plants = List.generate(100, (index) {
  // Datos de ejemplo
  final commonNames = [
    'Aloe Vera',
    'Lavanda',
    'Cactus',
    'Helecho',
    'Bonsai',
    'Orquídea',
    'Menta',
    'Rosal',
    'Jazmín',
    'Bambú'
  ];
  final scientific = [
    'Aloe barbadensis',
    'Lavandula angustifolia',
    'Cactaceae',
    'Pteridophyta',
    'Ficus retusa',
    'Orchidaceae',
    'Mentha',
    'Rosa',
    'Jasminum',
    'Bambusoideae'
  ];
  final categories = ['Indoor', 'Outdoor', 'Office', 'Garden'];
  final locations = ['África', 'Europa', 'América', 'Asia'];
  final types = ['Suculenta', 'Herbácea', 'Árbolito', 'Arbusto', 'Flor'];

  final i = index % commonNames.length;

  return Plant(
    name: commonNames[i] + ' ${index + 1}',
    scientificName: scientific[i],
    imagePath: 'assets/images/plant${index + 1}.jpg',
    location: locations[index % locations.length],
    type: types[index % types.length],
    isMedicinal: [true, false][index % 2],
    price: 10 + (index * 0.5),
    category: categories[index % categories.length],
    description:
        'Descripción de ejemplo para ${commonNames[i]} número ${index + 1}. Ideal para interiores y exteriores.',
  );
}).toList();

// Lista secundaria de plantas populares (10)
final List<Plant> popularPlants = List.generate(10, (i) => plants[i]);
