import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tech_it/generated/images.asset.dart';
import 'package:tech_it/src/services/local/navigation_service.dart';
import 'package:tech_it/src/shared/app_screen.dart';
import 'package:tech_it/src/shared/buttons.dart';
import 'package:tech_it/src/styles/app_colors.dart';
import 'package:tech_it/src/styles/text_theme.dart';
import 'package:tech_it/src/views/splash/splash_view_model.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (context, model, child) => AppScreen(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              Images.traxTrackingLogo,
              width: 150,
              height: 150,
            ),
            Center(
              child: Column(
                children: [
                  RichText(
                      text: TextSpan(
                          text: "Locate where\nis your ",
                          style: TextStyling.mainTitle
                              .copyWith(color: AppColors.primary),
                          children: [
                        TextSpan(
                          text: "Child",
                          style: TextStyling.mainTitle
                              .copyWith(color: AppColors.secondary),
                        ),
                        TextSpan(
                          text: "!",
                          style: TextStyling.mainTitle
                              .copyWith(color: AppColors.primary),
                        )
                      ])),
                  Container(
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: AppColors.secondary, width: 2))),
                  ),
                ],
              ),
            ),
            MainButton(
              title: "Login",
              onTap: () {
                NavService.signIn();
              },
              color: AppColors.primaryLight,
              textColor: AppColors.primary,
            ),
            Column(
              children: [
                Text(
                  "Don't have an account",
                  style: TextStyling.text,
                ),
                InkWell(
                  onTap: () {
                    NavService.signup();
                  },
                  child: Text(
                    "Create an account",
                    style:
                        TextStyling.heading1.copyWith(color: AppColors.primary),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
