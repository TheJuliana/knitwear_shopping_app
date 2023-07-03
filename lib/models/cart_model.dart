import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  // список вещей в наличии  / List of items in stock
  final List _shopItems = [
    // [ itemName, itemPrice, imageSmallPath, imageBigPath description]
    ["Checkered shopper", "4.00", "lib/assets/shopper1.jpg", "lib/assets/shopper1_full.jpg", "30х20 centimeters\n100% acrylic"],
    ["Shopper in a flower", "2.50", "lib/assets/shopper2.jpg", "lib/assets/shopper2_full.jpg","25х20 centimeters\n100% viscose"],
    ["Shopper with hearts", "12.80", "lib/assets/shopper3.jpg","lib/assets/shopper3_full.jpg", "30х25 centimeters\nViscose and cotton"],
  ];

  //массив для товаров в корзине / List for items in the cart
  List _cartItems =[];

  //метод для получения списка / Method to get the list
  get shopItems => _shopItems;
  //вывод списка товаров в корзине / Displaying a list of products in the cart
  get cartItems => _cartItems;

  //метод добавления товара в массив товаров в корзине / Method of adding an item to the array of items in the cart
  void addItemToCart(int index) { //index - какой товар добавляем / What product do we add
    _cartItems.add(_shopItems[index],);
    notifyListeners(); //помогает другим виджетам обновлять данные / Helps other widgets update data
  }

  //метод удаления товаров / Item Removal Method
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
  //метод расчета итоговой стоимости / Method of calculating the total cost
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length;i++) {
      totalPrice += double.parse(_cartItems[i][1],);
    }
    return totalPrice.toStringAsFixed(2); //два знака после запятой / two decimal places
  }
}