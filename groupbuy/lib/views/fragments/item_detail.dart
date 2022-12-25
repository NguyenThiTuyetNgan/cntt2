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
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    height: 70,
                    color: Colors.green.shade900,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Expanded(
                                child: Text(
                                  '70.000d',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade300,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '7.000đ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Expanded(
                                child: Text(
                                  '10 sản phẩm được đặt mua',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      'Kết thúc trong:',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '24:00:00',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),
                  Container(
                    height: 140,
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Bông lan trứng muối mặn quá trời quá đất',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            maxLines: 3,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                                child: Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.lightGreen,
                              size: 15,
                            )),
                            TextSpan(
                                text:
                                    "Cần thêm 3 đơn hàng nữa để đạt giá thấp nhất",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black))
                          ])),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Lớp xôi không quá dày, chiên giòn rộm, nhân đầy ụ đậm đà thêm thêm sốt chua ngọt vị vừa phải.',
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade700),
                    ),
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
