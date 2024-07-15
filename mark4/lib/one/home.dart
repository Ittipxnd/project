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
                const Text(
                  'หมวดหมู่ผลิตภัณฑ์',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        imageUrl: 'https://via.placeholder.com/153',
                        productName: 'Product 1',
                      ),
                      const SizedBox(width: 8),
                      ProductCard(
                        imageUrl: 'https://via.placeholder.com/153',
                        productName: 'Product 2',
                      ),
                      const SizedBox(width: 8),
                      ProductCard(
                        imageUrl: 'https://via.placeholder.com/153',
                        productName: 'Product 3',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        imageUrl: 'https://via.placeholder.com/153',
                        productName: 'Product 4',
                      ),
                      const SizedBox(width: 8),
                      ProductCard(
                        imageUrl: 'https://via.placeholder.com/153',
                        productName: 'Product 5',
                      ),
                      const SizedBox(width: 8),
                      ProductCard(
                        imageUrl: 'https://via.placeholder.com/153',
                        productName: 'Product 6',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    ProductCard(
                      imageUrl: 'https://via.placeholder.com/153',
                      productName: 'Product 4',
                    ),
                    const SizedBox(height: 8),
                    ProductCard(
                      imageUrl: 'https://via.placeholder.com/153',
                      productName: 'Product 5',
                    ),
                    const SizedBox(height: 8),
                    ProductCard(
                      imageUrl: 'https://via.placeholder.com/153',
                      productName: 'Product 6',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          width: 153,
          height: 153,
          fit: BoxFit.cover,
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
    );
  }
}
