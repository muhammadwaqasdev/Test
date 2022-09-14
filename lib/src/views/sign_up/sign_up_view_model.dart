import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;
import 'package:stacked/stacked.dart';
import 'package:tech_it/src/services/local/navigation_service.dart';

class SignupViewModel extends ReactiveViewModel {
  TextEditingController name = TextEditingController();
  TextEditingController fatherName = TextEditingController();
  TextEditingController rollNumber = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController schoolName = TextEditingController();
  TextEditingController password = TextEditingController();

  signUp(BuildContext ctx) {
    if (m.Form.of(ctx)?.validate() ?? false) {
      NavService.typeSelection();
    }
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [];
}
