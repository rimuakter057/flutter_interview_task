// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../models/product_model.dart';
// import '../repositories/product_repository.dart';
// import '../../core/services/product_service.dart';
//
// final productServiceProvider = Provider<ProductService>((ref) => ProductService());
//
// final productControllerProvider = StateNotifierProvider<ProductController, AsyncValue<List<Product>>>(
//       (ref) {
//     final service = ref.read(productServiceProvider);
//     final repository = ProductRepository(service);
//     return ProductController(repository);
//   },
// );
//
// class ProductController extends StateNotifier<AsyncValue<List<Product>>> {
//   final ProductRepository repository;
//
//   ProductController(this.repository) : super(const AsyncValue.loading()) {
//     fetchProducts();
//   }
//
//   Future<void> fetchProducts() async {
//     try {
//       final products = await repository.getAllProducts();
//       state = AsyncValue.data(products);
//     } catch (e, st) {
//       state = AsyncValue.error(e, st);
//     }
//   }
// }
