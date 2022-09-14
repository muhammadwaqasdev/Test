import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tech_it/src/base/utils/utils.dart';
import 'package:tech_it/src/services/local/navigation_service.dart';
import 'package:tech_it/src/shared/app_screen.dart';
import 'package:tech_it/src/shared/buttons.dart';
import 'package:tech_it/src/shared/spacing.dart';
import 'package:tech_it/src/shared/text_field.dart';
import 'package:tech_it/src/styles/app_colors.dart';
import 'package:tech_it/src/styles/text_theme.dart';
import 'package:tech_it/src/views/sign_in/sign_in_view_model.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignInViewModel>.reactive(
      builder: (context, model, child) => AppScreen(
          body: Stack(
        children: [
          Center(
            child: Form(
              child: Builder(builder: (ctx) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomInput(
                      controller: model.username,
                      onTap: () {},
                      hint: "username",
                      width: 200,
                      errorMessage: "Required",
                      inputType: TextInputType.emailAddress,
                    ),
                    VerticalSpacing(10),
                    CustomInput(
                      controller: model.password,
                      onTap: () {},
                      hint: "password",
                      width: 200,
                      isPassword: true,
                      errorMessage: "Required",
                    ),
                    VerticalSpacing(20),
                    SmallButton(
                        title: "Login",
                        onTap: () {
                          model.signIn(ctx);
                        }),
                    Text(
                      "Forgot Password?",
                      style:
                          TextStyling.text.copyWith(color: AppColors.secondary),
                    ),
                  ],
                );
              }),
            ),
          ),
          Container(
            width: context.screenSize().width,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account",
                    style: TextStyling.paragraphTheme,
                  ),
                  InkWell(
                    onTap: () {
                      NavService.signup();
                    },
                    child: Text(
                      "Create an account",
                      style: TextStyling.heading2
                          .copyWith(color: AppColors.secondary),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          )
        ],
      )),
      viewModelBuilder: () => SignInViewModel(),
    );
  }
}
