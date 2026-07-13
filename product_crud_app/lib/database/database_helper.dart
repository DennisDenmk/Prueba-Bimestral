import 'package:hive_flutter/hive_flutter.dart';
import '../models/product.dart';

/// Nombre del box (equivale a la tabla en SQLite)
const _boxName = 'products';

class DatabaseHelper {
  DatabaseHelper._();
  static final DatabaseHelper instance = DatabaseHelper._();

  Box get _box => Hive.box(_boxName);

  // ── CRUD ──────────────────────────────────────────────

  /// CREATE: inserta un producto y devuelve su id generado
  Future<int> insert(Product product) async {
    return await _box.add(product.toMap());
  }

  /// READ: devuelve todos los productos ordenados por id descendente
  List<Product> queryAllRows() {
    return _box.keys
        .map((key) => Product.fromMap(key as int, _box.get(key)))
        .toList()
      ..sort((a, b) => (b.id ?? 0).compareTo(a.id ?? 0));
  }

  /// UPDATE: actualiza el producto con el mismo id
  Future<void> update(Product product) async {
    await _box.put(product.id, product.toMap());
  }

  /// DELETE: elimina el producto por id
  Future<void> delete(int id) async {
    await _box.delete(id);
  }
}
