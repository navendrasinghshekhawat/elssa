import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';

class EnterOtpScreen extends StatelessWidget {
  const EnterOtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPasswordCodeV,
                height: 187.v,
                width: 166.h,
              ),
              SizedBox(height: 68.v),
              Text(
                "OTP Verification",
                style: CustomTextStyles.headlineLarge_1,
              ),
              SizedBox(height: 24.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter the OTP sent to ",
                      style: CustomTextStyles.bodyMediumInterBlack90001_1,
                    ),
                    TextSpan(
                      text: "+1 9879878975",
                      style: CustomTextStyles.titleSmallInterSemiBold,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 65.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  right: 25.h,
                ),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 26.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "OTP not recived?",
                      style: CustomTextStyles.bodyMediumInterGray600_1,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "RESEND OTP",
                      style: CustomTextStyles.titleSmallInterBlue500,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "VERIFY & PROCEED",
                buttonStyle: CustomButtonStyles.outlineBlack,
                buttonTextStyle: theme.textTheme.titleMedium!,
                onPressed: () {
                  onTapVerifyproceed(context);
                },
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: Container(
        height: 32.adaptSize,
        width: 32.adaptSize,
        margin: EdgeInsets.fromLTRB(25.h, 12.v, 318.h, 12.v),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFramePrimary,
              height: 32.adaptSize,
              width: 32.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgLayer2,
              height: 20.v,
              width: 26.h,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(2.h, 6.v, 3.h, 6.v),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the addNewAddressScreen when the action is triggered.
  onTapVerifyproceed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addNewAddressScreen);
  }
}
