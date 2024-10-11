part of '../page.dart';

class Product {
  final String imageUrl;
  final String category;
  final String name;
  final String price;

  Product({
    required this.imageUrl,
    required this.category,
    required this.name,
    required this.price,
  });
}

class shoesPage extends StatefulWidget {
  const shoesPage({super.key});

  @override
  State<shoesPage> createState() => _shoesPageState();
}

class _shoesPageState extends State<shoesPage> {
  List<Product> items = [
    Product(
      imageUrl: "assets/images/shoescat/samba-og-black.png",
      category: "Men Originals",
      name: "SAMBA OG - BLACK",
      price: "Rp. 2.200.000",
    ),
    Product(
      imageUrl: "assets/images/shoescat/samba-og-white.png",
      category: "Men Originals",
      name: "SAMBA OG - WHITE",
      price: "Rp. 2.200.000",
    ),
    Product(
      imageUrl: "assets/images/shoescat/sl-72-rs-green.png",
      category: "Men Originals",
      name: "SL 72 RS - GREEN",
      price: "Rp. 1.600.000",
    ),
    Product(
      imageUrl: "assets/images/shoescat/sl-72-rs-blue.png",
      category: "Men Originals",
      name: "SL 72 RS - BLUE",
      price: "Rp. 2.200.000",
    ),
    Product(
      imageUrl: "assets/images/shoescat/gazelle-trainers.png",
      category: "Men Originals",
      name: "GAZELLE TRAINERS",
      price: "Rp. 2.000.000",
    ),
    Product(
      imageUrl: "assets/images/shoescat/samba-adv-black.png",
      category: "Men Originals",
      name: "ADV - BLACK",
      price: "Rp. 2.200.000",
    ),
    Product(
      imageUrl: "assets/images/shoescat/samba-og-blue.png",
      category: "Men Originals",
      name: "SAMBA OG - BLUE",
      price: "Rp. 2.200.000",
    ),
    Product(
      imageUrl: "assets/images/shoescat/samba-og-green.png",
      category: "Men Originals",
      name: "SAMBA OG - GREEN",
      price: "Rp. 2.200.000",
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
          return GestureDetector(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => detailPage()));
              });
            },
            child: Container(
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
            ),
          );
        },
        itemCount: 8,
      ),
    );
  }
}
