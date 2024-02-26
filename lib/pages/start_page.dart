import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Notfiers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  fixedSize: Size(200, 55),
                  backgroundColor: Colors.cyanAccent,
                  foregroundColor: Colors.amber,
                  shape: const ContinuousRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(22, 22)))),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Student"),
            ),
            const SizedBox(
              height: 44,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  fixedSize: Size(200, 55),
                  backgroundColor: Colors.cyanAccent,
                  foregroundColor: Colors.amber,
                  shape: const ContinuousRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(22, 22)))),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Teacher"),
            ),
          ],
        ),
      ),
    );
    //ElevatedButton(onPressed: (){}, child: const Text("Student"),)
  }
}
