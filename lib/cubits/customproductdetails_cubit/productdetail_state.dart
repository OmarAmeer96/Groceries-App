part of 'productdetail_cubit.dart';

@immutable
abstract class ProductdetailState {}

class ProductdetailInitial extends ProductdetailState {}

class ProductdetailMainButtonLoadingState extends ProductdetailState {}

class ProductdetailDecrementState extends ProductdetailState {}

class ProductdetailIncrementState extends ProductdetailState {}

class ProductdetailIncrementPriceState extends ProductdetailState {}

class ProductdetailToggleFavoriteState extends ProductdetailState {
  final bool isFavorite;
  ProductdetailToggleFavoriteState({required this.isFavorite});
}

class ProductdetailFavoriteAddedState extends ProductdetailState {}

class ProductdetailFavoriteRemovedState extends ProductdetailState {}

// ignore: must_be_immutable
class ProductdetailMainButtonSuccessState extends ProductdetailState {
  String successMessage;
  ProductdetailMainButtonSuccessState({required this.successMessage}) {}
}
