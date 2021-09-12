import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restau Booking',
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [SearchSection(), RestauSection()]),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
            size: 20,
          )),
      actions: [
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey[800],
              size: 20,
            )),
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.place,
              size: 20,
              color: Colors.grey[800],
            ))
      ],
      title: Text(
        'Explore',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.black,
          fontSize: 22,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          color: Colors.grey,
                          offset: Offset(0, 4))
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Cotonou',
                      border: InputBorder.none),
                ),
              )),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4, color: Colors.grey, offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.search,
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                      primary: Colors.pink),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose Date',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      '12 Dec - 22 Dec',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 17),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Number of Rooms',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      '1 Rooms - 2 Adult',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RestauSection extends StatelessWidget {
  final List restauList = [
    {
      'title': 'La Marina',
      'place': 'Cotonou, Agontikon',
      'review': 35,
      'distance': 2,
      'picture': 'images/restau1.jpg',
      'price': '180'
    },
    {
      'title': 'Novotel',
      'place': 'Cotonou, Agontikon',
      'review': 35,
      'distance': 2,
      'picture': 'images/restau2.jpg',
      'price': '180'
    },
    {
      'title': 'La Famille',
      'place': 'Cotonou, Agontikon',
      'review': 35,
      'distance': 2,
      'picture': 'images/restau3.jpg',
      'price': '180'
    },
    {
      'title': 'Royaum des Food',
      'place': 'Cotonou, Agontikon',
      'review': 35,
      'distance': 2,
      'picture': 'images/restau4.jpg',
      'price': '180'
    },
    {
      'title': 'Le Regale',
      'place': 'Cotonou, Agontikon',
      'review': 35,
      'distance': 2,
      'picture': 'images/restau5.jpg',
      'price': '180'
    },
    {
      'title': 'Chez Tata Diane',
      'place': 'Cotonou, Agontikon',
      'review': 35,
      'distance': 2,
      'picture': 'images/restau3.jpg',
      'price': '180'
    },
    {
      'title': 'Les Français',
      'place': 'Cotonou, Agontikon',
      'review': 35,
      'distance': 2,
      'picture': 'images/restau4.jpg',
      'price': '180'
    },
    {
      'title': 'King Food',
      'place': 'Cotonou, Agontikon',
      'review': 35,
      'distance': 2,
      'picture': 'images/restau1.jpg',
      'price': '180'
    },
    {
      'title': 'Le Bon Coin',
      'place': 'Cotonou, Agontikon',
      'review': 35,
      'distance': 2,
      'picture': 'images/restau2.jpg',
      'price': '180'
    },
    {
      'title': 'Erevane Hotel',
      'place': 'Cotonou, Agontikon',
      'review': 35,
      'distance': 2,
      'picture': 'images/restau5.jpg',
      'price': '180'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('550 Restaurents founds Filters',
                  style: TextStyle(fontSize: 15)),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.filter_list_outlined,
                    color: Colors.pink[200],
                    size: 30,
                  ))
            ],
          ),
          Column(
            children: restauList.map((restau) {
              return RestauCard(restau);
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class RestauCard extends StatelessWidget {
  final Map data;
  RestauCard(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 240,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 4,
                blurRadius: 6,
                offset: Offset(0, 4)),
          ],
        ),
        child: Column(children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              image: DecorationImage(
                  image: AssetImage(data['picture']), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 5,
                    right: -15,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.pink[300],
                      ),
                      color: Colors.white,
                      shape: CircleBorder(),
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data['title'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                Text(
                  "\$" + data['price'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data['place'],
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.place,
                        size: 18,
                        color: Colors.pink[200],
                      ),
                      Text(data['distance'].toString() + "km de city",
                          style: TextStyle(color: Colors.grey, fontSize: 14))
                    ],
                  ),
                ),
                Text("/per night",
                    style: TextStyle(color: Colors.grey, fontSize: 14))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              children: [
                Container(
                  child: Row(children: [
                    Icon(Icons.star, color: Colors.pink[200], size: 15),
                    Icon(Icons.star, color: Colors.pink[200], size: 15),
                    Icon(Icons.star, color: Colors.pink[200], size: 15),
                    Icon(Icons.star, color: Colors.pink[200], size: 15),
                    Icon(Icons.star, color: Colors.pink[200], size: 15),
                    Text(
                      data['review'].toString() + "reviews",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    )
                  ]),
                ),
              ],
            ),
          )
        ]));
  }
}

class HotelCard extends StatelessWidget {
  final Map restauData;
  HotelCard(this.restauData);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Image.asset(
            restauData['picture'],
            height: 200,
            fit: BoxFit.cover,
            width: 350,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              restauData['title'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              "£" + restauData['price'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(restauData['place'],
                style: TextStyle(color: Colors.grey, fontSize: 16)),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.place,
                    size: 18,
                    color: Colors.pink[200],
                  ),
                  Text(restauData['distance'].toString() + "km de city",
                      style: TextStyle(color: Colors.grey, fontSize: 16))
                ],
              ),
            ),
            Text("/per night",
                style: TextStyle(color: Colors.grey, fontSize: 16))
          ],
        ),
        Row(
          children: [
            Container(
              child: Row(children: [
                Icon(
                  Icons.star,
                  color: Colors.pink[200],
                ),
                Icon(
                  Icons.star,
                  color: Colors.pink[200],
                ),
                Icon(
                  Icons.star,
                  color: Colors.pink[200],
                ),
                Icon(
                  Icons.star,
                  color: Colors.pink[200],
                ),
                Icon(
                  Icons.star,
                  color: Colors.pink[200],
                ),
              ]),
            ),
            Text(
              restauData['review'].toString() + "reviews",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}
