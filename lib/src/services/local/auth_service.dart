import 'package:stacked/stacked.dart';
import 'package:tech_it/src/models/user.dart';

class AuthService with ReactiveServiceMixin {
  ReactiveValue<User?> _user = ReactiveValue<User?>(null);

  User? get user => _user.value;

  AuthService() {
    listenToReactiveValues([_user]);
  }

  set user(User? user) {
    _user.value = user;
  }
}
