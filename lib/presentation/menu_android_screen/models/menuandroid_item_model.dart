import '../../../core/app_export.dart';

/// This class is used in the [menuandroid_item_widget] screen.
class MenuandroidItemModel {
  MenuandroidItemModel({
    this.ninjaSushi,
    this.ninjaSushi1,
    this.time,
    this.price,
    this.sushi,
    this.id,
  }) {
    ninjaSushi = ninjaSushi ?? Rx(ImageConstant.imgMask1);
    ninjaSushi1 = ninjaSushi1 ?? Rx("Ninja Sushi");
    time = time ?? Rx("20-40 min");
    price = price ?? Rx("40 min sum");
    sushi = sushi ?? Rx("Sushi");
    id = id ?? Rx("");
  }

  Rx<String>? ninjaSushi;

  Rx<String>? ninjaSushi1;

  Rx<String>? time;

  Rx<String>? price;

  Rx<String>? sushi;

  Rx<String>? id;
}
