import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../ business_logic/models/product_model.dart';
import '../data/order_repository.dart';


final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  return OrderRepository();
});

final orderListProvider = FutureProvider<List<Product>>((ref) async {
  final repo = ref.read(orderRepositoryProvider);
  return repo.getOrders();
});
