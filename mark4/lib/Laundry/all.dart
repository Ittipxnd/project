import 'package:flutter/material.dart';

void main() => runApp(const PageLaundry());

class PageLaundry extends StatelessWidget {
  const PageLaundry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 164, 214, 255),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // ช่องค้นหาที่ด้านบนสุด
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onChanged: (value) {
                    // Handle search logic here
                    print('Search Query: $value');
                  },
                ),
              ),
            ),
            // รายการผลิตภัณฑ์
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildProductRow(
                      context,
                      [
                        ProductData(
                          image: const AssetImage('assets/image/laundry.jpg'),
                          productName: 'Laundry',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PageLaundry()),
                            );
                          },
                        ),
                        ProductData(
                          image: const AssetImage('assets/image/hair.jpg'),
                          productName: 'Hair Shampoo',
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => PageLaundry()),
                            // );
                          },
                        ),
                        ProductData(
                          image: const AssetImage('assets/image/snack.jpg'),
                          productName: 'Snack',
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => PageLaundry()),
                            // );
                          },
                        ),
                        ProductData(
                          image: const AssetImage('assets/image/mama.jpg'),
                          productName: 'Instant Noodle',
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => PageLaundry()),
                            // );
                          },
                        ),
                        ProductData(
                          image: const AssetImage('assets/image/milk-1.jpg'),
                          productName: 'Milk',
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => PageLaundry()),
                            // );
                          },
                        ),
                      ],
                    ),
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
                    _buildProductRow(
                      context,
                      [
                        ProductData(
                          image: const NetworkImage(
                            'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/84/48/4893049120084/4893049120084_1-20240625120130-.jpg',
                          ),
                          productName:
                              'ริทซ์ แครกเกอร์ สอดไส้ครีมรสชีส 27 ก. แพ็ค 12',
                          onPressed: () {},
                        ),
                        ProductData(
                          image: const NetworkImage(
                            'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/25/88/8850987143625/8850987143625_1-20240305181413-.jpg',
                          ),
                          productName:
                              'มาม่า บะหมี่กึ่งสำเร็จรูป รสหมูสับต้มยำน้ำข้น 60 ก. แพ็ค 10',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    _buildProductRow(
                      context,
                      [
                        ProductData(
                          image: const NetworkImage(
                            'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/09/76/7622201450809/7622201450809_1-20240620174106-.jpg',
                          ),
                          productName:
                              'แคดเบอรีแดรีมิลค์วิทโอรีโอ15ก.แพ็ค10ซอง',
                          onPressed: () {},
                        ),
                        ProductData(
                          image: const NetworkImage(
                            'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/76/49/4987176209276/4987176209276-20240515162357-.jpg',
                          ),
                          productName:
                              'ดาวน์นี่น้ำยาซักผ้าซันไรท์เฟรชคลีน460มล.แพ็ค2',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    _buildProductRow(
                      context,
                      [
                        ProductData(
                          image: const NetworkImage(
                            'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/29/88/8851932431729/8851932431729_1-20240424160111-.jpg',
                          ),
                          productName:
                              'ริทซ์ แครกเกอร์ สอดไส้ครีมรสชีส 27 ก. แพ็ค 12',
                          onPressed: () {},
                        ),
                        ProductData(
                          image: const NetworkImage(
                            'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/25/88/8850987143625/8850987143625_1-20240305181413-.jpg',
                          ),
                          productName:
                              'มาม่า บะหมี่กึ่งสำเร็จรูป รสหมูสับต้มยำน้ำข้น 60 ก. แพ็ค 10',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    _buildProductRow(
                      context,
                      [
                        ProductData(
                          image: const NetworkImage(
                            'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/84/48/4893049120084/4893049120084_1-20240625120130-.jpg',
                          ),
                          productName:
                              'ริทซ์ แครกเกอร์ สอดไส้ครีมรสชีส 27 ก. แพ็ค 12',
                          onPressed: () {},
                        ),
                        ProductData(
                          image: const NetworkImage(
                            'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/25/88/8850987143625/8850987143625_1-20240305181413-.jpg',
                          ),
                          productName:
                              'มาม่า บะหมี่กึ่งสำเร็จรูป รสหมูสับต้มยำน้ำข้น 60 ก. แพ็ค 10',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build a row of products
  Widget _buildProductRow(
    BuildContext context,
    List<ProductData> products,
  ) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: products
            .map((product) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ProductCard(
                    image: product.image,
                    productName: product.productName,
                    onPressed: product.onPressed,
                    width: 80.0,
                    height: 80.0,
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
  final VoidCallback onPressed;

  ProductData({
    required this.image,
    required this.productName,
    required this.onPressed,
  });
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
    this.width = 60.0, // Default width
    this.height = 60.0, // Default height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
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
