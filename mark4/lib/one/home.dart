import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 164, 214, 255),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 206, 232, 255),
                    borderRadius: BorderRadius.circular(48),
                  ),
                  constraints: const BoxConstraints(
                    maxWidth: 400,
                    minWidth: 300,
                    maxHeight: 300,
                    minHeight: 300,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'ข่าวสาร',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Category',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                _buildProductRow([
                  ProductData(
                    image: const AssetImage('assets/image/laundry.jpg'),
                    productName: 'Laundry',
                  ),
                  ProductData(
                    image: const AssetImage('assets/image/hair.jpg'),
                    productName: 'Hair Shampoo',
                  ),
                  ProductData(
                    image: const AssetImage('assets/image/snack.jpg'),
                    productName: 'Snack',
                  ),
                  ProductData(
                    image: const AssetImage('assets/image/mama.jpg'),
                    productName: 'Instant Noodle',
                  ),
                  ProductData(
                    image: const AssetImage('assets/image/milk-1.jpg'),
                    productName: 'Milk',
                  ),
                ]),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Featured Products',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                _buildProductRow([
                  ProductData(
                    image: NetworkImage(
                      'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/84/48/4893049120084/4893049120084_1-20240625120130-.jpg',
                    ),
                    productName:
                        'ริทซ์ แครกเกอร์ สอดไส้ครีมรสชีส 27 ก. แพ็ค 12',
                  ),
                  ProductData(
                    image: NetworkImage(
                      'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/25/88/8850987143625/8850987143625_1-20240305181413-.jpg',
                    ),
                    productName:
                        'มาม่า บะหมี่กึ่งสำเร็จรูป รสหมูสับต้มยำน้ำข้น 60 ก. แพ็ค 10',
                  ),
                ]),
                const SizedBox(height: 16),
                _buildProductRow([
                  ProductData(
                    image: NetworkImage(
                      'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/09/76/7622201450809/7622201450809_1-20240620174106-.jpg',
                    ),
                    productName: 'แคดเบอรีแดรีมิลค์วิทโอรีโอ15ก.แพ็ค10ซอง',
                  ),
                  ProductData(
                    image: NetworkImage(
                      'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/76/49/4987176209276/4987176209276-20240515162357-.jpg',
                    ),
                    productName:
                        'ดาวน์นี่น้ำยาซักผ้าซันไรท์เฟรชคลีน460มล.แพ็ค2',
                  ),
                ]),
                const SizedBox(height: 16),
                _buildProductRow([
                  ProductData(
                    image: NetworkImage(
                      'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/29/88/8851932431729/8851932431729_1-20240424160111-.jpg',
                    ),
                    productName:
                        'ริทซ์ แครกเกอร์ สอดไส้ครีมรสชีส 27 ก. แพ็ค 12',
                  ),
                  ProductData(
                    image: NetworkImage(
                      'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/25/88/8850987143625/8850987143625_1-20240305181413-.jpg',
                    ),
                    productName:
                        'มาม่า บะหมี่กึ่งสำเร็จรูป รสหมูสับต้มยำน้ำข้น 60 ก. แพ็ค 10',
                  ),
                ]),
                const SizedBox(height: 16),
                _buildProductRow([
                  ProductData(
                    image: NetworkImage(
                      'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/84/48/4893049120084/4893049120084_1-20240625120130-.jpg',
                    ),
                    productName:
                        'ริทซ์ แครกเกอร์ สอดไส้ครีมรสชีส 27 ก. แพ็ค 12',
                  ),
                  ProductData(
                    image: NetworkImage(
                      'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/25/88/8850987143625/8850987143625_1-20240305181413-.jpg',
                    ),
                    productName:
                        'มาม่า บะหมี่กึ่งสำเร็จรูป รสหมูสับต้มยำน้ำข้น 60 ก. แพ็ค 10',
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build a row of products
  Widget _buildProductRow(List<ProductData> products) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: products
            .map((product) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ProductCard(
                    image: product.image,
                    productName: product.productName,
                    width: 90,
                    height: 90,
                    onPressed: () {},
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class ProductData {
  final ImageProvider image;
  final String productName;

  ProductData({required this.image, required this.productName});
}

class ProductCard extends StatelessWidget {
  final ImageProvider image;
  final String productName;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const ProductCard({
    Key? key,
    required this.image,
    required this.productName,
    required this.onPressed,
    this.width = 50.0, // Default width
    this.height = 50.0, // Default height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10), // Rounded corners
            child: Image(
              image: image,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            productName,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
