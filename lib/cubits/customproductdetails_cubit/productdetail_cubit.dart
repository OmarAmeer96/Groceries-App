import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'productdetail_state.dart';

class ProductdetailCubit extends Cubit<ProductdetailState> {
  ProductdetailCubit() : super(ProductdetailInitial());

  int quantity = 1;
  bool isFavorite = false;

  void increaseQuantity() {
    quantity++;
    emit(ProductdetailIncrementState());
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      quantity--;
    }
    emit(ProductdetailDecrementState());
  }

  Future<void> showLoading() async {
    emit(ProductdetailMainButtonLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(ProductdetailMainButtonSuccessState(
        successMessage: "This item had been added to Basket"));
  }

  void toggleFavorite() {
    isFavorite = !isFavorite;
    emit(ProductdetailToggleFavoriteState(isFavorite: isFavorite));
    if (isFavorite) {
      emit(ProductdetailFavoriteAddedState());
    } else {
      emit(ProductdetailFavoriteRemovedState());
    }
  }
}
