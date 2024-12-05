import 'package:bloc/bloc.dart';
import 'package:arcs_slicing/data/dataresource/product_remote_datasource.dart';
import 'package:arcs_slicing/data/model/response/product_response_model.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDataSource productRemoteDataSource;

  List<Product> products = [];
  ProductBloc(this.productRemoteDataSource) : super(ProductInitial()) {
    on<ProductFetch>((event, emit) async {
      emit(ProductLoading());
      final response = await productRemoteDataSource.getProducts();
      response.fold(
          (l) => emit(ProductFailed(l)),
          (r) {
            products = r.product;
            emit(ProductSuccess(r.product),);
          }
        
      );
    });

    on<ProductCategory>((event, emit) async {
      emit(ProductLoading());
      final response = await productRemoteDataSource.getProducts();
      final filteredProducts = event.category == 'all' ? products : products
          .where((product) => product.category == event.category)
          .toList();
      response.fold(
          (l) => emit(ProductFailed(l)),
          (r) => emit(ProductSuccess(filteredProducts)));
    });
  }
}
