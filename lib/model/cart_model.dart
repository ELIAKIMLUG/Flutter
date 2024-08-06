import 'package:flutter/material.dart';
class CartModel extends ChangeNotifier {
  //List of items on sale;
  final List _shopItems = [
    //[ itemName , itemPrice , imagePath ,color ]
    ["Avocado","34.55","lib/images/tshirt.png",Colors.green],
      ["Avocado","34.55","lib/images/tshirt.png",Colors.green],
        ["Avocado","34.55","lib/images/tshirt.png",Colors.green],
          ["Avocado","34.55","lib/images/tshirt.png",Colors.green],
  ];
  //List of cart Items;
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;


//add items to cart

void addItemToCart(int index){
  _cartItems.add(_shopItems[index]);
  notifyListeners();
}



//remove items from cart
void removeItemFromCart(int index){
  _cartItems.remove(index);
  notifyListeners();
}

//  calculate total price
String calculateTotal(){
  double totalPrice = 0.0;
  for(int i=0;i<_cartItems.length;i++) {
    totalPrice += double.parse(_cartItems[i] [1]);
  } 
  return totalPrice.toStringAsFixed(2);
}







}