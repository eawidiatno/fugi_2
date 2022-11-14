import 'package:flutter/material.dart';
import 'package:slicing_ui_fic/bottomNav.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.sort,
            size: 22.0,
            color: Color(0xFF4A4543),
          ),
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Color(0xFF4A4543),
            letterSpacing: 1.0,
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              size: 22.0,
              color: Color(0xFF4A4543),
            ),
          ),
        ],
      ),
      body: SafeArea(child: pages[pageIndex]),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            inkData(0, Icons.home_outlined),
            inkData(1, Icons.shopping_cart_outlined),
            inkData(2, Icons.star_outline),
            inkData(3, Icons.person_outline)
          ],
        ),
      ),
    );
  }

  Widget inkData(int i, icons) {
    return Ink(
      decoration: pageIndex == i
          ? ShapeDecoration.fromBoxDecoration(BoxDecoration(
              color: Colors.brown, borderRadius: BorderRadius.circular(10)))
          : null,
      child: IconButton(
        enableFeedback: false,
        onPressed: () {
          setState(() {
            pageIndex = i;
          });
        },
        icon: pageIndex == i
            ? Icon(
                icons,
                color: Colors.white,
              )
            : Icon(
                icons,
                color: Colors.grey,
              ),
      ),
    );
  }
}
