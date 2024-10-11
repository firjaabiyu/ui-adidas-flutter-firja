import 'package:adidas/pages/home/cart/checkout.dart';
import 'package:adidas/pages/home/cart/test.dart';
import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  // int selectedIndex = 0;


  // bool _isActive = false;
  //
  // void _checkButton(){
  //   setState(() {
  //     _isActive = !_isActive;
  //   });
  // }



  Set<int> _activeCart = Set<int>();

  void _ontapCart(int index) {
    setState(() {
      if (_activeCart.contains(index)){
        _activeCart.remove(index);
      }else{
        _activeCart.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            bool isActive = _activeCart.contains(index);
            return GestureDetector(
              onTap: () => _ontapCart(index),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/shoescat/samba-og-white.png",
                      width: 105,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Men Originals",
                          style: TextStyle(
                              color: Color(0xff4E4E4E),
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "SAMBA OG - WHITE",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "Size : 43",
                          style: TextStyle(
                              color: Color(0xff4E4E4E),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Rp.2.200.000",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                            Icons.check_box,
                            size: 20,
                            color: isActive ? Colors.black : Color(0xffD4D3CF),
                        ),
                        SizedBox(height: 57),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(color: Color(0xffD4D3CF)),
                              child: Text("-"),
                            ),
                            SizedBox(width: 4),
                            Text("1"),
                            SizedBox(width: 4),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(color: Color(0xffD4D3CF)),
                              child: Text("+"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 10);
          },
          itemCount: 1,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total 1 Item",
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    "Rp. 2.200.000",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => checkOutPage()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(color: Colors.black),
                  child: Text(
                    "Check Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
