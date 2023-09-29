import '../cart_screen/widgets/cart_item_widget.dart';
import 'bloc/cart_bloc.dart';
import 'models/cart_item_model.dart';
import 'models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:sadid_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sadid_s_application2/widgets/custom_elevated_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => CartBloc(CartState(
        cartModelObj: CartModel(),
      ))
        ..add(CartInitialEvent()),
      child: CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(64),
          leadingWidth: getHorizontalSize(39),
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenuBlack90001,
            margin: getMargin(
              left: 15,
              top: 18,
              bottom: 22,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_shopsie".tr,
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 24,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 26,
                      ),
                      child: Text(
                        "lbl_my_cart".tr.toUpperCase(),
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 26,
                      right: 16,
                    ),
                    child: BlocSelector<CartBloc, CartState, CartModel?>(
                      selector: (state) => state.cartModelObj,
                      builder: (context, cartModelObj) {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return Padding(
                              padding: getPadding(
                                top: 8.0,
                                bottom: 8.0,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(358),
                                child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray200,
                                ),
                              ),
                            );
                          },
                          itemCount: cartModelObj?.cartItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            CartItemModel model =
                                cartModelObj?.cartItemList[index] ??
                                    CartItemModel();
                            return CartItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 98,
                    ),
                    child: Divider(),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 21,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_sub_total".tr.toUpperCase(),
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Text(
                          "lbl_111_80".tr.toUpperCase(),
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 21,
                    ),
                    child: Divider(),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_pay_111_80".tr.toUpperCase(),
          margin: getMargin(
            left: 32,
            right: 32,
            bottom: 64,
          ),
        ),
      ),
    );
  }
}
