part of 'productdetail_cubit.dart';

@immutable
abstract class ProductdetailState {}

class ProductdetailInitial extends ProductdetailState {}

class ProductdetailDecrementState extends ProductdetailState {}

class ProductdetailIncrementState extends ProductdetailState {}

class ProductdetailMainButtonLoadingState extends ProductdetailState {}

class ProductdetailMainButtonSuccessState extends ProductdetailState {}
