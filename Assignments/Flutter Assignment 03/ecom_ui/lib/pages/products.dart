import 'package:flutter/material.dart';

class ProductSceeen extends StatelessWidget {
  const ProductSceeen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Ecom App UI',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          child: Column(
            children: [
              SingleProduct(
                productName: 'Iphone 12',
                rating: 5,
                noOfReviews: 23,
                noOfPiece: 20,
                price: 200,
                quantity: 3,
                scale: 10,
                img: 'assets/images/iphone12.jpg',
              ),
              SingleProduct(
                productName: 'Note 20 Ultra',
                rating: 5,
                noOfReviews: 23,
                noOfPiece: 20,
                price: 200,
                scale: 8,
                quantity: 3,
                img: 'assets/images/note20ultra.jpg',
              ),
              SingleProduct(
                productName: 'Mabook Air',
                rating: 5,
                noOfReviews: 23,
                noOfPiece: 20,
                scale: 6,
                price: 200,
                quantity: 3,
                img: 'assets/images/macbookair.jpg',
              ),
              SingleProduct(
                productName: 'Mabook Pro',
                rating: 5,
                scale: 13,
                noOfReviews: 23,
                noOfPiece: 20,
                price: 200,
                quantity: 3,
                img: 'assets/images/macbookpro.jpg',
              ),
              SingleProduct(
                productName: 'Gaming Pc',
                rating: 5,
                scale: 8,
                noOfReviews: 23,
                noOfPiece: 20,
                price: 200,
                quantity: 3,
                img: 'assets/images/gamingpc.jpg',
              ),
              SingleProduct(
                productName: 'Infinix Hot S3X',
                rating: 5,
                scale: 2.5,
                noOfReviews: 23,
                noOfPiece: 20,
                price: 200,
                quantity: 3,
                img: 'assets/images/infinixhots3x.jpg',
              ),
              SingleProduct(
                productName: 'POCO S3',
                rating: 5,
                scale: 6,
                noOfReviews: 23,
                noOfPiece: 20,
                price: 200,
                quantity: 3,
                img: 'assets/images/pocos3.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String productName;
  final double rating;
  final int noOfReviews;
  final int noOfPiece;
  final int price;
  final int quantity;
  final String img;
  final double scale;

  SingleProduct(
      {this.productName,
      this.rating,
      this.noOfReviews,
      this.noOfPiece,
      this.price,
      this.scale,
      this.quantity,
      this.img});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(4),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Image.asset(
              this.img,
              scale: this.scale,
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(this.productName,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 2),
                    Text(this.rating.toString()),
                    SizedBox(width: 4),
                    Text('(${this.noOfReviews} Reviews)')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('${this.noOfPiece} Pieces'),
                    SizedBox(width: 12),
                    Text(
                      '\$${this.price}',
                      style: TextStyle(color: Colors.blue, fontSize: 17),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Quantity: ${this.quantity}',
                      textAlign: TextAlign.start,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
