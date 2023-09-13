import 'package:flutter/material.dart';

void main() {
  runApp(Valley());
}

class Valley extends StatelessWidget {
  const Valley({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.shopping_cart),
          title: Text('Pharmacity'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 150,
                      child: buildCard(
                        title: 'Pending Orders',
                        color: Color.fromARGB(255, 6, 130, 231),
                        textColor: Colors.white,
                      ),
                    ),
                    SizedBox(width: 16),
                    SizedBox(
                      width: 200,
                      height: 150,
                      child: buildCard(
                        title: 'Processing Orders',
                        color: Colors.purple,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 150,
                      child: buildCard(
                        title: 'Confirmed Orders',
                        color: Color.fromARGB(255, 24, 204, 33),
                        textColor: Colors.white,
                      ),
                    ),
                    SizedBox(width: 16),
                    SizedBox(
                      width: 200,
                      height: 150,
                      child: buildCard(
                        title: 'Out of Delivery',
                        color: Colors.red,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              buildSectionTitle('Completed Orders', Colors.blue),
              SizedBox(height: 16),
              buildIconRow(
                iconData: Icons.star,
                iconColor: Colors.yellow,
                title: '',
              ),
              SizedBox(height: 16),
              buildIconRow(
                iconData: Icons.cancel,
                iconColor: Colors.red,
                title: '',
              ),
              SizedBox(height: 16),
              buildIconRow(
                iconData: Icons.location_city,
                iconColor: Colors.yellow,
                title: '',
              ),
              SizedBox(height: 16),
              buildIconRow(
                iconData: Icons.report,
                iconColor: Colors.red,
                title: '',
              ),
              SizedBox(height: 16),
              buildActionRow(
                title: 'Stock Out Products',
                subtitle: 'View All',
                iconData: Icons.arrow_circle_right,
                titleColor: Colors.blue,
                subtitleColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard({
    required String title,
    required Color color,
    required Color textColor,
  }) {
    return Card(
      color: color,
      child: Container(
        height: 150,
        width: 200,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 20, color: textColor),
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title, Color titleColor) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, color: titleColor),
    );
  }

  Widget buildIconRow({
    required IconData iconData,
    required Color iconColor,
    required String title,
  }) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('$title tapped.');
        },
        child: Row(
          children: [
            Icon(
              iconData,
              color: iconColor,
            ),
            SizedBox(width: 8),
            SizedBox(
              width: 200,
              height: 20,
              child: Text(
                title,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildActionRow({
    required String title,
    required String subtitle,
    required IconData iconData,
    required Color titleColor,
    required Color subtitleColor,
  }) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('$title tapped.');
        },
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, color: titleColor),
            ),
            Spacer(),
            Text(
              subtitle,
              style: TextStyle(fontSize: 17, color: subtitleColor),
            ),
            Icon(iconData),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
