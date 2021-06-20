import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        color: Colors.grey.withOpacity(0.2),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Items', style: TextStyle(fontSize: 18)),
                Text(
                  'View More',
                  style: TextStyle(color: Colors.purple),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              // height: 300,
              // width: 400,
              child: ListView(
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  homeBannerItem(
                    context,
                    img: 'assets/images/note20ultra.jpg',
                    title: 'Note 12 Ultra',
                    noOfRating: 5,
                    reviews: 23,
                  ),
                  homeBannerItem(context,
                      img: 'assets/images/macbookair.jpg',
                      title: 'Macbook Air',
                      noOfRating: 5,
                      // scale: 2.6,
                      reviews: 38),
                  homeBannerItem(context,
                      img: 'assets/images/macbookpro.jpg',
                      title: 'Macbook Pro',
                      // scale: 5.8,
                      noOfRating: 5,
                      reviews: 18),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget homeBannerItem(BuildContext context,
      {String img,
      String title,
      double noOfRating,
      int reviews,
      double scale}) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      width: MediaQuery.of(context).size.width * 0.95,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Image.asset(
                img,
                scale: scale,
                alignment: Alignment.centerLeft,
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.only(left: 4, top: 4),
              child: Text(
                title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 4, bottom: 8),
              child: Row(
                children: [
                  Icon(Icons.star_rate, color: Colors.yellow, size: 18),
                  Icon(Icons.star_rate, color: Colors.yellow, size: 18),
                  Icon(Icons.star_rate, color: Colors.yellow, size: 18),
                  Icon(Icons.star_rate, color: Colors.yellow, size: 18),
                  Icon(Icons.star_rate, color: Colors.yellow, size: 18),
                  SizedBox(width: 4),
                  Text(noOfRating.toString(), style: TextStyle(fontSize: 14)),
                  SizedBox(width: 4),
                  Text('($reviews Reviews)', style: TextStyle(fontSize: 14))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
