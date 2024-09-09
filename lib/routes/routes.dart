import 'package:connectapp/view/connections_screen.dart';
import 'package:connectapp/view/createevent_screen.dart';
import 'package:connectapp/view/event_screen.dart';
import 'package:connectapp/view/groupchat_screen.dart';
import 'package:connectapp/view/home_screen.dart';
import 'package:connectapp/view/information_screen.dart';
import 'package:connectapp/view/navbar.dart';
import 'package:connectapp/view/test.dart';
import 'package:get/get.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(name: '/home', page: () => const HomeScreen()),
    GetPage(name: '/connections', page: () => const ConnectionsScreen()),
    GetPage(name: '/event', page: () => const EventScreen()),
    GetPage(name: '/information', page: () => const InformationScreen()),
    GetPage(name: '/groupchat', page: () => const GroupchatScreen()),
    GetPage(name: '/createevent', page: () => const CreateEventScreen()),
    GetPage(name: '/navbar', page: () => const Navbar()),
    GetPage(name: '/test', page: () => const Test()),
  ];
}
