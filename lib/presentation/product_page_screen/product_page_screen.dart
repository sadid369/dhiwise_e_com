import '../product_page_screen/widgets/slider_item_widget.dart';
import 'bloc/product_page_bloc.dart';
import 'models/product_page_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:sadid_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sadid_s_application2/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPageScreen extends StatelessWidget {
  const ProductPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductPageBloc>(
        create: (context) => ProductPageBloc(
            ProductPageState(productPageModelObj: ProductPageModel()))
          ..add(ProductPageInitialEvent()),
        child: ProductPageScreen());
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
                    svgPath: ImageConstant.imgArrowleftGray90022x24,
                    margin: getMargin(left: 16, top: 12, bottom: 21),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_shopsie".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 6),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              BlocBuilder<ProductPageBloc, ProductPageState>(
                                  builder: (context, state) {
                                return CarouselSlider.builder(
                                    options: CarouselOptions(
                                        height: getVerticalSize(289),
                                        initialPage: 0,
                                        autoPlay: true,
                                        viewportFraction: 1.0,
                                        enableInfiniteScroll: false,
                                        scrollDirection: Axis.horizontal,
                                        onPageChanged: (index, reason) {
                                          state.sliderIndex = index;
                                        }),
                                    itemCount: state.productPageModelObj
                                            ?.sliderItemList.length ??
                                        0,
                                    itemBuilder: (context, index, realIndex) {
                                      SliderItemModel model = state
                                              .productPageModelObj
                                              ?.sliderItemList[index] ??
                                          SliderItemModel();
                                      return SliderItemWidget(model);
                                    });
                              }),
                              Align(
                                  alignment: Alignment.center,
                                  child: BlocBuilder<ProductPageBloc,
                                          ProductPageState>(
                                      builder: (context, state) {
                                    return Container(
                                        height: getVerticalSize(4),
                                        margin: getMargin(top: 21),
                                        child: AnimatedSmoothIndicator(
                                            activeIndex: state.sliderIndex,
                                            count: state.productPageModelObj
                                                    ?.sliderItemList.length ??
                                                0,
                                            axisDirection: Axis.horizontal,
                                            effect: ScrollingDotsEffect(
                                                spacing: 4,
                                                activeDotColor:
                                                    theme.colorScheme.primary,
                                                dotColor: appTheme.gray60001,
                                                dotHeight: getVerticalSize(4),
                                                dotWidth:
                                                    getHorizontalSize(15))));
                                  })),
                              Padding(
                                  padding: getPadding(left: 20, top: 24),
                                  child: Text("msg_print_maxi_dress".tr,
                                      style: CustomTextStyles
                                          .headlineSmallGray900)),
                              Padding(
                                  padding: getPadding(left: 20, top: 15),
                                  child: Text("lbl_99_30".tr,
                                      style: theme.textTheme.titleLarge)),
                              Padding(
                                  padding: getPadding(left: 20, top: 28),
                                  child: Text(
                                      "lbl_product_details".tr.toUpperCase(),
                                      style: theme.textTheme.titleSmall)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(356),
                                      margin: getMargin(
                                          left: 20, top: 17, right: 13),
                                      child: Text("msg_mini_dress_with".tr,
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumErrorContainer
                                              .copyWith(height: 1.50))))
                            ])))),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_add_to_cart".tr.toUpperCase(),
                margin: getMargin(left: 16, right: 16, bottom: 64))));
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
