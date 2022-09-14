import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:tech_it/generated/images.asset.dart';
import 'package:tech_it/src/services/local/navigation_service.dart';
import 'package:tech_it/src/shared/app_screen.dart';
import 'package:tech_it/src/shared/spacing.dart';
import 'package:tech_it/src/styles/app_colors.dart';
import 'package:tech_it/src/styles/text_theme.dart';
import 'package:tech_it/src/views/child_tracking/child_tracking_view_model.dart';

class ChildTrackingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChildTrackingViewModel>.nonReactive(
      builder: (context, model, child) => AppScreen(
        padding: EdgeInsets.zero,
        body: Stack(
          children: [
            GoogleMap(
              zoomControlsEnabled: false,
              initialCameraPosition: model.initialCameraPosition,
              onMapCreated: (controller) => model.mapController = controller,
              onLongPress: (val) {
                print(val);
              },
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  VerticalSpacing(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: AppColors.primary,
                        size: 40,
                      ),
                      Text(
                        "Child Tracking",
                        style: TextStyling.mainTitle
                            .copyWith(color: AppColors.primary),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        Images.setting,
                        height: 40,
                      ),
                      Image.asset(
                        Images.person,
                        height: 40,
                      ),
                      InkWell(
                          onTap: () {
                            NavService.invoice();
                          },
                          child: Image.asset(
                            Images.location,
                            height: 60,
                          )),
                      Image.asset(
                        Images.directions,
                        height: 40,
                      ),
                      Image.asset(
                        Images.mobile,
                        height: 40,
                      ),
                    ],
                  ),
                  VerticalSpacing(20),
                ],
              ),
            )
          ],
        ),
      ),
      viewModelBuilder: () => ChildTrackingViewModel(),
    );
  }
}
