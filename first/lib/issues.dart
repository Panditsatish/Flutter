import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Cart(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Item> items = [
    Item(title: 'laptop ', price: 500.0),
    Item(title: 'iphone x ', price: 400.0),
    Item(title: 'keyboard ', price: 40.0),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, cart, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Shopping cart'),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CheckoutPage()));
                    },
                  ),
                  Text(cart.count.toString())
                ],
              ),
            )
          ],
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index].title),
              subtitle: Text(items[index].price.toString()),
              trailing: Icon(Icons.add),
              onTap: () {
                cart.add(items[index]);
              },
            );
          },
        ),
      );
    });
  }
}
class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Checkout Page [\$ ${cart.totalPrice}]'),
              actions: [
                TextButton(
                    onPressed: () {
                      print(cart.totalPrice);
                    },
                    child: Text('Check'))
              ],
            ),
            body: cart.basketItems.length == 0
                ? Text('no items in your cart')
                : ListView.builder(
              itemCount: cart.basketItems.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(cart.basketItems[index].title),
                    subtitle: Row(
                      children: [
                        TextButton(onPressed: () {}, child: Text('+')),
                        Text(cart.basketItems[index].qty.toString()),
                        TextButton(onPressed: () {}, child: Text('-')),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        cart.remove(cart.basketItems[index]);
                      },
                    ),
                  ),
                );
              },
            ));
      },
    );
  }
}
class Item {
  String title;
  double price;
  Item({required this.title, required this.price});

  get qty => 1;
}
class Cart extends ChangeNotifier {
  List<Item> _items = [];
  double _totalPrice = 0.0;

  void add(Item item) {
    _items.add(item);
    _totalPrice += item.price;
    notifyListeners();
  }

  void remove(Item item) {
    _totalPrice -= item.price;
    _items.remove(item);
    notifyListeners();
  }

  int get count {
    return _items.length;
  }

  double get totalPrice {
    return _totalPrice;
  }

  List<Item> get basketItems {
    return _items;
  }
}