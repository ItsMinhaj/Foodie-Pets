import 'package:flutter/material.dart';
import 'package:foodie_pets/controller/cart_controller.dart';
import 'package:foodie_pets/controller/pigeon_food_controller.dart';
import 'package:get/get.dart';

class PigeonFoodScreen extends StatelessWidget {
  PigeonFoodScreen({Key? key}) : super(key: key);

  PigeonFoodController pigeonFoodController = Get.put(PigeonFoodController());
  CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height * .98,
              child: GetX<PigeonFoodController>(builder: (controller) {
                return Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: controller.foodlist.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            cartController
                                .addTocart(controller.foodlist[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 8,
                              shadowColor: Colors.black,
                              child: SizedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Hero(
                                          tag: "hero",
                                          child: Image.asset(
                                            controller.foodlist[index].imageUrl,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller.foodlist[index].title,
                                            style: const TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(
                                              controller.foodlist[index].price
                                                      .toString() +
                                                  "\$",
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                        ]),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                );
              }),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
