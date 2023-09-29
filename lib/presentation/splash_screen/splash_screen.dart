import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: appTheme.whiteA700,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgSplash),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: getPadding(top: 261),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("lbl_shopsie".tr,
                                style: theme.textTheme.displayLarge),
                            Padding(
                                padding: getPadding(top: 24, bottom: 5),
                                child: Text("msg_the_best_way_to".tr,
                                    style:
                                        CustomTextStyles.bodyMediumGray6000114))
                          ])))));
    });
  }
}
