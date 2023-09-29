import '../product_discover_screen/widgets/list_item_widget.dart';
import 'bloc/product_discover_bloc.dart';
import 'models/list_item_model.dart';
import 'models/product_discover_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:sadid_s_application2/widgets/app_bar/custom_app_bar.dart';

class ProductDiscoverScreen extends StatelessWidget {
  const ProductDiscoverScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductDiscoverBloc>(
        create: (context) => ProductDiscoverBloc(ProductDiscoverState(
            productDiscoverModelObj: ProductDiscoverModel()))
          ..add(ProductDiscoverInitialEvent()),
        child: ProductDiscoverScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(40),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_shopsie".tr)),
            body: Padding(
                padding: getPadding(left: 16, top: 5, right: 16),
                child: BlocSelector<ProductDiscoverBloc, ProductDiscoverState,
                        ProductDiscoverModel?>(
                    selector: (state) => state.productDiscoverModelObj,
                    builder: (context, productDiscoverModelObj) {
                      return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(309),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(16),
                                  crossAxisSpacing: getHorizontalSize(16)),
                          physics: BouncingScrollPhysics(),
                          itemCount:
                              productDiscoverModelObj?.listItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            ListItemModel model =
                                productDiscoverModelObj?.listItemList[index] ??
                                    ListItemModel();
                            return ListItemWidget(model);
                          });
                    }))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
