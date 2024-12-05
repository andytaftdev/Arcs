part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  final List<Product> products;

  ProductSuccess(this.products);
}

class ProductFailed extends ProductState {
  final String message;

  ProductFailed(this.message);
}
