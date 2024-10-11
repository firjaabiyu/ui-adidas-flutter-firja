import 'package:flutter/material.dart';
import '../cart/cart.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class sizeChart {
  final String size;

  sizeChart({required this.size});
}

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  List<sizeChart> chartSize = [
    sizeChart(size: "34"),
    sizeChart(size: "35"),
    sizeChart(size: "36"),
    sizeChart(size: "37"),
    sizeChart(size: "38"),
    sizeChart(size: "39"),
    sizeChart(size: "40"),
    sizeChart(size: "41"),
    sizeChart(size: "42"),
    sizeChart(size: "43"),
    sizeChart(size: "44"),
    sizeChart(size: "45"),
  ];

  // int _selectedIndex = -1;
  //
  // void _sizeChart(int index){
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  Set<int> _activeSize = Set<int>();

  void _ontapSize(int index){
    setState(() {
      if (_activeSize.contains(index)){
        _activeSize.remove(index); // jika sudah active, jadi non-active
      }else{
        _activeSize.add(index); // jika non-active, jadi active
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Container(
                    height: 395,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                            "assets/images/shoescat/samba-og-white.png"),
                        const SizedBox(height: 10),
                        const Text(
                          "Men Originals",
                          style: TextStyle(
                            color: Color(0xff4E4E4E),
                            fontSize: 20,
                          ),
                        ),
                        const Text(
                          "SAMBA OG - WHITE",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ), //image judul
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        "Born on the soccer field, the Samba is a timeless icon of street style. These shoes stay true to their legacy with a soft leather upper and suede overlays.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      )
                    ],
                  ),
                ), //deskripsi
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Size Chart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 7,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final chart = chartSize[index];
                            bool isActive = _activeSize.contains(index);
                            return GestureDetector(
                              onTap: () => _ontapSize(index),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: isActive
                                      ? Color(0xff000000)
                                      : Color(0xffC9C9C9),
                                ),
                                child: Center(
                                  child: Text(
                                    chart.size,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: isActive
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: 12,
                        ),
                      )
                    ],
                  ),
                ), //size chart
                const SizedBox(height: 100)
              ],
            ),
          ),
          // Elemen fixed baru
          Positioned(
            bottom: 40,
            left: 45,
            right: 45,
            child: Container(
              width: 334,
              padding: EdgeInsets.symmetric(vertical: 3),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Rp. 2.200.000",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => cartPage()));
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Text(
                            "Add Cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ), //add to cart
        ],
      ),
    );
  }
}
