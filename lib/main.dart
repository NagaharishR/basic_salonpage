import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(BasicSalon());
}

class BasicSalon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Green's Salon",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "image/greens.jpeg",
                fit: BoxFit.cover,
                height: 400,
                width: 150,
              ),
              SizedBox(height: 10),
              Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Rating',
                        style: TextStyle(fontSize: 22),
                      ),
                      RatingBar.builder(
                        initialRating: 3.5,
                        minRating: 0.5,
                        allowHalfRating: true,
                        itemBuilder: (context, index) => Icon(
                          Icons.favorite,
                          color: Colors.deepPurple,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                        itemSize: 30,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      ),
                    ]),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Get styled by Green's Salon, one of India's leading unisex salon chains. We offer personalized beauty & styling services delivered by the best certified experts",
                  style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Material(
                  color: Colors.green,
                  elevation: 6,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Ink.image(
                          image: AssetImage('image/haircut.jpeg'),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Haircut",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Material(
                  color: Colors.green,
                  elevation: 6,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Ink.image(
                          image: AssetImage('image/facial.jpeg'),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Facial",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Material(
                  color: Colors.green,
                  elevation: 6,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Ink.image(
                          image: AssetImage('image/colouring.jpeg'),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Colouring",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 40)),
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          primary: Colors.green,
                          side: BorderSide(width: 2, color: Colors.black)),
                      child: Text(
                        "Book Your Appointment",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
