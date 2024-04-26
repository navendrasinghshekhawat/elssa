import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ListkitchencleaItemWidget extends StatelessWidget {
  const ListkitchencleaItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 133.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle37,
                height: 83.v,
                width: 133.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
              ),
              SizedBox(height: 17.v),
              Text(
                "Kitchen Cleaning",
                style: CustomTextStyles.titleSmallGray700,
              )
            ],
          ),
        ),
      ),
    );
  }
}
