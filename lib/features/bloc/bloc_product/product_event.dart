part of 'product_bloc.dart';

@immutable
sealed class ProductEvent {}

class ProductFetch extends ProductEvent {}

class ProductCategory extends ProductEvent {
  final String category;

  ProductCategory(this.category);
}
