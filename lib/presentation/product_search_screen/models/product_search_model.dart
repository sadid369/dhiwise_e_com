// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'list1_item_model.dart';

/// This class defines the variables used in the [product_search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductSearchModel extends Equatable {
  ProductSearchModel({this.list1ItemList = const []});

  List<List1ItemModel> list1ItemList;

  ProductSearchModel copyWith({List<List1ItemModel>? list1ItemList}) {
    return ProductSearchModel(
      list1ItemList: list1ItemList ?? this.list1ItemList,
    );
  }

  @override
  List<Object?> get props => [list1ItemList];
}
