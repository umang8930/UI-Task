import 'package:designtask/const/app_color.dart';
import 'package:designtask/const/app_strings.dart';
import 'package:designtask/const/text_style.dart';
import 'package:designtask/views/custom_bottombar/custom_navbar_screen.dart';
import 'package:flutter/material.dart';

import '../const/app_images.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .05),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * .15,
                ),
                CircleAvatar(
                  radius: width * 0.12,
                  backgroundImage: AssetImage(
                    AppImages.appLogo,
                  ),
                ),
                SizedBox(
                  height: height * .1,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: height * .02),
                  padding: EdgeInsets.symmetric(horizontal: width * .05, vertical: height * .02),
                  height: height * 0.12,
                  width: width,
                  decoration: BoxDecoration(
                      color: AppColors().whiteColor, borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString().emailAddressText,
                        style: CustomTextStyle().robotoRegular.copyWith(
                              color: AppColors().greyColor,
                              fontSize: width * .04,
                            ),
                      ),
                      TextFormField(
                        cursorColor: AppColors().greyColor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: AppString().enterEmailText,
                          icon: Icon(
                            Icons.email_outlined,
                            color: AppColors().blackColor,
                          ),
                          hintStyle: CustomTextStyle().robotoRegular.copyWith(
                                color: AppColors().blackColor,
                                fontSize: width * .04,
                              ),
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: height * .02),
                  padding: EdgeInsets.symmetric(horizontal: width * .05, vertical: height * .02),
                  height: height * 0.12,
                  width: width,
                  decoration: BoxDecoration(
                      color: AppColors().whiteColor, borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString().passwordText,
                        style: CustomTextStyle().robotoRegular.copyWith(
                              color: AppColors().greyColor,
                              fontSize: width * .04,
                            ),
                      ),
                      TextFormField(
                        cursorColor: AppColors().greyColor,
                        obscureText: isPasswordVisible,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: AppString().enterPasswordText,
                          icon: Icon(
                            Icons.lock_outline,
                            color: AppColors().blackColor,
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            child: isPasswordVisible
                                ? Icon(
                                    Icons.visibility_off_outlined,
                                    color: AppColors().blackColor,
                                  )
                                : Icon(
                                    Icons.visibility_outlined,
                                    color: AppColors().blackColor,
                                  ),
                          ),
                          hintStyle: CustomTextStyle().robotoRegular.copyWith(
                                color: AppColors().blackColor,
                                fontSize: width * .04,
                              ),
                          contentPadding: EdgeInsets.symmetric(vertical: height * .02),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomBottomNavigationBar(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: height * .02),
                    height: height * 0.07,
                    width: width,
                    decoration: BoxDecoration(
                        color: AppColors().secondaryColor, borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(
                        AppString().logInText,
                        style: CustomTextStyle().robotoBold.copyWith(
                              color: AppColors().whiteColor,
                              fontSize: width * .05,
                            ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppString().signUpText,
                      style: CustomTextStyle().robotoRegular.copyWith(
                            color: AppColors().greyColor,
                            fontSize: width * .04,
                          ),
                    ),
                    Text(
                      AppString().forgotPasswordText,
                      style: CustomTextStyle().robotoRegular.copyWith(
                            color: AppColors().greyColor,
                            fontSize: width * .04,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
