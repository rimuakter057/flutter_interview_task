

import '../../../ business_logic/models/product_model.dart';
import '../../../ business_logic/repositories/product_repository.dart';

class OrderRepository {
  final ProductRepository _repo = ProductRepository();

  Future<List<Product>> getOrders() => _repo.fetchProducts();
}
