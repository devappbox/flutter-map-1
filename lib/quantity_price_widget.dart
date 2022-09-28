// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class QuantityPriceWidget extends StatefulWidget {
//   final int index;
//   QuantityPriceWidget({Key? key, required this.index}) : super(key: key);

//   @override
//   State<QuantityPriceWidget> createState() => _QuantityPriceWidgetState();
// }

// class _QuantityPriceWidgetState extends State<QuantityPriceWidget> {
//   final CartController controller = Get.put(CartController());
//   final TextEditingController _textEditingController = TextEditingController();

//   @override
//   void dispose() {
//     //controller.dispose();
//     _textEditingController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<CartController>(
//       builder: (controller) {
//         _textEditingController.text = controller.cartProduct[index].quantity;
//         return Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width / 3,
//                 child: Text(
//                   // ("${controller.qtyController.value} pcs"),
//                   ("${controller.cartProduct[index].quantity} Pcs"),
//                   //todo
//                   //'${controller.qtyController.text} Pcs',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                     color: primaryColor,
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: (controller.cartProduct[index].quantity! < 2)
//                         ? null
//                         : () {
//                             controller.plusMinus(
//                               section: 'minus',
//                               cartId: controller.cartProduct[index].id,
//                             );
//                           },
//                     child: SvgPicture.asset(
//                       'assets/icons/reduce-one.svg',
//                       height: 20,
//                       width: 20,
//                       color: controller.cartProduct[index].quantity! < 2
//                           ? Colors.grey[400]
//                           : null,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 50,
//                     child: TextField(
//                       controller: _textEditingController,
//                       onChanged: (value) {
//                         debugPrint("onChange value $value");
//                       },
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: (controller.cartProduct[index].quantity! > 0) &&
//                             (controller.cartProduct[index].quantity ==
//                                 controller.cartProduct[index].stock)
//                         ? null
//                         : () {
//                             controller.plusMinus(
//                               section: 'plus',
//                               cartId: controller.cartProduct[index].id,
//                             );
//                             // setState(() {
//                             //   qty;
//                             // });
//                           },
//                     child: SvgPicture.asset(
//                       'assets/icons/add-one.svg',
//                       height: 20,
//                       width: 20,
//                       color: (controller.cartProduct[index].quantity! > 0) &&
//                               (controller.cartProduct[index].quantity ==
//                                   controller.cartProduct[index].stock)
//                           ? Colors.grey[400]
//                           : null,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
