import 'package:flutter/material.dart';
import 'package:foodie_pets/controller/cart_controller.dart';
import 'package:foodie_pets/screen/cat_food/cat_food_screen.dart';
import 'package:foodie_pets/screen/dog_food/dog_food_screen.dart';
import 'package:foodie_pets/screen/horse_food/horse_food_screen.dart';
import 'package:foodie_pets/screen/pigeon_food/pigeon_food_screen.dart';
import 'package:foodie_pets/screen/rabbit_food/rabbit_food_screen.dart';
import 'package:foodie_pets/widgets/custom_floating_action_button.dart';
import 'package:foodie_pets/widgets/custom_tab.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/logo/logo-title.png"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          bottom: TabBar(tabs: [
            CustomTab(tabTitle: "Cat"),
            CustomTab(tabTitle: "Dog"),
            CustomTab(tabTitle: "Horse"),
            CustomTab(tabTitle: "Pigeon"),
            CustomTab(tabTitle: "Rabbit"),
          ]),
        ),
        body: TabBarView(
          children: [
            CatFoodSreen(),
            DogFoodScreen(),
            HorseFoodScreen(),
            PigeonFoodScreen(),
            RabbitFoodScreen(),
          ],
        ),
        floatingActionButton:
            CustomFloatingActionButton(cartController: cartController),
      ),
    );
  }
}
