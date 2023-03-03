import 'package:designtask/const/app_color.dart';
import 'package:designtask/const/app_images.dart';
import 'package:designtask/const/app_strings.dart';
import 'package:designtask/const/text_style.dart';
import 'package:designtask/views/recent_transaction_screen.dart';
import 'package:flutter/material.dart';

class AddPaymentScreen extends StatefulWidget {
  const AddPaymentScreen({Key? key}) : super(key: key);

  @override
  State<AddPaymentScreen> createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen> {
  List<Map<dynamic, dynamic>> listOfOverview = [
    {
      "title": AppString().sentText,
      "description": AppString().sendPaymentText,
      Icon: Icons.arrow_upward_outlined,
      "value": AppString().sendValueText,
    },
    {
      "title": AppString().receiveText,
      "description": AppString().receivePaymentText,
      Icon: Icons.arrow_downward_rounded,
      "value": AppString().receiveValueText,
    },
    {
      "title": AppString().loanText,
      "description": AppString().loanPaymentText,
      Icon: Icons.monetization_on_outlined,
      "value": AppString().loanValueText,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(width * 0.05),
                margin: EdgeInsets.only(top: height * 0.07, bottom: height * 0.05),
                decoration: BoxDecoration(
                    color: AppColors().whiteColor, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.list,
                          color: AppColors().greyColor,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: AppColors().greyColor,
                        )
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    Center(
                      child: CircleAvatar(
                        radius: height * 0.05,
                        backgroundImage: AssetImage(AppImages.profileImage),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      AppString().userNameString,
                      style: CustomTextStyle()
                          .robotoBold
                          .copyWith(color: AppColors().secondaryColor, fontSize: width * 0.07),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      AppString().userRoleText,
                      style: CustomTextStyle().robotoLight.copyWith(color: AppColors().blackColor),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: width * 0.15, vertical: height * 0.03),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "\$${AppString().incomeValueText}",
                                style: CustomTextStyle().robotoRegular.copyWith(
                                    color: AppColors().secondaryColor, fontSize: width * 0.05),
                              ),
                              Text(
                                AppString().incomeText,
                                style: CustomTextStyle()
                                    .robotoRegular
                                    .copyWith(color: AppColors().greyColor),
                              ),
                            ],
                          ),
                          Container(
                            height: height * 0.05,
                            width: 1,
                            color: AppColors().greyColor,
                          ),
                          Column(
                            children: [
                              Text(
                                "\$${AppString().expensesValueText}",
                                style: CustomTextStyle().robotoRegular.copyWith(
                                    color: AppColors().secondaryColor, fontSize: width * 0.05),
                              ),
                              Text(
                                AppString().expensesText,
                                style: CustomTextStyle()
                                    .robotoRegular
                                    .copyWith(color: AppColors().greyColor),
                              ),
                            ],
                          ),
                          Container(
                            height: height * 0.05,
                            width: 1,
                            color: AppColors().greyColor,
                          ),
                          Column(
                            children: [
                              Text(
                                "\$${AppString().loanValueText}",
                                style: CustomTextStyle().robotoRegular.copyWith(
                                    color: AppColors().secondaryColor, fontSize: width * 0.05),
                              ),
                              Text(
                                AppString().loanText,
                                style: CustomTextStyle()
                                    .robotoRegular
                                    .copyWith(color: AppColors().greyColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    AppString().overviewText,
                    style: CustomTextStyle()
                        .robotoBold
                        .copyWith(color: AppColors().secondaryColor, fontSize: width * 0.07),
                  ),
                  Icon(
                    Icons.notifications_none_outlined,
                    color: AppColors().blackColor,
                  ),
                  Spacer(),
                  Text(
                    AppString().dateText,
                    style: CustomTextStyle()
                        .robotoRegular
                        .copyWith(color: AppColors().secondaryColor, fontSize: width * 0.04),
                  ),
                ],
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listOfOverview.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecentTransactionScreen(),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: height * .01),
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
                            color: AppColors().primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            listOfOverview[index][Icon],
                            color: AppColors().blackColor,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              listOfOverview[index]["title"],
                              style: CustomTextStyle().robotoBold.copyWith(
                                    color: AppColors().blackColor,
                                    fontSize: width * .05,
                                  ),
                            ),
                            Text(
                              listOfOverview[index]["description"],
                              style: CustomTextStyle().robotoRegular.copyWith(
                                    color: AppColors().blackColor,
                                    fontSize: width * .03,
                                  ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "\$${listOfOverview[index]["value"]}",
                          style: CustomTextStyle().robotoBold.copyWith(
                                color: AppColors().blackColor,
                                fontSize: width * .04,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
