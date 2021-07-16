import 'package:flutter/material.dart';
import 'package:test/screen/about_page.dart';
import 'package:test/screen/contact_page.dart';
import 'package:test/screen/home_page.dart';
import 'package:test/widget/custom_tab.dart';
import 'package:test/widget/custom_tab_bar.dart';
import 'package:test/widget/custom_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  
  var scaffoldKey = GlobalKey<ScaffoldState>();

  late double screenHeight;
  late double screenWidth;
  late double topPadding;
  late double bottomPadding;
  late TabController tabController;
  List<CustomView> customViews = [
    CustomView(
        tab: CustomTab(title: 'Home'),
        content: HomePage()),
    CustomView(
        tab: CustomTab(title: 'About',),
        content: AboutPage()),
    CustomView(
        tab: CustomTab(title: 'ContactUs'),
        content: ContactPage()),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: customViews.length, vsync: this);
  }

  
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    topPadding = screenHeight * 0.05;
    bottomPadding = screenHeight * 0.01;

    return Scaffold(
      backgroundColor: Color(0xff1e1e24),
      endDrawer: drawer(),
      key: scaffoldKey,
      body: Padding(
        padding: EdgeInsets.only(bottom: bottomPadding, top: topPadding),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 715) {
              return desktopView();
            } else {
              return mobileView();
            }
          },
        ),
      ),
    );
  }

  Widget desktopView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(
            controller: tabController,
            tabs: customViews.map((e) => e.tab).toList()),
        Container(
          height: screenHeight * 0.85,
          child: TabBarView(
            controller: tabController,
            children: customViews.map((e) => e.content).toList(),
          ),
        )
      ],
    );
  }

  Widget mobileView() {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.05),
      child: Container(
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
              icon: Icon(Icons.menu_rounded),
              iconSize: screenWidth * 0.08,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: [Container( height: screenHeight * 0.1,)] + customViews.map((e) => Container(
          child: ListTile(title: Text(e.tab.title), 
          onTap: () {},),
        )).toList(),
      ),
    );
  }
}