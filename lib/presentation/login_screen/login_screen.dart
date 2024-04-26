import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
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
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(
                    height: 449.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame,
                          height: 445.v,
                          width: 375.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Your Home services Expert",
                            style: theme.textTheme.titleLarge,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "Continue with Phone Number",
                    style: CustomTextStyles.titleSmallInterGray500,
                  ),
                  SizedBox(height: 27.v),
                  _buildTelevisionStack(context),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                    text: "SIGN UP",
                    margin: EdgeInsets.only(
                      left: 26.h,
                      right: 27.h,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "VIEW OTHER OPTION",
                    style: theme.textTheme.labelLarge,
                  ),
                  SizedBox(height: 27.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtAlreadyhavean(context);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "ALREADY HAVE AN ACCOUNT?",
                            style: CustomTextStyles.titleSmallBluegray300,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "LOG IN",
                            style: CustomTextStyles.titleSmallBlue500,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
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
  Widget _buildTelevisionStack(BuildContext context) {
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
                  left: 37.h,
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

  /// Navigates to the loginOldUsersScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOldUsersScreen);
  }
}
