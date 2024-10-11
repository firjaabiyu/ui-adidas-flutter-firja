part of '../page.dart';

class ProductJersey {
  final String imageUrl;
  final String category;
  final String name;
  final String price;

  ProductJersey({
    required this.imageUrl,
    required this.category,
    required this.name,
    required this.price,
  });
}

class jerseyPage extends StatefulWidget {
  const jerseyPage({super.key});

  @override
  State<jerseyPage> createState() => _jerseyPageState();
}

class _jerseyPageState extends State<jerseyPage> {
  List<ProductJersey> items = [
    ProductJersey(
      imageUrl: "assets/images/jerseys/as-roma-away.png",
      category: "Men Jerseys",
      name: "AS ROMA AWAY",
      price: "Rp. 1.200.000",
    ),
    ProductJersey(
      imageUrl: "assets/images/jerseys/arsenal-third.png",
      category: "Men Jerseys",
      name: "ARSENAL THIRD",
      price: "Rp. 1.200.000",
    ),
    ProductJersey(
      imageUrl: "assets/images/jerseys/blueslike-purp.png",
      category: "Men Jerseys",
      name: "BLUESLIKE TEAM",
      price: "Rp. 900.000",
    ),
    ProductJersey(
      imageUrl: "assets/images/jerseys/blueslike-red.png",
      category: "Men Jerseys",
      name: "BLUESLIKE TEAM",
      price: "Rp. 900.000",
    ),
    ProductJersey(
      imageUrl: "assets/images/jerseys/mu-third.png",
      category: "Men Jerseys",
      name: "MU THIRD",
      price: "Rp. 2.000.000",
    ),
    ProductJersey(
      imageUrl: "assets/images/jerseys/realmadrid-third.png",
      category: "Men Jerseys",
      name: "REAL MADRID",
      price: "Rp. 2.000.000",
    ),
    ProductJersey(
      imageUrl: "assets/images/jerseys/juventus-away.png",
      category: "Men Jerseys",
      name: "JUVENTUS AWAY",
      price: "Rp. 1.200.000",
    ),
    ProductJersey(
      imageUrl: "assets/images/jerseys/newcastle-away.png",
      category: "Men Jerseys",
      name: "NEW CASTLE AWAY",
      price: "Rp. 1.200.000",
    ),
    ProductJersey(
      imageUrl: "assets/images/jerseys/bellingham.png",
      category: "Men Jerseys",
      name: "BELLINGHAM",
      price: "Rp. 1.200.000",
    ),
    ProductJersey(
      imageUrl: "assets/images/jerseys/jamaica-24-home.png",
      category: "Men Jerseys",
      name: "JAMAICA 24 HOME",
      price: "Rp. 1.200.000",
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return Container(
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
                Image.asset(item.imageUrl),
                const SizedBox(height: 10),
                Text(
                  item.category,
                  style: TextStyle(
                    color: Color(0xff4E4E4E),
                  ),
                ),
                const SizedBox(height: 7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(item.price),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
