import 'package:flutter/material.dart';
import 'package:test/directstores/direct_stores_page.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  void openUrl(String url) async {
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'could not open url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(
                "assets/images/banner.jpg",
                // fit: BoxFit.cover,
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.all(50),
                    child: Text(
                      'Contact us',
                      style: TextStyle(
                          fontSize: 58,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      'National Hotline: 092-246-1255',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                "Direct Stores",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: MediaQuery.of(context).size.height *0.65,
              child: DirectStoresPage(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, bottom: 50),
            child: Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.black,
                        alignment: Alignment.topLeft,
                        child: Center(
                          child: Image.asset(
                            "assets/images/map.jpg",
                            width: 700,
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      // color: Colors.amberAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              fontSize: 40
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            'DISRAPTOR CO., LTD.',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Tel : 092-246-1255',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Office : 8 ซอยวิภาวดีรังสิต 36 แขวงจตุจักร เขตจตุจักร กรุงเทพมหานคร',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Email : Whgroup.99@gmail.com',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Line : @whitehouse.99',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Facebook : facebook.com/pg/quickwashThailand/',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Service time : 9:00-18:00',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  child: RaisedButton(
                                    elevation: 0.0,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(30.0)
                                    ),
                                    padding: EdgeInsets.only(
                                      top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
                                      onPressed: () {
                                        openUrl('https://lin.ee/4eRkkBZDC');
                                      },
                                      child: new Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          new Image.asset(
                                            'assets/images/line.png',
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10.0),
                                            child: new Text(
                                              "Line  ",
                                              style: TextStyle(
                                                fontSize: 15.0, fontWeight: FontWeight.bold
                                              ),
                                            )
                                          )
                                        ],
                                      ),
                                      textColor: Color(0xFF292929),
                                      color: Colors.green
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  child: RaisedButton(
                                    elevation: 0.0,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(30.0)
                                    ),
                                    padding: EdgeInsets.only(
                                      top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
                                      onPressed: () {
                                        openUrl('https://de-de.facebook.com/pg/quickwashThailand/posts/?ref=page_internal');
                                      },
                                      child: new Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          new Image.asset(
                                            'assets/images/facebook.png',
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10.0),
                                            child: new Text(
                                              "Facebook  ",
                                              style: TextStyle(
                                                fontSize: 15.0, fontWeight: FontWeight.bold
                                              ),
                                            )
                                          )
                                        ],
                                      ),
                                      textColor: Color(0xFF292929),
                                      color: Colors.blue
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            child: Row(
              children: [
                Flexible(
                  child: Center(
                    child: Container(
                      // color: Colors.amberAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextButton(onPressed: () {}, child: Text("Worry-free decoration", style: TextStyle(fontSize: 14, color: Colors.black),)),
                          SizedBox(height: 10,),
                          TextButton(onPressed: () {}, child: Text("Selected Package", style: TextStyle(fontSize: 14, color: Colors.black),)),
                          SizedBox(height: 10,),
                          TextButton(onPressed: () {}, child: Text("Online showroom", style: TextStyle(fontSize: 14, color: Colors.black),)),
                          SizedBox(height: 10,),
                          TextButton(onPressed: () {}, child: Text("Decoration case", style: TextStyle(fontSize: 14, color: Colors.black),)),
                          SizedBox(height: 10,),
                          TextButton(onPressed: () {}, child: Text("Effect picture", style: TextStyle(fontSize: 14, color: Colors.black),)),
                          SizedBox(height: 10,),
                          TextButton(onPressed: () {}, child: Text("Star designer", style: TextStyle(fontSize: 14, color: Colors.black),)),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextButton(onPressed: () {}, child: Text("Quality Assurance", style: TextStyle(fontSize: 14, color: Colors.black),)),
                            SizedBox(height: 10,),
                            TextButton(onPressed: () {}, child: Text("Big-name building materials", style: TextStyle(fontSize: 14, color: Colors.black),)),
                            SizedBox(height: 10,),
                            TextButton(onPressed: () {}, child: Text("Construction guarantee", style: TextStyle(fontSize: 14, color: Colors.black),)),
                            SizedBox(height: 10,),
                            TextButton(onPressed: () {}, child: Text("Worry-free service", style: TextStyle(fontSize: 14, color: Colors.black),)),
                            SizedBox(height: 10,),
                            TextButton(onPressed: () {}, child: Text("Acceptance Criteria", style: TextStyle(fontSize: 14, color: Colors.black),)),
                            SizedBox(height: 10,),
                            TextButton(onPressed: () {}, child: Text("Follow us", style: TextStyle(fontSize: 14, color: Colors.black),)),
                            SizedBox(height: 10,),
                            TextButton(onPressed: () {}, child: Text("brand power", style: TextStyle(fontSize: 14, color: Colors.black),)),
                            SizedBox(height: 10,),
                            TextButton(onPressed: () {}, child: Text("Brand Dynamics", style: TextStyle(fontSize: 14, color: Colors.black),)),
                            SizedBox(height: 10,),
                            TextButton(onPressed: () {}, child: Text("New home improvement experience", style: TextStyle(fontSize: 14, color: Colors.black),)),
                    
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text("the public", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          SizedBox(height: 12,),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Center(
                              child: Image.asset(
                                "assets/images/01.png",
                                width: 100,
                              ),
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text("Home improvement APP", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          SizedBox(height: 12,),
                          Container(
                            // color: Colors.black,
                            alignment: Alignment.topLeft,
                            child: Center(
                              child: Image.asset(
                                "assets/images/02.png",
                                width: 100,
                              ),
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  "Copyrights © 2020 All Rights Reserved by Disraptor DISRAPTOR CO., LTD.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  ),
                ),
              ),
            ),
          )
        ],  
      ),
    );
  }
}
