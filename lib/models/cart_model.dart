import 'package:flutter/material.dart';

import '../pages/info_page.dart';

class CartModel extends ChangeNotifier{
  // список вещей на распродаже
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", "lib/assets/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/assets/banana.png", Colors.yellow],
    ["Chicken", "12.80", "lib/assets/chicken.png", Colors.brown],
    ["Water", "1.00", "lib/assets/water.png", Colors.blue],
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