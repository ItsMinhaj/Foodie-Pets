import 'package:flutter/material.dart';
import 'package:foodie_pets/controller/cart_controller.dart';
import 'package:foodie_pets/screen/home/home.dart';
import 'package:get/get.dart';

class MakePayment extends StatelessWidget {
  MakePayment({Key? key}) : super(key: key);
  CartController cartController = CartController();

  @override
  Widget build(Builcontext) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Your payment hase been successful",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.deepPurple,
                )),
            Image.asset(
              "assets/mark/mark.png",
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Get.delete<CartController>();
                  Get.off(Home());
                },
                child: const Text(
                  "Back to home",
                ))
          ],
        ),
      ),
    );
  }
}
