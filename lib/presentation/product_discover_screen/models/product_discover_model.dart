// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'list_item_model.dart';

/// This class defines the variables used in the [product_discover_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDiscoverModel extends Equatable {
  ProductDiscoverModel({this.listItemList = const []});

  List<ListItemModel> listItemList;

  ProductDiscoverModel copyWith({List<ListItemModel>? listItemList}) {
    return ProductDiscoverModel(
      listItemList: listItemList ?? this.listItemList,
    );
  }

  @override
  List<Object?> get props => [listItemList];
}
