import 'twentythree_item_model.dart';
import '../../../core/app_export.dart';
import 'menuandroid_item_model.dart';

/// This class defines the variables used in the [menu_android_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MenuAndroidModel {
  Rx<List<TwentythreeItemModel>> twentythreeItemList =
      Rx(List.generate(2, (index) => TwentythreeItemModel()));

  Rx<List<MenuandroidItemModel>> menuandroidItemList = Rx([
    MenuandroidItemModel(
        ninjaSushi: ImageConstant.imgMask1.obs,
        ninjaSushi1: "Ninja Sushi".obs,
        time: "20-40 min".obs,
        price: "40 min sum".obs,
        sushi: "Sushi".obs),
    MenuandroidItemModel(
        ninjaSushi: ImageConstant.imgMask2.obs,
        ninjaSushi1: "Sushi Master".obs,
        time: "60-70 min".obs,
        price: "49 min sum".obs,
        sushi: "Sushi".obs),
    MenuandroidItemModel(
        ninjaSushi: ImageConstant.imgMask3.obs,
        ninjaSushi1: "Japanese Sushi".obs,
        time: "30-50 min".obs,
        price: "104 min sum".obs,
        sushi: "Sushi".obs),
    MenuandroidItemModel(
        ninjaSushi: ImageConstant.imgMask4.obs,
        ninjaSushi1: "Kobe".obs,
        time: "20-30 min".obs,
        price: "57 min sum".obs,
        sushi: "Sushi".obs)
  ]);
}
