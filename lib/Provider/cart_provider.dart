import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardProvider with ChangeNotifier{
  int _counter = 0;
  int get counter => _counter;

  double _totalPrice = 0;
  double get totalPrice => _totalPrice;

  void _setPrefItems()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('cart_item', _counter);
    prefs.setDouble('total_price', _totalPrice);
    notifyListeners();
  }

  void _getPrefItems()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('cart_item') ?? 0;
    _totalPrice = prefs.getDouble('total_price') ?? 0.0;
    notifyListeners();
  }

  void addCounter(){
    _counter ++;
    _setPrefItems();
    notifyListeners();
  }

  void removeCounter(){
    _counter --;
    _setPrefItems();
    notifyListeners();
  }

  void getCounter(){
    _getPrefItems();
    notifyListeners();
  }

  void addTotalPrice(double productPrice){
    _totalPrice = _totalPrice + productPrice;
    _setPrefItems();
    notifyListeners();
  }

  void removeTotalPrice(double productPrice){
    _totalPrice = _totalPrice - productPrice;
    _setPrefItems();
    notifyListeners();
  }

  double getTotalPrice(){
    _getPrefItems();
    return _totalPrice;
  }
}