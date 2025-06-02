import 'package:get/get.dart';
import '../../domain/models/cart_item.dart';
import '../../domain/models/product_model.dart';

class CartController extends GetxController {
  final _cartItems = <CartItem>[].obs;
  
  // Get cart items list
  List<CartItem> get items => _cartItems.toList();
  
  // Get total number of items in cart
  int get itemCount => _cartItems.fold(0, (sum, item) => sum + item.quantity);
  
  // Get total price of all items in cart
  double get totalPrice => _cartItems.fold(0, (sum, item) => sum + item.totalPrice);
  
  // Add item to cart with size
  void addItem(Product product, {String size = 'M'}) {
    final existingIndex = _cartItems.indexWhere(
      (item) => item.product.id == product.id && item.selectedSize == size,
    );
    
    if (existingIndex >= 0) {
      // Item with same size exists, increment quantity
      _cartItems[existingIndex] = _cartItems[existingIndex].copyWith(
        quantity: _cartItems[existingIndex].quantity + 1,
      );
    } else {
      // Add new item with selected size
      _cartItems.add(CartItem(
        product: product,
        selectedSize: size,
      ));
    }
    
    // Show success message
    Get.snackbar(
      'Added to Cart',
      '${product.name} has been added to your cart',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }
  
  // Remove item from cart
  void removeItem(CartItem cartItem) {
    _cartItems.removeWhere((item) => item.product.id == cartItem.product.id);
  }
  
  // Update item quantity and size
  void updateQuantity(Product product, int quantity, {String? size}) {
    if (quantity <= 0) {
      removeItem(CartItem(product: product, selectedSize: size ?? 'M'));
      return;
    }
    
    final existingIndex = _cartItems.indexWhere(
      (item) => item.product.id == product.id && item.selectedSize == (size ?? item.selectedSize),
    );
    
    if (existingIndex >= 0) {
      _cartItems[existingIndex] = _cartItems[existingIndex].copyWith(
        quantity: quantity,
        selectedSize: size ?? _cartItems[existingIndex].selectedSize,
      );
    }
  }
  
  // Clear cart
  void clearCart() {
    _cartItems.clear();
  }
  
  // Check if product is in cart
  bool isInCart(Product product) {
    return _cartItems.any((item) => item.product.id == product.id);
  }
  
  // Get quantity of a product in cart
  int getProductQuantity(Product product) {
    final item = _cartItems.firstWhereOrNull((item) => item.product.id == product.id);
    return item?.quantity ?? 0;
  }
}
