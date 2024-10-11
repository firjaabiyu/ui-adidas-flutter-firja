part of '../page.dart';

class ProductShirt {
  final String imageUrl;
  final String category;
  final String name;
  final String price;

  ProductShirt({
    required this.imageUrl,
    required this.category,
    required this.name,
    required this.price,
  });
}

class shirtPage extends StatefulWidget {
  const shirtPage({super.key});

  @override
  State<shirtPage> createState() => _shirtPageState();
}

class _shirtPageState extends State<shirtPage> {
  List<ProductShirt> items = [
    ProductShirt(
      imageUrl: "assets/images/tshirt/zne-shirt-white.png",
      category: "Men Sportwear ",
      name: "Z.N.E t-SHIRT",
      price: "Rp. 700.000",
    ),
    ProductShirt(
      imageUrl: "assets/images/tshirt/zne-shirt-teal.png",
      category: "Men Sportwear ",
      name: "Z.N.E t-SHIRT",
      price: "Rp. 700.000",
    ),
    ProductShirt(
      imageUrl: "assets/images/tshirt/zne-shirt-green.png",
      category: "Men Sportwear ",
      name: "Z.N.E t-SHIRT",
      price: "Rp. 650.000",
    ),
    ProductShirt(
      imageUrl: "assets/images/tshirt/zne-shirt-yellow.png",
      category: "Men Sportwear ",
      name: "Z.N.E t-SHIRT",
      price: "Rp. 325.000",
    ),
    ProductShirt(
      imageUrl: "assets/images/tshirt/tee-premium-blue.png",
      category: "Men Originals ",
      name: "TEE PREMIUM",
      price: "Rp. 600.000",
    ),
    ProductShirt(
      imageUrl: "assets/images/tshirt/tee-premium-pink.png",
      category: "Men Originals ",
      name: "TEE PREMIUM",
      price: "Rp. 600.000",
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
        itemCount: 6,
      ),
    );
  }
}
