import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tech_it/src/services/local/auth_service.dart';
import 'package:tech_it/src/services/local/connectivity_service.dart';
import 'package:tech_it/src/services/local/keyboard_service.dart';
import 'package:tech_it/src/services/remote/api_service.dart';
import 'package:tech_it/src/views/bus_tracking/bus_tracking_view.dart';
import 'package:tech_it/src/views/child_tracking/child_tracking_view.dart';
import 'package:tech_it/src/views/invoice/invoice_view.dart';
import 'package:tech_it/src/views/sign_in/sign_in_view.dart';
import 'package:tech_it/src/views/sign_up/sign_up_view.dart';
import 'package:tech_it/src/views/splash/splash_view.dart';
import 'package:tech_it/src/views/type_selection/type_selection_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: SignInView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: TypeSelectionView),
    MaterialRoute(page: ChildTrackingView),
    MaterialRoute(page: BusTrackingView),
    MaterialRoute(page: InvoiceView),
  ],
  dependencies: [
    // Lazy singletons
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: ConnectivityService),
    LazySingleton(classType: KeyboardService),
    LazySingleton(classType: ApiService),
  ],
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
