import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(primaryColor: const
      Color(0xFF207d84)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF207d84),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.drag_handle_sharp),
            onPressed: (){

            },
          )
        ],

        title: Row(
          children: [
            Image.asset(
              'assets/hysab_kytab_logo.jpg', // Replace with your logo asset path
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 8),
            const Text('Hysab Kytab'),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: const Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white, // Set the text color to white
                  ),
                ),
                onTap: () {
                  // Handle navigation to home
                },
              ),
              ListTile(
                title: const Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.white, // Set the text color to white
                  ),
                ),
                onTap: () {
                   // builder: (context) => AboutUs()),
                  // Handle navigation to about page
                },
              ),
              ListTile(
                title: const Text(
                  'Products',
                  style: TextStyle(
                    color: Colors.white, // Set the text color to white
                  ),
                ),
                onTap: () {
                  // Handle navigation to contact page
                },
              ),
              ListTile(
                title: const Text(
                  'Resources',
                  style: TextStyle(
                    color: Colors.white, // Set the text color to white
                  ),
                ),
                onTap: () {
                  // Handle navigation to contact page
                },
              ),
              ListTile(
                title: const Text(
                  'News & Media',
                  style: TextStyle(
                    color: Colors.white, // Set the text color to white
                  ),
                ),
                onTap: () {
                  // Handle navigation to contact page
                },
              ),
              ListTile(
                title: const Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.white, // Set the text color to white
                  ),
                ),
                onTap: () {
                  // Handle navigation to contact page
                },
              ),
              ListTile(
                title: const Text(
                  'Contact Us',
                  style: TextStyle(
                    color: Colors.white, // Set the text color to white
                  ),
                ),
                onTap: () {
                  // Handle navigation to contact page
                },
              ),
              // Add more items as needed
            ],
          ),
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color(0xFF207d84),
              padding: const EdgeInsets.all(52),
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(text: 'THE\n', style: TextStyle(fontSize: 55)),
                    TextSpan(text: 'PLATFORM\n', style: TextStyle(fontSize: 50)),
                    TextSpan(text: 'THAT\n', style: TextStyle(fontSize: 55)),
                    TextSpan(text: 'HELPS\n', style: TextStyle(fontSize: 55)),
                    TextSpan(text: 'YOU\n', style: TextStyle(fontSize: 55)),
                    TextSpan(
                      text: 'ACTUALLY\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                    ),
                    WidgetSpan(
                      child: SizedBox(height: 20), // Add space between text
                    ),
                    TextSpan(text: 'SAVE\n', style: TextStyle(fontSize: 55)),
                    WidgetSpan(
                      child: SizedBox(height: 80), // Add space between text
                    ),
                    TextSpan(
                      text: 'Smart money management and stress-free spending',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Image.asset(
              'assets/mobile.jpeg',
              height: 400,
              width: 200,
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: 270,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Smart Money Management',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Image.asset(
              'assets/mobile3.png',
              height: 300,
              width: 250,
            ),
            const SizedBox(height: 80),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/budget.jpg',
                        height: 50,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Budget Planner',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Create a personalized budget plan and keep track of your income and expenses.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/expense.jpg',
                        height: 50,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Expense Tracker',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Get a bird-eye view of your financial activities, track expenses and understand spending patterns.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/savings.jpg',
                        height: 50,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Saving Goals',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Purpose fuels passion! Give your money management a purpose by setting saving goals for all your dreams.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/charts.jpg',
                        height: 50,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Charts & Reports',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Get a one-window view of all your finances and visualize your data with easy-to-read charts & reports.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            AllCountersWidget(),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: const Text(
                'Smart Money\nManagement',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.teal,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ImageSliderWidget(),
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/hysab_kytab.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.all(60),
              child: Column(
                children: [
                  const Text(
                    'Download Now!\nWhat are you waiting for?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle App Store button press
                        },
                        icon: Image.asset(
                          'assets/apple_icon.png',
                          height: 25,
                          width: 25,
                        ),
                        label: const Text('Download on the\nApp Store'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle Google Play button press
                        },
                        icon: Image.asset(
                          'assets/google_play.png',
                          height: 25,
                          width: 25,
                        ),
                        label: const Text('Android App on\nGoogle Play'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Align icons to the center
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle Facebook icon press
                    },
                    icon: Image.asset(
                      'assets/facebook.jpg',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle Snapchat icon press
                    },
                    icon: Image.asset(
                      'assets/snapchat.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle Instagram icon press
                    },
                    icon: Image.asset(
                      'assets/instagram.jpg',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle LinkedIn icon press
                    },
                    icon: Image.asset(
                      'assets/linkedin.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle Twitter icon press
                    },
                    icon: Image.asset(
                      'assets/twitter.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/copyright.png',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 4),
                const Text(
                  'Copyright 2021 Hysab Kytab',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: const Text(
                'Privacy Policy | Terms & Conditions',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Rest of the code remains the same...

// Rest of the code remains the same...
class AllCountersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20), // Add padding to the container
      color: Color(0xFF207d84)  ,
      child: const Column(
        children: [
          CounterWidget(
            labelText: 'Downloads',
            endValue: 6400000,
            animationDuration: Duration(milliseconds: 7000),
          ),
          SizedBox(height: 75),
          CounterWidget(
            labelText: 'Transactions',
            endValue: 12000000,
            animationDuration: Duration(milliseconds: 7000),
          ),
          SizedBox(height: 75),
          CounterWidget(
            labelText: 'Countries',
            endValue: 160,
            animationDuration: Duration(milliseconds: 8000),
          ),
          SizedBox(height: 75),
          CounterWidget(
            labelText: 'Budgets',
            endValue: 623000,
            animationDuration: Duration(milliseconds: 7000),
          ),
        ],
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  final String labelText;
  final int endValue;
  final Duration animationDuration;

  const CounterWidget({
    required this.labelText,
    required this.endValue,
    required this.animationDuration,
  });

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
    _animation = IntTween(begin: 0, end: widget.endValue).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10), // Add padding between text and container
            child: Text(
              widget.labelText,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget? child) {
              return Text(
                _animation.value.toString(),
                style: const TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ImageSliderWidget extends StatefulWidget {
  @override
  _ImageSliderWidgetState createState() => _ImageSliderWidgetState();
}

class _ImageSliderWidgetState extends State<ImageSliderWidget> {
  final List<String> imageList = [
    'assets/accounts.png', // Replace with your first slider image asset path
    'assets/Add_transaction.png', // Replace with your second slider image asset path
    'assets/categories.png',
    'assets/saving_goals.png',
    'assets/charts_reports.png',
    'assets/transaction_history.png',
    'assets/smart_budgets.png',// Replace with your third slider image asset path
  ];

  final List<String> sliderTitles = [
    'Accounts',
    'Add Transaction',
    'Categories',
    'Saving Goals',
    'Charts and Reports',
    'Transaction History',
    'Smart Budgets'
  ];

  final List<String> sliderDescriptions = [
    'All accounts in one place. Know where your money goes.',
    'Record daily transactions in just a few taps.',
    'Let us categories your expenses so that you can understand where your money goes.',
    'Create saving goals and track the progress to achieve them.',
    'Get your data visualized so that you can track your money effortlessly',
    'Record expenses and get a clear picture of where you are spending most',
    'Set a monthly budget , stay on track and always know how much you have left to spend'
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          sliderTitles[_currentIndex],
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        Container(
          width: 320, // Set the width to full width of the screen
          height: 320,
          child: PageView.builder(
            itemCount: imageList.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                imageList[index],
                fit: BoxFit.fitHeight,
              );
            },
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
        Text(
          sliderDescriptions[_currentIndex],
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(height: 22),
      ],
    );
  }
}
