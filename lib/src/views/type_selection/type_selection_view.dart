import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tech_it/generated/images.asset.dart';
import 'package:tech_it/src/services/local/navigation_service.dart';
import 'package:tech_it/src/shared/app_screen.dart';
import 'package:tech_it/src/shared/spacing.dart';
import 'package:tech_it/src/styles/app_colors.dart';
import 'package:tech_it/src/styles/text_theme.dart';
import 'package:tech_it/src/views/type_selection/type_selection_view_model.dart';

class TypeSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TypeSelectionViewModel>.nonReactive(
      builder: (context, model, child) => AppScreen(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  NavService.childTracking();
                },
                child: Column(
                  children: [
                    Image.asset(
                      Images.member,
                      height: 150,
                      width: 150,
                    ),
                    Text(
                      "Child Tracking",
                      style: TextStyling.mainTitle
                          .copyWith(color: AppColors.secondary),
                    ),
                  ],
                ),
              ),
              VerticalSpacing(50),
              InkWell(
                onTap: () {
                  NavService.busTracking();
                },
                child: Column(
                  children: [
                    Image.asset(
                      Images.bus,
                      height: 150,
                      width: 150,
                    ),
                    Text(
                      "Bus Tracking",
                      style: TextStyling.mainTitle
                          .copyWith(color: AppColors.secondary),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => TypeSelectionViewModel(),
    );
  }
}
