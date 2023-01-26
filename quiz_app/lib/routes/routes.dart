import 'package:quiz_app/screens/about.dart';
import 'package:quiz_app/screens/home.dart';
import 'package:quiz_app/screens/login.dart';
import 'package:quiz_app/screens/profile.dart';
import 'package:quiz_app/screens/topics.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/about': (context) => const AboutScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen()
};
