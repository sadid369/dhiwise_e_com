import 'bloc/profile_profile_info_bloc.dart';
import 'models/profile_profile_info_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';
import 'package:sadid_s_application2/core/utils/validation_functions.dart';
import 'package:sadid_s_application2/widgets/custom_elevated_button.dart';
import 'package:sadid_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileProfileInfoPage extends StatefulWidget {
  const ProfileProfileInfoPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileProfileInfoPageState createState() => ProfileProfileInfoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileProfileInfoBloc>(
      create: (context) => ProfileProfileInfoBloc(ProfileProfileInfoState(
        profileProfileInfoModelObj: ProfileProfileInfoModel(),
      ))
        ..add(ProfileProfileInfoInitialEvent()),
      child: ProfileProfileInfoPage(),
    );
  }
}

class ProfileProfileInfoPageState extends State<ProfileProfileInfoPage>
    with AutomaticKeepAliveClientMixin<ProfileProfileInfoPage> {
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
                    top: 36,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_first_name".tr,
                        style: CustomTextStyles.labelLargeOnPrimary,
                      ),
                      BlocSelector<ProfileProfileInfoBloc,
                          ProfileProfileInfoState, TextEditingController?>(
                        selector: (state) => state.firstNameController,
                        builder: (context, firstNameController) {
                          return CustomTextFormField(
                            controller: firstNameController,
                            margin: getMargin(
                              top: 15,
                            ),
                            hintText: "lbl_archie".tr,
                            hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_last_name".tr,
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      BlocSelector<ProfileProfileInfoBloc,
                          ProfileProfileInfoState, TextEditingController?>(
                        selector: (state) => state.lastNameController,
                        builder: (context, lastNameController) {
                          return CustomTextFormField(
                            controller: lastNameController,
                            margin: getMargin(
                              top: 15,
                            ),
                            hintText: "lbl_copeland".tr,
                            hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_email_address".tr,
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      BlocSelector<ProfileProfileInfoBloc,
                          ProfileProfileInfoState, TextEditingController?>(
                        selector: (state) => state.emailController,
                        builder: (context, emailController) {
                          return CustomTextFormField(
                            controller: emailController,
                            margin: getMargin(
                              top: 15,
                            ),
                            hintText: "msg_archiecopeland_gmail_com".tr,
                            hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "Please enter valid email";
                              }
                              return null;
                            },
                          );
                        },
                      ),
                      CustomElevatedButton(
                        text: "lbl_save_edits".tr.toUpperCase(),
                        margin: getMargin(
                          top: 31,
                        ),
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
