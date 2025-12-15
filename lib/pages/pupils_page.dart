import 'package:flutter/material.dart';
import 'package:w_phonics/widgets/page_header.dart';

class PupilsPage extends StatelessWidget {
  const PupilsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 16),

            PageHeader(
              title: "Pupils",
              actions: [
                Card(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.info_outline, color: Colors.purple),
                  ),
                ),
                const SizedBox(width: 8),
                Card(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add, color: Colors.purple),
                  ),
                ),
              ],
            ),

            const Expanded(
              child: Center(child: Text("There are no pupils yet")),
            ),
          ],
        ),
      ),
    );
  }
}
