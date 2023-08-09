part of 'homescreen_cubit.dart';

@immutable
abstract class HomescreenState {}

class HomescreenInitial extends HomescreenState {}

class HomescreenLoading extends HomescreenState {}

class HomescreenLoaded extends HomescreenState {
  final List<ProductContainer> products;
  HomescreenLoaded(this.products);
}

class HomescreenError extends HomescreenState {
  final String errorMessage;

  HomescreenError(this.errorMessage);
}
