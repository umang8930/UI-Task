import 'package:designtask/const/app_color.dart';
import 'package:flutter/material.dart';

import '../const/app_images.dart';
import '../const/app_strings.dart';
import '../const/text_style.dart';

class RecentTransactionScreen extends StatefulWidget {
  const RecentTransactionScreen({Key? key}) : super(key: key);

  @override
  State<RecentTransactionScreen> createState() => _RecentTransactionScreenState();
}

class _RecentTransactionScreenState extends State<RecentTransactionScreen> {
  int isSelected = 1;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors().blackColor,
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              color: AppColors().blackColor,
            ),
            SizedBox(
              width: width * 0.02,
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      AppString().recentTransactionText,
                      style: CustomTextStyle()
                          .robotoBold
                          .copyWith(color: AppColors().secondaryColor, fontSize: width * 0.07),
                    ),
                    Spacer(),
                    Text(
                      AppString().seeAllText,
                      style: CustomTextStyle()
                          .robotoRegular
                          .copyWith(color: AppColors().greyColor, fontSize: width * 0.04),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = 1;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: width * 0.02),
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.08, vertical: height * 0.01),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              isSelected == 1 ? AppColors().secondaryColor : AppColors().whiteColor,
                        ),
                        child: Text(
                          AppString().allText,
                          style: CustomTextStyle().robotoRegular.copyWith(
                              color:
                                  isSelected == 1 ? AppColors().whiteColor : AppColors().blackColor,
                              fontSize: width * 0.04),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = 2;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: width * 0.02),
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.08, vertical: height * 0.01),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              isSelected == 2 ? AppColors().secondaryColor : AppColors().whiteColor,
                        ),
                        child: Text(
                          AppString().incomeText,
                          style: CustomTextStyle().robotoRegular.copyWith(
                              color:
                                  isSelected == 2 ? AppColors().whiteColor : AppColors().blackColor,
                              fontSize: width * 0.04),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = 3;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.08, vertical: height * 0.01),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              isSelected == 3 ? AppColors().secondaryColor : AppColors().whiteColor,
                        ),
                        child: Text(
                          AppString().expensesText,
                          style: CustomTextStyle().robotoRegular.copyWith(
                              color:
                                  isSelected == 3 ? AppColors().whiteColor : AppColors().blackColor,
                              fontSize: width * 0.04),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  AppString().todayText,
                  style: CustomTextStyle()
                      .robotoBold
                      .copyWith(color: AppColors().secondaryColor, fontSize: width * 0.06),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: height * .03),
                  padding: EdgeInsets.symmetric(horizontal: width * .05, vertical: height * .02),
                  height: height * 0.10,
                  width: width,
                  decoration: BoxDecoration(
                      color: AppColors().whiteColor, borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: width * 0.05),
                        height: height * 0.06,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: AppColors().transparentColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.payment,
                          color: AppColors().secondaryColor,
                          size: width * 0.08,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppString().paymentText,
                            style: CustomTextStyle().robotoBold.copyWith(
                                  color: AppColors().blackColor,
                                  fontSize: width * .05,
                                ),
                          ),
                          Text(
                            AppString().paymentDescriptionText,
                            style: CustomTextStyle().robotoRegular.copyWith(
                                  color: AppColors().blackColor,
                                  fontSize: width * .03,
                                ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "\$${AppString().sendValueText}",
                        style: CustomTextStyle().robotoBold.copyWith(
                              color: AppColors().blackColor,
                              fontSize: width * .04,
                            ),
                      ),
                    ],
                  ),
                ),
                Image(image: AssetImage(AppImages.paymentImage)),
                Container(
                  margin: EdgeInsets.symmetric(vertical: height * .03),
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                      color: AppColors().secondaryColor, borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      AppString().seeDetailsText,
                      style: CustomTextStyle().robotoBold.copyWith(
                            color: AppColors().whiteColor,
                            fontSize: width * .05,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
