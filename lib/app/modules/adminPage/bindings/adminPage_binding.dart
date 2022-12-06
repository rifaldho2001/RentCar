import 'package:get/get.dart';

import '../controllers/adminPage_controller.dart';

class adminPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<adminPageController>(
      () => adminPageController(),
    );
  }
}
