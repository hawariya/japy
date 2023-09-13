import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Details(),
  ));
}

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isSwitched = false; // Initial value for the switch

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Delivery Man Details'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Overview'),
              Tab(text: 'Order History'),
              Tab(text: 'Earnings'), // Add the third tab
            ],
          ),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value; // Update the switch state
                  // You can add code here to handle the switch toggle.
                });
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [
            // Content for Tab 1 (Over View)
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Online Notification Button at the right-top end
                          Align(
                            alignment: Alignment.topRight,
                            child: TextButton.icon(
                              onPressed: () {
                                // Add the action to be performed when the online notification button is pressed
                                // For example, you can show a status change dialog.
                              },
                              icon: Icon(
                                Icons.check_circle,
                                color: Colors.greenAccent,
                              ),
                              label: Text(
                                'Online',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10, // Add some spacing between the buttons
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  // Add the action to be performed when the edit icon is pressed
                                  // For example, you can navigate to an edit screen.
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.blue, // Set the edit icon color
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                onPressed: () {
                                  // Add the action to be performed when the delete icon is pressed
                                  // For example, you can show a confirmation dialog before deleting.
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color:
                                      Colors.red, // Set the delete icon color
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 16.0),
                  Card(
                    color: Colors.blue[900],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 200.0),
                          Text(
                            '',
                          ),
                          SizedBox(height: 16.0),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                // Define the action to be taken when the button is pressed
                                // For example, you can navigate to another screen or perform an action.
                              },
                              child: Text(
                                'Collect Cash',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 16.0),

                  // Second Card - Withdrawable Balance
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.wallet, // Replace with your desired icon
                        color: Colors.green, // Set the icon color
                      ),
                      title: Text(
                        'Current Balance',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Customize the content for the "Current Balance" card here
                    ),
                  ),

                  // Third Card - Pending Withdraw
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons
                            .account_balance_wallet, // Replace with your desired icon
                        color: Colors.blue, // Set the icon color
                      ),
                      title: Text(
                        'Withdrawable Balance',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Customize the content for the "Withdrawable Balance" card here
                    ),
                  ),

                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.pending, // Replace with your desired icon
                        color: Colors.orange, // Set the icon color
                      ),
                      title: Text(
                        'Pending Withdraw ',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Customize the content for the "Pending Withdraw" card here
                    ),
                  ),

                  Card(
                    child: ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons
                                .attach_money, // Replace with your desired icon
                            color: Colors.green, // Set the icon color
                          ),
                          SizedBox(
                              width:
                                  8.0), // Add some spacing between the icon and text
                          Text(
                            'Total Withdrawn ',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      // Customize the content for the "Total Withdrawn" card here
                    ),
                  ),

                  // Four Additional Cards

                  SizedBox(height: 64.0),
                ],
              ),
            ),
            // Rest of the content for Tab 1 (Over View)

            // Content for Tab 2 (Order History)
            Center(
              child: Text('Order History'),
            ),

            // Content for Tab 3 (Earnings)
            Center(
              child: Text('Earnings'),
            ),
          ],
        ),
      ),
    );
  }
}
