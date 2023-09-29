import 'bloc/profile_security_bloc.dart';
import 'models/profile_security_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';
import 'package:sadid_s_application2/core/utils/validation_functions.dart';
import 'package:sadid_s_application2/widgets/custom_elevated_button.dart';
import 'package:sadid_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileSecurityPage extends StatefulWidget {
  const ProfileSecurityPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileSecurityPageState createState() => ProfileSecurityPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSecurityBloc>(
      create: (context) => ProfileSecurityBloc(ProfileSecurityState(
        profileSecurityModelObj: ProfileSecurityModel(),
      ))
        ..add(ProfileSecurityInitialEvent()),
      child: ProfileSecurityPage(),
    );
  }
}

class ProfileSecurityPageState extends State<ProfileSecurityPage>
    with AutomaticKeepAliveClientMixin<ProfileSecurityPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 94,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_change_password".tr.toUpperCase(),
                        style: CustomTextStyles.labelLargeGray900_2,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "msg_current_password".tr,
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      BlocSelector<ProfileSecurityBloc, ProfileSecurityState,
                          TextEditingController?>(
                        selector: (state) => state.passwordController,
                        builder: (context, passwordController) {
                          return CustomTextFormField(
                            controller: passwordController,
                            margin: getMargin(
                              top: 14,
                            ),
                            hintText: "lbl_password".tr,
                            hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "Please enter valid password";
                              }
                              return null;
                            },
                            obscureText: true,
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "lbl_new_password".tr,
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      BlocSelector<ProfileSecurityBloc, ProfileSecurityState,
                          TextEditingController?>(
                        selector: (state) => state.newpasswordController,
                        builder: (context, newpasswordController) {
                          return CustomTextFormField(
                            controller: newpasswordController,
                            margin: getMargin(
                              top: 14,
                            ),
                            hintText: "lbl_password".tr,
                            hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "Please enter valid password";
                              }
                              return null;
                            },
                            obscureText: true,
                          );
                        },
                      ),
                      CustomElevatedButton(
                        text: "lbl_update_password".tr.toUpperCase(),
                        margin: getMargin(
                          top: 24,
                        ),
                        buttonStyle: CustomButtonStyles.fillGrayTL8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
