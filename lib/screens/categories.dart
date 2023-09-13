import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  Widget _buildCategoryButton(String imagePath, String categoryName) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: TextButton(
          onPressed: () {
            // Add functionality here for button press action
          },
          child: Column(
            children: [
              Image.asset(
                imagePath,
                height: 100,
              ),
              SizedBox(height: 8), // Add spacing between image and text
              Text(categoryName),
            ],
          ),
          style: TextButton.styleFrom(primary: Colors.blue),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Categories')),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // First row of categories
            Row(
              children: [
                _buildCategoryButton('assets/Tablets.jpg', 'Tablets'),
                SizedBox(width: 16),
                _buildCategoryButton('assets/Capsules.jpg', 'Capsules'),
                SizedBox(width: 16),
                _buildCategoryButton('assets/Syrups.jpg', 'Syrups'),
              ],
            ),
            SizedBox(height: 16), // Spacing between the first and second rows
            // Second row of categories
            Row(
              children: [
                _buildCategoryButton('assets/Solutions.jpg', 'Solutions'),
                SizedBox(width: 16),
                _buildCategoryButton('assets/suspensions.png', 'Suspensions'),
                SizedBox(width: 16),
                _buildCategoryButton('assets/powder.jpg', 'Powders'),
              ],
            ),
            SizedBox(height: 16), // Spacing between the second and third rows
            // Third row of categories
            Row(
              children: [
                _buildCategoryButton('assets/inhalers.jpg', 'Inhalers'),
                SizedBox(width: 16),
                _buildCategoryButton('assets/patches.jpg', 'Patches'),
                SizedBox(width: 16),
                _buildCategoryButton('assets/Tablets.jpg', 'Other'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}















