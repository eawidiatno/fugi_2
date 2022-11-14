import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui_fic/components/content.dart';
import 'package:slicing_ui_fic/components/content_card.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 5,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 120.0,
              centerTitle: false,
              title: Text(
                "Discover the most \nmodern furniture",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyText1,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF4A4543),
                ),
              ),
              backgroundColor: Colors.white,
              pinned: true,
              floating: true,
              bottom: TabBar(
                padding: const EdgeInsets.only(left: 14),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xFF9A9390),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xFF4A4543),
                isScrollable: true,
                tabs: const [
                  Tab(
                      child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                          child: Text('All'))),
                  Tab(child: Text('Living Room')),
                  Tab(child: Text('Bedroom')),
                  Tab(child: Text('Dinning Room')),
                  Tab(child: Text('Kitchen')),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 5, 5, 5),
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 35, bottom: 25),
                    child: Text(
                      'Recommended Furnitures',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: Content.contentTitle.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (() {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => const DetailItem()));
                        }),
                        child: ContentCard(
                          size: size,
                          index: index,
                          images: Content.contentPic[index],
                          contentTitle: Content.contentTitle[index],
                          contentPrice: Content.contentPrice[index].toString(),
                          contentRate: Content.contentRate[index].toString(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            const Center(
              child: Text('Cooming Soon'),
            ),
            const Center(
              child: Text('Cooming Soon'),
            ),
            const Center(
              child: Text('Cooming Soon'),
            ),
            const Center(
              child: Text('Cooming Soon'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Cooming Soon'),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Cooming Soon'),
    );
  }
}

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Cooming Soon'),
    );
  }
}
