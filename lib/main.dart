import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const ContentScreen(),
    );
  }
}

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 64),
              alignment: Alignment.center,
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: 
                // AssetImage('photos/Titus.jpg'),
                NetworkImage("url")
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'General Titus',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Staatliches',
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Ultramarine General',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Text("Strength"),
                    Text(
                      "5000",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 30,
                  color: Colors.black,
                ),
                const Column(
                  children: [
                    Text("Health"),
                    Text(
                      "40.000",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 30,
                  color: Colors.black,
                ),
                const Column(
                  children: [
                    Text("Luck"),
                    Text(
                      "0",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Demetrian Titus is a former Firstborn captain and commander of the Ultramarines 2nd Company and later a Primaris Marine lieutenant of the same company who has fought for the Imperium of Man for more than 200 Terran years. His exploits earned him a reputation as one of the greatest heroes of the Ultramarines. Despite his relative youth by the standards of the Adeptus Astartes, he was already a decorated Veteran of several major campaigns waged across the galaxy by his Chapter. One of Titus' last known campaigns before his disappearance occurred upon the Forge World of Graia where he helped launch a successful defence from an assault by an Ork WAAAGH! led by the Warboss Grimskull and then a subsequent Chaos invasion commanded by the Chaos Sorcerer Nemeroth and his Chosen of Nemeroth warband of Heretic Astartes. Showing an unnatural affinity to shrug off attacks made using the powers of the Warp by the forces of Chaos during the Liberation of Graia, Titus was taken into custody on suspicion of heresy by the Inquisition after the end of that campaign. Subsequently, he vanished from all official Imperial records for almost a standard century. By the Emperor's will, the wayward Titus was miraculously returned to the Ultramarines in the Era Indomitus and cleared of all charges. He proceeded to cross the Rubicon Primaris and was transformed into a Primaris Space Marine. Reassigned to the 2nd Company, he was unfortunately reduced to the rank of lieutenant so as not to bring discord to the Ultramarines' existing hierarchy. Titus cared not for the reduction in status, he was grateful just to be deemed worthy to serve the Chapter once more.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
