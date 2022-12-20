import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);
  static const String routeName = '/item_detail';
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/home/mon1.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Bông lan trứng muối mặn quá trời quá đất',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          maxLines: 2,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '7.000đ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Lớp xôi không quá dày, chiên giòn rộm, nhân đầy ụ đậm đà thêm thêm sốt chua ngọt vị vừa phải.',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                  )
                ]),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              height: 90,
              padding: EdgeInsets.all(20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      // onPressed: () {},
                      onPressed: null,
                      child: FaIcon(
                        FontAwesomeIcons.minus,
                        size: 10,
                      ),
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.green.shade900,
                          primary: Colors.lightGreen.shade50,
                          onSurface: Colors.grey.shade600,
                          minimumSize: Size(30, 30),
                          elevation: 0.0),
                    ),
                    Text(
                      '1',
                      style: TextStyle(fontSize: 16),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: FaIcon(
                        FontAwesomeIcons.plus,
                        size: 10,
                      ),
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.green.shade900,
                          primary: Colors.lightGreen.shade50,
                          minimumSize: Size(30, 30),
                          onSurface: Colors.grey.shade600,
                          elevation: 0.0),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      // onPressed: null,
                      child: Text(
                        'Thêm vào giỏ',
                        style: TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Colors.green.shade900,
                        minimumSize: Size(180, 50),
                        onSurface: Colors.grey.shade600,
                      ),
                    ),
                  ]),
            ),
          ),
          Positioned(
              top: 30,
              child: ElevatedButton(
                child: Icon(
                  Icons.clear,
                  size: 20,
                ),
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.black54.withOpacity(0.3),
                    shape: CircleBorder(),
                    minimumSize: Size(30, 30),
                    elevation: 0.0),
              ))
        ],
      ),
    );
  }
}
