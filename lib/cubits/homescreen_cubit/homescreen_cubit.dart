import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../widgets/custom_product_container.dart';

part 'homescreen_state.dart';

class HomescreenCubit extends Cubit<HomescreenState> {
  final String searchQuery = ''; // Added this line

  HomescreenCubit() : super(HomescreenInitial());

  void loadInitialData() async {
    emit(HomescreenLoading());
    try {
      // Simulate loading products from a data source or any necessary setup
      final List<ProductContainer> products = [
        // Create your product objects here...
      ];

      emit(HomescreenLoaded(products));
    } catch (error) {
      emit(HomescreenError('An error occurred while loading data.'));
    }
  }

  void setSearchQuery(String query, HomescreenLoaded currentState) {
    final filteredProducts = currentState.products.where((product) {
      final lowerCaseQuery = query.toLowerCase();
      final lowerCaseProductName = product.productName.toLowerCase();
      return lowerCaseProductName.contains(lowerCaseQuery);
    }).toList();
    emit(HomescreenLoaded(filteredProducts));
  }

  void changeTab(int newIndex, HomescreenLoaded currentState) {
    emit(HomescreenLoaded(currentState.products));
  }
}
