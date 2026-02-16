import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final List<String> categories = const [
    'All',
    'Running',
    'Basketball',
    'Lifestyle',
    'Training',
  ];

  final List<Product> products = const [
    Product(
      name: 'Air Zoom Pulse',
      category: 'Running',
      price: 129.00,
      accentColor: Color(0xFFEDE7F6),
    ),
    Product(
      name: 'Court Vision',
      category: 'Basketball',
      price: 99.00,
      accentColor: Color(0xFFE8F5E9),
    ),
    Product(
      name: 'Street Flex',
      category: 'Lifestyle',
      price: 119.00,
      accentColor: Color(0xFFE3F2FD),
    ),
    Product(
      name: 'Metcon Core',
      category: 'Training',
      price: 139.00,
      accentColor: Color(0xFFFFF3E0),
    ),
    Product(
      name: 'Zoom Elevate',
      category: 'Running',
      price: 149.00,
      accentColor: Color(0xFFF3E5F5),
    ),
    Product(
      name: 'Legacy 96',
      category: 'Lifestyle',
      price: 109.00,
      accentColor: Color(0xFFE0F7FA),
    ),
  ];

  String _selectedCategory = 'All';

  String get selectedCategory => _selectedCategory;

  List<Product> get filteredProducts {
    if (_selectedCategory == 'All') {
      return products;
    }
    return products
        .where((product) => product.category == _selectedCategory)
        .toList();
  }

  void selectCategory(String category) {
    if (_selectedCategory == category) {
      return;
    }
    _selectedCategory = category;
    notifyListeners();
  }
}

class Product {
  final String name;
  final String category;
  final double price;
  final Color accentColor;

  const Product({
    required this.name,
    required this.category,
    required this.price,
    required this.accentColor,
  });
}
