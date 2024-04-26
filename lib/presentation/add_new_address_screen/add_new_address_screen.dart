import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {

    Future.delayed(
        Duration(seconds: 5),
            () {
          // Navigate to main screen
          Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
        });

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 16.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                ),
              ),
              Spacer(
                flex: 36,
              ),
              Text(
                "Hey, nice to meet you!",
                style: CustomTextStyles.titleMediumRalewayBluegray40001,
              ),
              SizedBox(height: 12.v),
              Text(
                "See services around",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 49.v),
              CustomImageView(
                imagePath: ImageConstant.imgUndrawBestPlaceR685,
                height: 141.v,
                width: 310.h,
              ),
              SizedBox(height: 64.v),
              CustomElevatedButton(
                height: 53.v,
                text: "Your current location",
                margin: EdgeInsets.only(
                  left: 22.h,
                  right: 31.h,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 11.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGps1,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineBlackTL26,
                buttonTextStyle: theme.textTheme.titleMedium!,
              ),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                height: 53.v,
                text: "Some other location",
                margin: EdgeInsets.only(
                  left: 22.h,
                  right: 31.h,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 11.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgRewind,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineBlueGray,
                buttonTextStyle: CustomTextStyles.titleMediumBluegray300,
              ),
              Spacer(
                flex: 63,
              )
            ],
          ),
        ),
      ),
    );
  }
}
