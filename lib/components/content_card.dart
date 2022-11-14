import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({
    Key? key,
    required this.size,
    required this.index,
    required this.images,
    required this.contentPrice,
    required this.contentTitle,
    required this.contentRate,
  }) : super(key: key);

  final Size size;
  final int index;
  final String images;
  final String contentPrice;
  final String contentTitle;
  final String contentRate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        images,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14),
                    Text(
                      contentTitle,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.bodyText1,
                        color: const Color(0xFF4A4543),
                      ),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ $contentPrice",
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                            color: const Color(0xFFE3E3E3),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xFFEEA427),
                              size: 18,
                            ),
                            Text(
                              contentRate,
                              style: GoogleFonts.poppins(
                                textStyle: Theme.of(context).textTheme.caption,
                                color: const Color(0xFF9A9390),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                  ],
                ),
              )
            ],
          ),
        ),
        const Positioned(
          top: 10,
          left: 10,
          child: FavoriteWidget(),
        ),
      ],
    );
  }
}

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 12,
      width: size.width / 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Center(
        child: IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          icon: const Icon(
            Icons.favorite_border,
            color: Color(0xFFEE3127),
          ),
        ),
      ),
    );
  }
}
