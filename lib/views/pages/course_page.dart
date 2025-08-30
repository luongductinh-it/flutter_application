import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../data/classes/activity_class.dart';



class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => CoursePageState();
}

class CoursePageState extends State<CoursePage> {
  late Future<Activity> futureActivity;

  @override
  void initState() {
    super.initState();
    futureActivity = fetchActivity();
  }
// ---- Fetch API ----
Future<Activity> fetchActivity() async {
  final response = await http.get(
    Uri.parse('https://bored-api.appbrewery.com/random'),
  );

  if (response.statusCode == 200) {
    return Activity.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load activity');
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Activity Suggestion")),
      body: Center(
        child: FutureBuilder<Activity>(
          future: futureActivity,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final activity = snapshot.data!;
              return Card(
                margin: const EdgeInsets.all(16),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(activity.activity,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Text("Type: ${activity.type}"),
                      Text("Participants: ${activity.participants}"),
                      Text("Duration: ${activity.duration}"),
                      Text("Kid Friendly: ${activity.kidFriendly ? "Yes" : "No"}"),
                      Text("Accessibility: ${activity.accessibility}"),
                    ],
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
