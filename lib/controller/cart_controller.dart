import 'package:foodie_pets/model/food.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Food>[].obs;
  int get count => cartItems.length;
  double get totalAmount => cartItems.fold(0, (sum, item) => sum + item.price);

  addTocart(Food food) {
    cartItems.add(food);
  }

  clearCart() {
    cartItems.clear();
    cartItems.length.toString();
  }
}
