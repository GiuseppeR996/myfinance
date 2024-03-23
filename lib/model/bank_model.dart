import 'package:flutter/material.dart';

class BankModel extends ChangeNotifier {
  final List<Item> _items = [
    Item(name: 'tutti i conti', price: 0),
  ];

  dynamic get fullPrice => _items.fold(0, (total, item) => total + item.price);
  dynamic get totalPrice => _items.fold(0, (total, item) => total + item.price);
  String get name => _items.fold('', (name, item) => item.name);
  int get price => _items.fold(0, (price, item) => item.price);

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}

class Item {
  final String name;
  final int price;

  Item({
    required this.name,
    required this.price,
  });
}
