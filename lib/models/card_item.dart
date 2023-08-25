import 'coffee.dart';

class CardItem {
  int id;
  final Coffee coffee;
  int count;
  int size;
  num total;

  CardItem({
    required this.id,
    required this.coffee,
    required this.size,
    this.count = 1,
  }) : total = coffee.cost * count;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardItem && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() {
    return 'CardItem{id: $id, coffee: $coffee, count: $count, total: $total}';
  }
}
