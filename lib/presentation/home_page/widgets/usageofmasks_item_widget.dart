import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UsageofmasksItemWidget extends StatelessWidget {
  const UsageofmasksItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse108,
          height: 79.adaptSize,
          width: 79.adaptSize,
          radius: BorderRadius.circular(
            39.h,
          ),
          margin: EdgeInsets.only(
            top: 21.v,
            bottom: 7.v,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 197.h,
                  child: Text(
                    "Usage of masks, gloves & Sanitisers",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumInterBlack90001SemiBold,
                  ),
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  width: 228.h,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst nullam mauris malesuada in. Eget in condimentum porttitor nec tristique penatibus ipsum nunc. ",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray600.copyWith(
                      height: 1.41,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
