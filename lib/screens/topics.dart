import 'package:flutter/material.dart';
import 'package:quiz_app/services/firestore.dart';
import 'package:quiz_app/services/models.dart';
import 'package:quiz_app/widgets/bottom_nav.dart';

import '../widgets/error.dart';
import '../widgets/loading.dart';
import 'topic_item.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Topic>>(
        future: FirestoreService().getTopics(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingScreen();
          } else if (snapshot.hasError) {
            return Center(
                child: ErrorMessage(message: snapshot.error.toString()));
          } else if (snapshot.hasData) {
            var topics =
                snapshot.data!; //assertion operator to make sure its not null

            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurple,
                title: const Text('Topics'),
              ),
              body: GridView.count(
                  //adds fixed number of items in the grid view
                  primary: false,
                  padding: const EdgeInsets.all(10.0),
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  children: topics.map((topic) => TopicItem(topic: topic)).toList()),
              bottomNavigationBar: const BottomNavBar(),
            );
          } else {
            return const Text(
                'No topics found in firestore, try checking your database');
          }
        });
  }
}
