import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  // список вещей на распродаже
  final List _shopItems = [
    // [ itemName, itemPrice, imageSmallPath, imageBigPath description]
    ["Checkered shopper", "4.00", "lib/assets/shopper1.jpg", "30х20 centimeters\n100% acrylic"],
    ["Shopper in a flower", "2.50", "lib/assets/shopper2.jpg", "25х20 centimeters\n100% viscose"],
    ["Shopper with hearts", "12.80", "lib/assets/shopper3.jpg", "30х25 centimeters\nViscose and cotton"],
  ];

  //массив для товаров в корзине
  List _cartItems =[];

  //метод для получения списка
  get shopItems => _shopItems;
  //вывод списка товаров в корзине
  get cartItems => _cartItems;

  //метод добавления товара в массив товаров в корзине
  void addItemToCart(int index) { //index - какой товар доабвляем
    _cartItems.add(_shopItems[index],);
    notifyListeners(); //помогает другим виджетам обновлять данные
  }

  //метод удаления товаров
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
  //метод расчета итоговой стоимости
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length;i++) {
      totalPrice += double.parse(_cartItems[i][1],);
    }
    return totalPrice.toStringAsFixed(2); //два знака после запятой
  }
}