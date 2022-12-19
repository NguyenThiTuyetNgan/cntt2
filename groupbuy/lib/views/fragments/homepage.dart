import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:groupbuy/models/items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          shopBanner(),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Phiên hết hạn sau:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF013003)),
              ),
              SizedBox(
                width: 30,
              ),
              timeBox(),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          gridProducts(),
        ],
      ),
    );
  }
}

class shopBanner extends StatefulWidget {
  const shopBanner({Key? key}) : super(key: key);
  State<shopBanner> createState() => _shopBannerState();
}

class _shopBannerState extends State<shopBanner> {
  int activeIndex = 0;
  final imgBanner = [
    'assets/home/banner1.jpg',
    'assets/home/banner2.jpg',
    'assets/home/banner3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            itemCount: imgBanner.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              final _imgBanner = imgBanner[index];
              return buildImage(_imgBanner, index);
            },
            options: CarouselOptions(
              height: 150,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 7,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
              onPageChanged: (index, reaspn) =>
                  setState(() => activeIndex = index),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildImage(String imgBanner, int index) => Container(
          child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //set border radius to 50% of square height and width
          image: DecorationImage(
            image: AssetImage(imgBanner),
            fit: BoxFit.cover, //change image fill type
          ),
        ),
      ));

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imgBanner.length,
        effect: SlideEffect(
            spacing: 5.0,
            radius: 4.0,
            dotWidth: 10.0,
            dotHeight: 2.0,
            dotColor: Colors.grey.shade300,
            activeDotColor: Colors.grey),
      );
}

class timeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Text(
            '24',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                background: Paint()
                  ..strokeWidth = 19
                  ..color = Color(0xFF013003)
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
          ),
          Spacer(),
          Text(
            ':',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            '24',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                background: Paint()
                  ..strokeWidth = 19
                  ..color = Color(0xFF013003)
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
          ),
          Spacer(),
          Text(
            ':',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            '24',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                background: Paint()
                  ..strokeWidth = 19
                  ..color = Color(0xFF013003)
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
          ),
        ],
      ),
    );
  }
}

class gridProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemsName.length,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          mainAxisExtent: 200),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: GestureDetector(
            // onTap: ()=> Navigator.of(context). push(MaterialPageRoute(builder: (_) => )),
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(itemsImg[index]), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          itemsName[index].toUpperCase(),
                          style: TextStyle(fontSize: 13, color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          softWrap: false,
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          itemsPrice[index],
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          itemsBought[index],
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
