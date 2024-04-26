import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart'; // ignore: must_be_immutable

class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 210.adaptSize,
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 248.adaptSize),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSmilingHandsom,
              height: 210.adaptSize,
              width: 375.adaptSize,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.adaptSize,
                  vertical: 19.adaptSize,
                ),
                decoration: AppDecoration.gradientBlackToBlack,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomIconButton(
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          padding: EdgeInsets.all(2.adaptSize),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup53186,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.adaptSize,
                            top: 4.adaptSize,
                            bottom: 3.adaptSize,
                          ),
                          child: Text(
                            "Renovation",
                            style: theme.textTheme.labelLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 6.adaptSize),
                    Row(
                      children: [
                        CustomIconButton(
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          padding: EdgeInsets.all(3.adaptSize),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVector,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.adaptSize,
                            top: 5.adaptSize,
                            bottom: 2.adaptSize,
                          ),
                          child: Text(
                            "Handyman",
                            style: theme.textTheme.labelLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 6.adaptSize),
                    Row(
                      children: [
                        CustomIconButton(
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          padding: EdgeInsets.all(3.adaptSize),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHome,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.adaptSize,
                            top: 5.adaptSize,
                            bottom: 2.adaptSize,
                          ),
                          child: Text(
                            "Home shifting",
                            style: theme.textTheme.labelLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 6.adaptSize),
                    Row(
                      children: [
                        CustomIconButton(
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          padding: EdgeInsets.all(3.adaptSize),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClose,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.adaptSize,
                            top: 5.adaptSize,
                            bottom: 2.adaptSize,
                          ),
                          child: Text(
                            "Gardening",
                            style: theme.textTheme.labelLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 6.adaptSize),
                    Row(
                      children: [
                        CustomIconButton(
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          padding: EdgeInsets.all(3.adaptSize),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgComputer,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.adaptSize,
                            top: 4.adaptSize,
                            bottom: 3.adaptSize,
                          ),
                          child: Text(
                            "Declutter",
                            style: theme.textTheme.labelLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 6.adaptSize),
                    Row(
                      children: [
                        CustomIconButton(
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          padding: EdgeInsets.all(2.adaptSize),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEdit,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.adaptSize,
                            top: 5.adaptSize,
                            bottom: 2.adaptSize,
                          ),
                          child: Text(
                            "Painting",
                            style: theme.textTheme.labelLarge,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
