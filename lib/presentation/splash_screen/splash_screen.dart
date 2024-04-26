import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,

        );

  @override
  Widget build(BuildContext context) {

    Future.delayed(
        Duration(seconds: 3),
            () {
          // Navigate to main screen
          Navigator.pushNamed(context, AppRoutes.loginScreen);
        });

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 29.v),
          child: Column(
            children: [
              Spacer(
                flex: 53,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLayer1,
                height: 198.v,
                width: 170.h,
              ),
              Spacer(
                flex: 46,
              ),
              Text(
                "Powered by Oyelabs",
                style: CustomTextStyles.bodyMediumInterBluegray400,
              ),
              Text(
                "With Love ❤️".toUpperCase(),
                style: CustomTextStyles.bodyMediumInterIndigo300,
              )
            ],
          ),
        ),
      ),
    );
  }

}
