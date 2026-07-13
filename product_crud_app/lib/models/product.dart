class Product {
  int? id; // clave de Hive (se asigna al insertar)
  String name;
  String description;
  double price;
  int stock;

  Product({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
  });

  /// Convierte a Map para guardar en Hive
  Map<String, dynamic> toMap() => {
        'name': name,
        'description': description,
        'price': price,
        'stock': stock,
      };

  /// Construye un Product desde un Map de Hive
  factory Product.fromMap(int key, Map<dynamic, dynamic> map) => Product(
        id: key,
        name: map['name'] as String,
        description: map['description'] as String,
        price: (map['price'] as num).toDouble(),
        stock: map['stock'] as int,
      );
}
