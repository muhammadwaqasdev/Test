import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tech_it/src/base/utils/utils.dart';
import 'package:tech_it/src/shared/app_screen.dart';
import 'package:tech_it/src/shared/buttons.dart';
import 'package:tech_it/src/shared/spacing.dart';
import 'package:tech_it/src/shared/text_field.dart';
import 'package:tech_it/src/views/sign_up/sign_up_view_model.dart';

class SignupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.reactive(
      builder: (context, model, child) => AppScreen(
        body: Center(
          child: Container(
            width: context.screenSize().width / 1.5,
            child: Form(
              child: Builder(builder: (ctx) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SecondaryInputField(
                        controller: model.name,
                        onTap: () {},
                        hint: "Name",
                        width: 200,
                        errorMessage: "Required",
                      ),
                      VerticalSpacing(10),
                      SecondaryInputField(
                        controller: model.fatherName,
                        onTap: () {},
                        hint: "Father Name",
                        width: 200,
                        errorMessage: "Required",
                      ),
                      VerticalSpacing(10),
                      SecondaryInputField(
                        controller: model.rollNumber,
                        onTap: () {},
                        hint: "Roll no.",
                        width: 200,
                        errorMessage: "Required",
                      ),
                      VerticalSpacing(10),
                      SecondaryInputField(
                        controller: model.address,
                        onTap: () {},
                        hint: "Address",
                        width: 200,
                        errorMessage: "Required",
                      ),
                      VerticalSpacing(10),
                      SecondaryInputField(
                        controller: model.phone,
                        onTap: () {},
                        hint: "Phone no.",
                        width: 200,
                        errorMessage: "Required",
                      ),
                      VerticalSpacing(10),
                      SecondaryInputField(
                        controller: model.schoolName,
                        onTap: () {},
                        hint: "School Name",
                        width: 200,
                        errorMessage: "Required",
                      ),
                      VerticalSpacing(10),
                      SecondaryInputField(
                        controller: model.password,
                        onTap: () {},
                        hint: "password",
                        width: 200,
                        errorMessage: "Required",
                      ),
                      VerticalSpacing(20),
                      SmallButton(
                        title: "Submit",
                        onTap: () {
                          model.signUp(ctx);
                        },
                        width: 120,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SignupViewModel(),
    );
  }
}
