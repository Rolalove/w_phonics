import 'package:flutter/material.dart';
import 'package:w_phonics/data/dummy.dart';
import 'package:w_phonics/widgets/group_item.dart';
import 'package:w_phonics/widgets/page_header.dart';

class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 16),

            PageHeader(
              title: "Lessons",
              actions: [
                Card(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings, color: Colors.pink),
                  ),
                ),
              ],
            ),

            Expanded(
              child: ListView.builder(
                itemCount: PHONICS_GROUP.length,
                itemBuilder: (context, index) {
                  return GroupItem(phonicsGroup: PHONICS_GROUP[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
