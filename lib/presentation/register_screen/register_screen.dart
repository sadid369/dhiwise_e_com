import 'bloc/register_bloc.dart';
import 'models/register_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';
import 'package:sadid_s_application2/core/utils/validation_functions.dart';
import 'package:sadid_s_application2/widgets/custom_elevated_button.dart';
import 'package:sadid_s_application2/widgets/custom_text_form_field.dart';
import 'package:sadid_s_application2/domain/facebookauth/facebook_auth_helper.dart';
import 'package:sadid_s_application2/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterBloc>(
        create: (context) =>
            RegisterBloc(RegisterState(registerModelObj: RegisterModel()))
              ..add(RegisterInitialEvent()),
        child: RegisterScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 15, top: 98, right: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("msg_hello_register".tr,
                              style: theme.textTheme.headlineSmall),
                          BlocSelector<RegisterBloc, RegisterState,
                                  TextEditingController?>(
                              selector: (state) => state.firstNameController,
                              builder: (context, firstNameController) {
                                return CustomTextFormField(
                                    controller: firstNameController,
                                    margin: getMargin(left: 1, top: 40),
                                    hintText: "lbl_first_name".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyMediumBluegray40001,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    });
                              }),
                          BlocSelector<RegisterBloc, RegisterState,
                                  TextEditingController?>(
                              selector: (state) => state.lastNameController,
                              builder: (context, lastNameController) {
                                return CustomTextFormField(
                                    controller: lastNameController,
                                    margin: getMargin(left: 1, top: 12),
                                    hintText: "lbl_last_name".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyMediumBluegray40001,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    });
                              }),
                          BlocSelector<RegisterBloc, RegisterState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    margin: getMargin(left: 1, top: 12),
                                    hintText: "lbl_email".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyMediumBluegray40001,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          BlocSelector<RegisterBloc, RegisterState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    controller: passwordController,
                                    margin: getMargin(left: 1, top: 12),
                                    hintText: "lbl_password".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyMediumBluegray40001,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: true);
                              }),
                          CustomElevatedButton(
                              text: "lbl_register".tr,
                              margin: getMargin(left: 1, top: 24),
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumLatoWhiteA700Medium),
                          Padding(
                              padding: getPadding(left: 1, top: 38),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 8),
                                        child: SizedBox(
                                            width: getHorizontalSize(112),
                                            child: Divider(
                                                color: appTheme.indigo50))),
                                    Text("lbl_or_login_with".tr,
                                        style:
                                            CustomTextStyles.bodyMediumGray600),
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 8),
                                        child: SizedBox(
                                            width: getHorizontalSize(111),
                                            child: Divider(
                                                color: appTheme.indigo50)))
                                  ])),
                          Padding(
                              padding: getPadding(left: 1, top: 21),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(168),
                                        padding:
                                            getPadding(top: 15, bottom: 15),
                                        decoration: AppDecoration.outlineGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFacebookic,
                                            height: getSize(26),
                                            width: getSize(26),
                                            alignment: Alignment.center,
                                            onTap: () {
                                              onTapImgFacebookicone(context);
                                            })),
                                    Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(168),
                                        padding:
                                            getPadding(top: 15, bottom: 15),
                                        decoration: AppDecoration.outlineGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgGoogleic,
                                            height: getSize(26),
                                            width: getSize(26),
                                            alignment: Alignment.center,
                                            onTap: () {
                                              onTapImgGoogleicone(context);
                                            }))
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 43, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style:
                                                CustomTextStyles.bodyMedium14),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "lbl_login_now".tr,
                                            style: CustomTextStyles
                                                .titleSmallMontserratPrimary)
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapImgFacebookicone(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapImgGoogleicone(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
