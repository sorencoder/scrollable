import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';
import '../models/models.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    return FutureBuilder(
        // 2
        future: mockService.getExploreData(),
        // 3
        builder: (context, snapshot) {
          // TODO: Add Nested List Views
          // 4
          if (snapshot.connectionState == ConnectionState.done) {
            // 5
            // var recipes = snapshot.data.todayRecipes;
            // TODO: Replace this with TodayRecipeListView
            return Center(
                child: Container(child: Text("Show Today Recipe List View")));
          } else {
            // 6
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
