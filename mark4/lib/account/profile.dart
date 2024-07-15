import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: screenWidth * 0.9,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          '...',
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                          width: screenWidth * 0.5,
                          height: screenWidth * 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.person_alt_circle,
                            color: Colors.pink,
                            size: 24.0,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Name: Robert Downey Jr.',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.mail_solid,
                            color: Colors.grey,
                            size: 18.0,
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Text(
                              'Email: Jr1997@gmail.com',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.red,
                            size: 24.0,
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Text(
                              'Favourites',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.location_solid,
                            color: Colors.blue,
                            size: 24.0,
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/2404039743464a5f84fdc3a6de2ac6d6ecc79ebe36fa40f1b97c0ddfde33049c?',
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
