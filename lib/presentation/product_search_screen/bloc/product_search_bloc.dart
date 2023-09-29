import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/list1_item_model.dart';
import 'package:sadid_s_application2/presentation/product_search_screen/models/product_search_model.dart';
part 'product_search_event.dart';
part 'product_search_state.dart';

/// A bloc that manages the state of a ProductSearch according to the event that is dispatched to it.
class ProductSearchBloc extends Bloc<ProductSearchEvent, ProductSearchState> {
  ProductSearchBloc(ProductSearchState initialState) : super(initialState) {
    on<ProductSearchInitialEvent>(_onInitialize);
  }

  List<List1ItemModel> fillList1ItemList() {
    return List.generate(6, (index) => List1ItemModel());
  }

  _onInitialize(
    ProductSearchInitialEvent event,
    Emitter<ProductSearchState> emit,
  ) async {
    emit(state.copyWith(
      searchoneController: TextEditingController(),
    ));
    emit(state.copyWith(
        productSearchModelObj: state.productSearchModelObj?.copyWith(
      list1ItemList: fillList1ItemList(),
    )));
  }
}
