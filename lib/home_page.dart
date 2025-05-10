import 'package:flutter/material.dart';
import 'package:fluttertimeline/components/my_timeline_tile.dart';
import 'package:fluttertimeline/components/my_timeline_tile.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 50.0),
        child: ListView(
          children: const [
            // start of timeline
            MyTimelineTile(
              isFirst: true, 
              isLast: false, 
              isPast: true,
              eventCard: Text("Opening Ceremony",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            // middle of timeline
             MyTimelineTile(
              isFirst: false, 
              isLast: false, 
              isPast: true,
              eventCard: Text("Main Event",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
             ),
            // end of timeline
             MyTimelineTile(
              isFirst: false, 
              isLast: true, 
              isPast: false,
              eventCard: Text("Ending Ceremony",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}