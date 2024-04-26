import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_title_image_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/calendarlist_item_widget.dart';
import 'widgets/list_item_widget.dart';
import 'widgets/listkitchenclea_item_widget.dart';
import 'widgets/usageofmasks_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';
import 'widgets/viewhierarchy_item_widget.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
    key: key,
  );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            // padding: EdgeInsets.only(top: 12.adaptSize),
            // child: Padding(
            //   padding: EdgeInsets.only(bottom: 5.adaptSize),
              child: Column(
                children: [
                  _buildViewHierarchy(context),
                  Container(
                    height: 12.adaptSize,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                    ),
                  ),
                  SizedBox(height: 17.v),
                  _buildPopularServices(context),
                  SizedBox(height: 23.v),
                  _buildCleaningServices(context),
                  SizedBox(height: 14.v),
                  Container(
                    height: 12.v,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildCalendarList(context),
                  SizedBox(height: 17.v),
                  Container(
                    height: 12.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillBlack,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSecurity,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Why Choose Us",
                              style: CustomTextStyles.titleMediumBlack90001,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  _buildUserProfile(context),
                  SizedBox(height: 20.v),
                  _buildBestInClassSafety(context),
                  SizedBox(height: 7.v),
                  _buildUsageOfMasks(context),
                  SizedBox(height: 80.v),
                  SizedBox(
                    width: 158.h,
                    child: Text(
                      "HASSLE FREE\nQUALITY SERVICE",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumInterGray400.copyWith(
                        height: 1.41,
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Text(
                    "V 1.0",
                    style: CustomTextStyles.bodyLargeInterGray400,
                  )
                ],
              ),
            ),
          ),
        ),
      );
    // );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 25.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 182.h),
              child: Row(
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgLinkedin,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 6.v,
                    ),
                  ),
                  AppbarTitle(
                    text: "Home",
                    margin: EdgeInsets.only(left: 7.h),
                  ),
                  AppbarTitleImageOne(
                    imagePath: ImageConstant.imgPolygon1,
                    margin: EdgeInsets.only(
                      left: 7.h,
                      top: 8.v,
                      bottom: 9.v,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 1.v),
            AppbarSubtitle(
              text: "Inner Circle, Connaught Place, New Delhi, Del...",
              margin: EdgeInsets.only(left: 1.h),
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch31,
          margin: EdgeInsets.fromLTRB(26.h, 12.v, 26.h, 16.v),
        )
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return SizedBox(
      height: 458.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 458.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                sliderIndex = index;
              },
            ),
            itemCount: 2,
            itemBuilder: (context, index, realIndex) {
              return ViewhierarchyItemWidget();
            },
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 7.v,
              margin: EdgeInsets.only(top: 193.v),
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 2,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 5,
                  activeDotColor: appTheme.whiteA700,
                  dotColor: appTheme.whiteA700.withOpacity(0.17),
                  dotHeight: 7.v,
                  dotWidth: 7.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularServices(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(
            "Popular Services",
            style: theme.textTheme.headlineSmall,
          ),
        ),
        SizedBox(height: 18.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 119.v,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 19.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListkitchencleaItemWidget();
              },
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCleaningServices(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(
            "Cleaning Services",
            style: theme.textTheme.headlineSmall,
          ),
        ),
        SizedBox(height: 18.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 117.v,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 19.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListItemWidget();
              },
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCalendarList(BuildContext context) {
    return SizedBox(
      height: 77.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 23.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 13.h,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return CalendarlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 12.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBestInClassSafety(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 45.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillGray90001,
      child: Column(
        children: [
          SizedBox(height: 5.v),
          Text(
            "Best-in Class Safety Measures",
            style: theme.textTheme.titleLarge,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUsageOfMasks(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(23.h),
      decoration: AppDecoration.fillGray5001,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 37.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return UsageofmasksItemWidget();
        },
      ),
    );
  }
}
