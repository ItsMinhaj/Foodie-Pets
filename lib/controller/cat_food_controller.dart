import 'package:foodie_pets/data/cat_food.dart';
import 'package:foodie_pets/model/food.dart';
import 'package:get/get.dart';

class CatFoodController extends GetxController {
  var foodlist = <Food>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    foodlist.value = catFoods;
  }
}
