import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart'; // ignore: must_be_immutable

class CalendarlistItemWidget extends StatelessWidget {
  const CalendarlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62.adaptSize,
      height: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.adaptSize),
        child: Column(
          children: [
            CustomIconButton(
              height: 44.adaptSize,
              width: 44.adaptSize,
              padding: EdgeInsets.all(5.adaptSize),
              decoration: IconButtonStyleHelper.fillLightGreen,
              child: CustomImageView(
                imagePath: ImageConstant.imgCalendar,
              ),
            ),
            SizedBox(height: 5.adaptSize),
            SizedBox(
              width: 62.h,
              child: Text(
                "On Demand / Scheduled",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
    );
  }
}
