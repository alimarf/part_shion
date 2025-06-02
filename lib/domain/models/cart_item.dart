import 'package:flutter_landing_page/domain/models/product_model.dart';

class CartItem {
  final Product product;
  int quantity;
  final String selectedSize;

  CartItem({
    required this.product,
    this.quantity = 1,
    this.selectedSize = 'M',
  });

  double get totalPrice => product.price * quantity;

  CartItem copyWith({
    Product? product,
    int? quantity,
    String? selectedSize,
  }) {
    return CartItem(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      selectedSize: selectedSize ?? this.selectedSize,
    );
  }
}
