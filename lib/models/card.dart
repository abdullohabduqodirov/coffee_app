import 'card_item.dart';

class Cards {
  int id;
  List<CardItem> item;
  num summa;

  Cards({
    required this.id,
    required this.item,
    required this.summa,
  });


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Cards && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() {
    return 'Card{id: $id, item: $item, summa: $summa}';
  }
}
