import 'package:nanoudesu_s_application1/core/app_export.dart';
import 'package:nanoudesu_s_application1/presentation/akun_saya_screen/models/akun_saya_model.dart';

/// A controller class for the AkunSayaScreen.
///
/// This class manages the state of the AkunSayaScreen, including the
/// current akunSayaModelObj
class AkunSayaController extends GetxController {
  Rx<AkunSayaModel> akunSayaModelObj = AkunSayaModel().obs;
}
