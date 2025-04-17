class RestaurantModel {
  String id;
  String imagePath;
  String name;
  String description;
  double stars;
  int distance;
  List<String> categories; 

  RestaurantModel({
    required this.id,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.stars,
    required this.distance,
    required this.categories,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'imagePath': imagePath,
      'name': name,
      'description': description,
      'stars': stars,
      'distance': distance,
      'categories': categories,
    };
  }

  factory RestaurantModel.fromMap(Map<String, dynamic> map) {
    return RestaurantModel(
      id: map['id'] ?? '',
      imagePath: map['imagePath'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      stars: map['stars']?.toDouble() ?? 0.0,
      distance: map['distance']?.toInt() ?? 0,
      categories: List<String>.from(map['categories'] ?? []),
    );
  }

  @override
  String toString() {
    return 'RestaurantModel{id: $id, imgPath: $imagePath, name: $name, description: $description, stars: $stars, distance: $distance, categories: $categories}';
  }
}
