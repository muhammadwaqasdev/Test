import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;
import 'package:stacked/stacked.dart';
import 'package:tech_it/src/services/local/navigation_service.dart';

class SignInViewModel extends ReactiveViewModel {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  signIn(BuildContext ctx) {
    if (m.Form.of(ctx)?.validate() ?? false) {
      NavService.typeSelection();
    }
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [];
}
