import 'package:connectapp/routes/routes.dart';
import 'package:connectapp/view/connections_screen.dart';
import 'package:connectapp/view/createevent_screen.dart';
import 'package:connectapp/view/event_screen.dart';
import 'package:connectapp/view/groupchat_screen.dart';
import 'package:connectapp/view/home_screen.dart';
import 'package:connectapp/view/information_screen.dart';
import 'package:connectapp/view/navbar.dart';
import 'package:connectapp/view/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: '/navbar',
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      // home: HomeScreen(),
      home: const Navbar(),
      // home: GroupchatScreen(),
      // home: CreateEventScreen(),
      // home: Test(),
      
    );
  }
}
// final routes = [
//   GetPage(name: '/home', page: () => const HomeScreen()),
//   GetPage(name: '/connections', page: () => const ConnectionsScreen()),
//   GetPage(name: '/event', page: () => const EventScreen()),
//   GetPage(name: '/information', page: () => const InformationScreen()),
//   GetPage(name: '/groupchat', page: () => const GroupchatScreen()),
//   GetPage(name: '/createevent', page: () => const CreateEventScreen()),
//   GetPage(name: '/test', page: () => const Test()),
// ];
