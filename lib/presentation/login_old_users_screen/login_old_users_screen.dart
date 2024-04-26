import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_phone_number.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginOldUsersScreen extends StatelessWidget {
  LoginOldUsersScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 51.v,
              ),
              child: Column(
                children: [
                  Text(
                    "Welcome Back!",
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 63.v),
                  _buildContinueColumn(context),
                  SizedBox(height: 61.v),
                  Text(
                    "OR CONTINUE WITH PHONE NUMBER",
                    style: CustomTextStyles.titleSmallInterBluegray300,
                  ),
                  SizedBox(height: 22.v),
                  _buildStackTelevision(context),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                    text: "LOG IN",
                    onPressed: () {
                      onTapLogin(context);
                    },
                  ),
                  SizedBox(height: 20.v),
                  Text(
                    "Forgot Password?",
                    style: CustomTextStyles.titleSmallInter,
                  ),
                  SizedBox(height: 40.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "DON’T HAVE AN ACCOUNT?",
                          style: CustomTextStyles.titleSmallBluegray300,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "SIGN UP",
                          style: CustomTextStyles.titleSmallBlue500,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 374.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLayer2,
        margin: EdgeInsets.fromLTRB(27.h, 18.v, 321.h, 18.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueColumn(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          text: "CONTINUE WITH FACEBOOK",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 26.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgFacebook,
              height: 24.v,
              width: 12.h,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillIndigo,
          buttonTextStyle: CustomTextStyles.titleSmallInterGray100,
        ),
        SizedBox(height: 20.v),
        CustomOutlinedButton(
          text: "CONTINUE WITH GOOGLE",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 21.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGoogle,
              height: 24.v,
              width: 23.h,
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStackTelevision(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray10001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        height: 63.v,
        width: 322.h,
        padding: EdgeInsets.all(13.h),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomPhoneNumber(
              country: selectedCountry,
              controller: phoneNumberController,
              onTap: (Country value) {
                selectedCountry = value;
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  bottom: 8.v,
                ),
                child: Text(
                  "(USA)",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the enterOtpScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterOtpScreen);
  }
}
