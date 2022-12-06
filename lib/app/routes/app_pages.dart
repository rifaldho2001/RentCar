import 'package:get/get.dart';
import 'package:rentcarapp/app/modules/adminPage/views/confirmOrder_view.dart';

import '../modules/adminPage/bindings/adminPage_binding.dart';
import '../modules/adminPage/views/addData_view.dart';
import '../modules/adminPage/views/adminPage_view.dart';
import '../modules/adminPage/views/logout_view.dart';
import '../modules/forgetPassword/bindings/forget_password_binding.dart';
import '../modules/forgetPassword/views/forget_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/booking_view.dart';
import '../modules/home/views/catalog_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/profile_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CATALOG,
      page: () => const CatalogView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING,
      page: () => const BookingView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_PAGE,
      page: () => adminPageView(),
      binding: adminPageBinding(),
    ),
    GetPage(
      name: _Paths.ADD_DATA,
      page: () => const addDataView(),
      binding: adminPageBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_ORDER,
      page: () => const confirmOrderView(),
      binding: adminPageBinding(),
    ),
    GetPage(
      name: _Paths.LOGOUT,
      page: () => const LogoutView(),
      binding: adminPageBinding(),
    ),
  ];
}
