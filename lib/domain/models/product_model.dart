class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> categories;
  final bool isNewArrival;
  final double? discount;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.categories,
    this.isNewArrival = false,
    this.discount,
  });

  // Sample data for demonstration
  static List<Product> getNewArrivals() {
    return [
      Product(
        id: '1',
        name: 'Floral Summer Dress',
        description: 'Lightweight floral dress perfect for summer days',
        price: 89.99,
        imageUrl: 'https://images.unsplash.com/photo-1572804013309-59a88b7e92f1?q=80&w=1000&auto=format&fit=crop',
        categories: ['Women'],
        isNewArrival: true,
        discount: 15,
      ),
      Product(
        id: '2',
        name: 'Classic Denim Jacket',
        description: 'Timeless denim jacket for any casual occasion',
        price: 129.99,
        imageUrl: 'https://images.unsplash.com/photo-1551028719-00167d1f07bb?q=80&w=1000&auto=format&fit=crop',
        categories: ['Men', 'Women'],
        isNewArrival: true,
      ),
      Product(
        id: '3',
        name: 'Leather Crossbody Bag',
        description: 'Elegant leather bag for your daily essentials',
        price: 149.99,
        imageUrl: 'https://images.unsplash.com/photo-1590874103328-eac38a683ce7?q=80&w=1000&auto=format&fit=crop',
        categories: ['Accessories', 'Women'],
        isNewArrival: true,
      ),
      Product(
        id: '4',
        name: 'Running Shoes',
        description: 'High-performance running shoes for athletes',
        price: 129.99,
        imageUrl: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/skwgyqrbfzhu6uyeh0gg/air-max-270-mens-shoes-KkLcGR.png',
        categories: ['Men', 'Women'],
        isNewArrival: true,
      ),
      Product(
        id: '5',
        name: 'Yoga Pants',
        description: 'Comfortable and stretchy yoga pants',
        price: 69.99,
        imageUrl: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5c534955-14a7-4d03-b3d6-3aa93ebdfd48/sportswear-club-fleece-womens-high-waisted-oversized-fleece-pants-1qPzG1.png',
        categories: ['Women'],
        isNewArrival: true,
        discount: 20,
      ),
    ];
  }

  // Get trending products
  static List<Product> getTrending() {
    return [
      Product(
        id: 't1',
        name: 'Air Max 270',
        description: 'Nike Air Max 270 - Iconic style meets modern comfort',
        price: 159.99,
        imageUrl: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/skwgyqrbfzhu6uyeh0gg/air-max-270-mens-shoes-KkLcGR.png',
        categories: ['Men', 'Women'],
        isNewArrival: false,
        discount: 10,
      ),
      Product(
        id: 't2',
        name: 'Nike Sportswear Tech Fleece',
        description: 'Lightweight and warm fleece for everyday wear',
        price: 89.99,
        imageUrl: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5c534955-14a7-4d03-b3d6-3aa93ebdfd48/sportswear-club-fleece-womens-high-waisted-oversized-fleece-pants-1qPzG1.png',
        categories: ['Men', 'Women'],
        isNewArrival: false,
      ),
      Product(
        id: 't3',
        name: 'Air Force 1',
        description: 'The classic white sneaker that changed the game',
        price: 99.99,
        imageUrl: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/sm7n3jqlqnywrhdzoj0r/air-force-1-07-lv8-mens-shoes-BDq1jQ.png',
        categories: ['Men', 'Women', 'Kids'],
        isNewArrival: false,
        discount: 15,
      ),
      Product(
        id: 't4',
        name: 'Nike Dri-FIT T-Shirt',
        description: 'Moisture-wicking fabric keeps you dry and comfortable',
        price: 29.99,
        imageUrl: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5c534955-14a7-4d03-b3d6-3aa93ebdfd48/sportswear-club-fleece-womens-high-waisted-oversized-fleece-pants-1qPzG1.png',
        categories: ['Men'],
        isNewArrival: false,
      ),
    ];
  }
}
