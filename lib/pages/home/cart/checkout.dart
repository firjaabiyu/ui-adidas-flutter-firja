import 'package:adidas/pages/home/complete-order/complete.dart';
import 'package:flutter/material.dart';

class paymentMethod {
  final IconData icons;
  final String method;
  final String desk;

  paymentMethod({
    required this.icons,
    required this.method,
    required this.desk,
  });
}

class checkOutPage extends StatefulWidget {
  const checkOutPage({super.key});

  @override
  State<checkOutPage> createState() => _checkOutPageState();
}

class _checkOutPageState extends State<checkOutPage> {
  int selectedMethod = 0;

  List<paymentMethod> method = [
    paymentMethod(
      icons: Icons.attach_money,
      method: "Cash",
      desk: "Pay cash when the medicine arrives at the destination.",
    ),
    paymentMethod(
      icons: Icons.food_bank_rounded,
      method: "Bank Transfer",
      desk: "Log in to your online account and make payment",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Checkout",
        style: TextStyle(fontWeight: FontWeight.w600),
      )),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    decoration: BoxDecoration(
                        border: Border.all(
                            // color: Color(0xffc4c4c4),
                            color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shipping Address",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 13),
                              Text.rich(
                                textAlign: TextAlign.left,
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffC9C9C9),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 0),
                                        child: Text(
                                          "Home",
                                          style: TextStyle(
                                              color: Color(0xff545454)),
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                        text:
                                            ' Jl. Raya Jonggol-Dayeuh, Sukanegara, Kec. Jonggol, Kabupaten Bogor, Jawa Barat 16830',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                              const SizedBox(height: 13),
                              Row(
                                children: [
                                  Text(
                                    "Firja Abiyu",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "+62 775 994 330",
                                    style: TextStyle(
                                        color: Color(0xff878787), fontSize: 13),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: Row(
                      children: [
                        Image.asset("assets/images/shoescat/samba-og-white.png",
                            width: 100),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Samba OG - White",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            Text(
                              "Brand New, Size 43",
                              style: TextStyle(
                                color: Color(0xff8E93A4),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Text(
                                  "Rp. 2.200.000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                const SizedBox(width: 70),
                                Text(
                                  "1x",
                                  style: TextStyle(
                                    color: Color(0xff8E93A4),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Select Shipping",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                            Text(
                              "See All Options",
                              style: TextStyle(
                                color: Color(0xff8E93A4),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Express",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        "Estimated Arrived 9-10 june",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff8E93A4)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(width: 69),
                                  Text(
                                    "RP. 50.000",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Note:"),
                      //   kurang note
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Subtotal, 1 items"),
                      Text(
                        "Rp. 2.250.000",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black.withOpacity(10 / 100),
                            width: 1)),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Payment Method",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 80,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              final paymethod = method[index];
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedMethod = index;
                                  });
                                },
                                child: Container(
                                  width: 200,
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      color: selectedMethod == index
                                          ? Colors.white
                                          : Colors.white.withOpacity(10 / 100)),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(paymethod.icons, size: 20),
                                          Text(
                                            paymethod.method,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4),
                                        child: Text(
                                          paymethod.desk,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 10);
                            },
                            itemCount: 2,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 100)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 45,
            right: 45,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => completePage()));
                  });
                },
                child: Text("Check Out", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
