class Coffee {
  String name;
  String description;
  num cost;
  String category;
  String imageUrl;

  Coffee({
    required this.name,
    required this.description,
    required this.category,
    required this.imageUrl,
    required this.cost,
  });

  @override
  String toString() {
    return 'Coffee{name: $name, description: $description, cost: $cost, category: $category, imageUrl: $imageUrl}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Coffee && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;
}
