import 'package:flutter/material.dart';
import 'package:resume/pages/contact_page.dart';
import 'package:resume/pages/experience_page.dart';
import 'package:resume/pages/home_page.dart';
import 'package:resume/pages/portfolio_page.dart';
import 'package:resume/pages/team_page.dart';
import 'package:resume/utils/AppColors.dart';
import 'package:resume/utils/AppIcons.dart';
import 'package:resume/widgets/navigation_menu_widget.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(), // Thème par défaut
      darkTheme: ThemeData.dark(), // Thème sombre par défaut
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedMenuIndex = 0;
  bool isDarkMode = false; // État du mode sombre/claire

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedMenuIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 40.0;
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: isDarkMode ? Colors.black87 : backgroundLight,
        body: Container(
          margin: EdgeInsets.only(top: 10, left: 10),
          child: Row(
            children: <Widget>[
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 280,
                      height: 280,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child:  ClipOval(
                          child: Image.asset(
                            "assets/DSC_0734.jpg",
                            width: 280,
                            height: 280,
                            fit: BoxFit.cover, // Pour ajuster l'image dans le cadre ovale
                          ),
                        )

                    ),
                    NavigationMenu(navHome,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 0, onClick: () {
                          _tabController.animateTo(0);
                        }),
                    NavigationMenu(navTime,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 1, onClick: () {
                          _tabController.animateTo(1);
                        }),
                    NavigationMenu("assets/school-bag.svg",
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 2, onClick: () {
                          _tabController.animateTo(2);
                        }),
                    NavigationMenu(navPortfolio,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 3, onClick: () {
                          _tabController.animateTo(3);
                        }),

                    NavigationMenu(navContact,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 4, onClick: () {
                          _tabController.animateTo(4);
                        }),
                    IconButton(
                      icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
                      onPressed: () {
                        setState(() {
                          // Inverse le mode sombre/clair
                          isDarkMode = !isDarkMode;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      HomePage(),
                      ExperiencePage(),
                      TeamPage(),
                      PortfolioPage(),
                      ContactPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
