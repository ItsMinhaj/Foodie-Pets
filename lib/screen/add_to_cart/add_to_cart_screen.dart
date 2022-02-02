import 'package:flutter/material.dart';
import 'package:foodie_pets/controller/cart_controller.dart';
import 'package:foodie_pets/screen/make_payment/make_payment.dart';
import 'package:get/get.dart';

class AddToCartScreen extends StatelessWidget {
  AddToCartScreen(int count, {Key? key}) : super(key: key);

  CartController cartController = Get.find();
  // CartController _cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Add To Cart"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage(cartController.cartItems[index].imageUrl),
                    ),
                    title: Text(cartController.cartItems[index].title),
                    subtitle: Text(cartController.cartItems[index].weight),
                    trailing: Text(
                      cartController.cartItems[index].price.toString() + " \$",
                    ),
                  );
                }),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      primary: Colors.deepOrange,
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Please go for payment.")));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GetX<CartController>(builder: (controller) {
                          return Text(
                            "Total Amount: ${controller.totalAmount}\$",
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      primary: Colors.purple,
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Get.off(MakePayment());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Make Payment"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
