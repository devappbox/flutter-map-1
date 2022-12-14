// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:intl/intl.dart';
// import 'package:get/get.dart';
// import 'package:winn_merchant_flutter/controllers/Cart/main.dart';
// import 'package:winn_merchant_flutter/screens/checkout/checkout_sucess.dart';
// import 'package:winn_merchant_flutter/utilities/themes.dart';
// import 'package:winn_merchant_flutter/widgets/card/item_product_incart.dart';
// import 'package:winn_merchant_flutter/widgets/custom_appbar.dart';
// import 'package:winn_merchant_flutter/widgets/custom_button.dart';
// import 'package:winn_merchant_flutter/widgets/general_text.dart';

// class CartPage extends StatelessWidget {
//   final CartController controller = Get.put(CartController());
//   @override
//   Widget build(BuildContext context) {
//     print("cart");
//     return RefreshIndicator(
//       onRefresh: controller.getCartProduct,
//       child: Scaffold(
//         backgroundColor: Colors.grey.shade200,
//         appBar: CustomAppBar().generalAppBar(
//             title: "My Cart",
//             leading: IconButton(
//                 onPressed: () {
//                   Get.back();
//                 },
//                 icon: Icon(Icons.arrow_back_ios_outlined))),
//         body: GetBuilder<CartController>(
//           id: 'content-cart',
//           builder: (_) {
//             if (controller.cartProduct.length != 0) {
//               return Column(
//                 children: [
//                   if (controller.cartProduct.length > 0)
//                     buildSelectAll(context),
//                   buildCartList(context),
//                 ],
//               );
//             }
//             return emptyItemCart(context);
//           },
//         ),
//         bottomNavigationBar: GetBuilder<CartController>(
//           id: 'content-cart',
//           builder: (_) {
//             return buildTotalCartAndButton(context);
//           },
//         ),
//       ),
//     );
//   }

//   Widget emptyItemCart(context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.8,
//       child: Center(
//         child: WinnGeneralText(
//           title: 'No Items In Cart',
//           border: TextDecoration.none,
//           fontSize: 16,
//           fontWeight: FontWeight.w600,
//           colorTitle: Colors.black54,
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }

//   Widget buildTotalCartAndButton(context) {
//     return Container(
//       color: Colors.white,
//       width: MediaQuery.of(context).size.width,
//       height: 80,
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 10),
//           CustomButton(
//               text: "Request Order",
//               colorButton: primaryColor,
//               textColor: Colors.white,
//               // colorButton: checked.isNotEmpty ? primaryColor : Color(0xFFE3E3E3),
//               // textColor: checked.isNotEmpty ? Colors.white : Colors.black54,
//               borderRadiusSize: 10,
//               borderSideColor: primaryColor,
//               // borderSideColor: checked.isNotEmpty ? primaryColor : Colors.transparent,
//               onPressed: () {
//                 controller.checkout(context);
//               }
//               // checked.isNotEmpty ? () {
//               // if (controller.cartProduct.isNotEmpty) {
//               //   controller.checkout(context);
//               // }
//               // Get.to(CheckoutSuccessScreen());
//               // controller.checkout(context);
//               // } : null,
//               ),
//         ],
//       ),
//     );
//   }

//   Widget buildCartList(context) {
//     return Expanded(
//       //height: MediaQuery.of(context).size.height / 1.79,
//       child: ListView(
//         shrinkWrap: true,
//         children: List.generate(controller.cartProduct.length, (index) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 5.0),
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10.0),
//                     child: Checkbox(
//                       value: controller.selectedProduct[index],
//                       onChanged: (val) {
//                         controller.checkProduct(index: index);
//                         // checked = controller.cartChecked;
//                         // if (val == false) {
//                         //   checked = [];
//                         // }
//                       },
//                       checkColor: Colors.white,
//                       activeColor: primaryColor,
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1.3,
//                     child: Column(
//                       children: [
//                         // New
//                         ItemCard(
//                             cart: controller.cartProduct[index],
//                             onTap: () {
//                               controller.toDescriptionProduct(
//                                   id: controller.cartProduct[index].productId);
//                             },
//                             url: controller.api.content),
//                         // productDetail(index, context),//Old
//                         //priceQuantity(context, index),
//                         PriceQuantityWidget(index: index),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }

//   Padding priceQuantity(context, int index) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width / 3,
//             child: Text(
//               "${controller.cartProduct[index].quantity} Dus",
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: primaryColor,
//               ),
//             ),
//           ),
//           Row(
//             children: [
//               GestureDetector(
//                 onTap: controller.cartProduct[index].quantity! < 2
//                     ? null
//                     : () {
//                         controller.plusMinus(
//                           section: 'minus',
//                           cartId: controller.cartProduct[index].id,
//                         );
//                       },
//                 child: SvgPicture.asset(
//                   'assets/icons/reduce-one.svg',
//                   height: 20,
//                   width: 20,
//                   color: controller.cartProduct[index].quantity! < 2
//                       ? Colors.grey[400]
//                       : null,
//                 ),
//               ),
//               SizedBox(
//                 width: 50,
//                 child: TextField(
//                   controller: controller.qtyController,
//                   onChanged: (value) {
//                     debugPrint("ONCHANGE VALUE $value")
//                   },
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               // SizedBox(
//               //   width: 50,
//               //   child: Text(
//               //     '${controller.cartProduct[index].quantity}',
//               //     textAlign: TextAlign.center,
//               //     style: TextStyle(
//               //       fontSize: 16.0,
//               //       color: Colors.black,
//               //       fontWeight: FontWeight.w600,
//               //     ),
//               //   ),
//               // ),
//               GestureDetector(
//                 onTap: (controller.cartProduct[index].quantity! > 1) &&
//                         (controller.cartProduct[index].quantity ==
//                             controller.cartProduct[index].stock)
//                     ? null
//                     : () {
//                         controller.plusMinus(
//                           section: 'plus',
//                           cartId: controller.cartProduct[index].id,
//                         );
//                       },
//                 child: SvgPicture.asset(
//                   'assets/icons/add-one.svg',
//                   height: 20,
//                   width: 20,
//                   color: (controller.cartProduct[index].quantity! > 1) &&
//                           (controller.cartProduct[index].quantity ==
//                               controller.cartProduct[index].stock)
//                       ? null
//                       : null,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Row productDetail(int index, context) {
//     return Row(
//       children: [
//         Container(
//           width: 100,
//           height: 100,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//           ),
//           child: CachedNetworkImage(
//             imageUrl:
//                 '${controller.api.content}/product/${controller.cartProduct[index].imageUrl}',
//             fit: BoxFit.fill,
//             placeholder: (context, url) => Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SizedBox(
//                   height: 20,
//                   width: 20,
//                   child: CircularProgressIndicator(),
//                 ),
//               ],
//             ),
//             errorWidget: (context, url, error) => Image.asset(
//               'assets/images/bannerImage.png',
//               fit: BoxFit.fill,
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 10,
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width / 2.3,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 controller.cartProduct[index].typePressure ??
//                     controller.cartProduct[index].category ??
//                     '',
//                 maxLines: 1,
//                 overflow: TextOverflow.clip,
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 12,
//                 ),
//               ),
//               SizedBox(height: 5),
//               Text(
//                 controller.cartProduct[index].name ?? '',
//                 maxLines: 2,
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 softWrap: true,
//                 overflow: TextOverflow.clip,
//               ),
//               SizedBox(height: 10),
//               controller.cartProduct[index].discountedPrice != null
//                   ? Padding(
//                       padding: const EdgeInsets.only(bottom: 5.0),
//                       child: Text(
//                         NumberFormat.currency(
//                           decimalDigits: 0,
//                           symbol: 'Rp ',
//                         ).format(
//                           controller.cartProduct[index].discountedPrice ?? 0,
//                         ),
//                         maxLines: 1,
//                         overflow: TextOverflow.clip,
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     )
//                   : Container(),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(right: 10.0),
//                     child: Text(
//                       controller.cartProduct[index].normalPrice != null
//                           ? NumberFormat.currency(
//                               decimalDigits: 0,
//                               symbol: 'Rp ',
//                             ).format(
//                               controller.cartProduct[index].normalPrice,
//                             )
//                           : '',
//                       style: TextStyle(
//                         fontSize:
//                             controller.cartProduct[index].discountedPrice !=
//                                     null
//                                 ? 10
//                                 : 12,
//                         decoration:
//                             controller.cartProduct[index].discountedPrice !=
//                                     null
//                                 ? TextDecoration.lineThrough
//                                 : TextDecoration.none,
//                         decorationThickness: 1.0,
//                         color: controller.cartProduct[index].discountedPrice !=
//                                 null
//                             ? Colors.black54
//                             : Colors.black,
//                       ),
//                     ),
//                   ),
//                   controller.cartProduct[index].discountedPrice != null
//                       ? Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 3,
//                             vertical: 2,
//                           ),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(2)),
//                             color: Colors.red[800],
//                           ),
//                           child: WinnGeneralText(
//                             title: "${controller.cartProduct[index].discount}%",
//                             fontSize: 10,
//                             fontWeight: FontWeight.normal,
//                             textAlign: TextAlign.center,
//                             border: TextDecoration.none,
//                           ),
//                         )
//                       : Container(),
//                 ],
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }

//   Widget buildSelectAll(context) {
//     print("DATA CHECKOUT TRUE ${controller.selectedItemCheckout}");
//     return Container(
//       color: Colors.white,
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 10.0),
//             child: Checkbox(
//               value: controller.selectedAll,
//               onChanged: (value) {
//                 controller.checkAll();
//               },
//               checkColor: Colors.white,
//               activeColor: primaryColor,
//             ),
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width / 1.3,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 WinnGeneralText(
//                   title: 'Select All',
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                   colorTitle: Color(0xffAAAAAA),
//                   textAlign: TextAlign.start,
//                   border: TextDecoration.none,
//                 ),
//                 GestureDetector(
//                   // onTap: () {
//                   //   controller.delete(context);
//                   // },
//                   onTap: controller.selectedItemCheckout
//                       ? () {
//                           controller.delete(context);
//                         }
//                       : null,
//                   child: SizedBox(
//                     width: MediaQuery.of(context).size.width / 4,
//                     child: WinnGeneralText(
//                       title: 'Delete',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       // colorTitle: Colors.red,
//                       colorTitle: controller.selectedItemCheckout
//                           ? Colors.red
//                           : Colors.grey,
//                       textAlign: TextAlign.end,
//                       border: TextDecoration.none,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// class PriceQuantityWidget extends StatefulWidget {
//   final int index;
//   PriceQuantityWidget({Key? key, required this.index}) : super(key: key);

//   @override
//   State<PriceQuantityWidget> createState() => _PriceQuantityWidgetState();
// }

// class _PriceQuantityWidgetState extends State<PriceQuantityWidget> {
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
//         _textEditingController.text = controller.cartProduct[widget.index].quantity;
//         return Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width / 3,
//                 child: Text(
//                   // ("${controller.qtyController.value} pcs"),
//                   ("${controller.cartProduct[widget.index].quantity} Pcs"),
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
//                     onTap: (controller.cartProduct[widget.index].quantity! < 2)
//                         ? null
//                         : () {
//                             controller.plusMinus(
//                               section: 'minus',
//                               cartId: controller.cartProduct[widget.index].id,
//                             );
//                           },
//                     child: SvgPicture.asset(
//                       'assets/icons/reduce-one.svg',
//                       height: 20,
//                       width: 20,
//                       color: controller.cartProduct[widget.index].quantity! < 2
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
//                     onTap: (controller.cartProduct[widget.index].quantity! > 0) &&
//                             (controller.cartProduct[widget.index].quantity ==
//                                 controller.cartProduct[widget.index].stock)
//                         ? null
//                         : () {
//                             controller.plusMinus(
//                               section: 'plus',
//                               cartId: controller.cartProduct[widget.index].id,
//                             );
//                             // setState(() {
//                             //   qty;
//                             // });
//                           },
//                     child: SvgPicture.asset(
//                       'assets/icons/add-one.svg',
//                       height: 20,
//                       width: 20,
//                       color: (controller.cartProduct[widget.index].quantity! > 0) &&
//                               (controller.cartProduct[widget.index].quantity ==
//                                   controller.cartProduct[widget.index].stock)
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
