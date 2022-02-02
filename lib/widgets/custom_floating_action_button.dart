import 'package:flutter/material.dart';
import 'package:foodie_pets/controller/cart_controller.dart';
import 'package:foodie_pets/screen/add_to_cart/add_to_cart_screen.dart';
import 'package:get/get.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
    required this.cartController,
  }) : super(key: key);

  final CartController cartController;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => AddToCartScreen(cartController.count)));
      },
      backgroundColor: Colors.deepOrange,
      label: Row(
        children: [
          const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          GetX<CartController>(
            builder: (controller) {
              return Text(
                "X ${controller.count}",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              );
            },
          ),
        ],
      ),
    );
  }
}
