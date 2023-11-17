import '../controller/akun_saya_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AkunSayaScreen.
///
/// This class ensures that the AkunSayaController is created when the
/// AkunSayaScreen is first loaded.
class AkunSayaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AkunSayaController());
  }
}
