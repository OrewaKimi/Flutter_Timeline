import 'package:flutter/material.dart';
import 'package:fluttertimeline/components/event_card.dart';
import 'package:timeline_tile/timeline_tile.dart'; // Ganti package

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;

  const MyTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.eventCard,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // gap between timeline events
      height: 150,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        // decoration of timeline
        beforeLineStyle: LineStyle(
          color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
          thickness: 3,
        ),
         // Decorate the icon 
        indicatorStyle: IndicatorStyle(
          width: 40,
          color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
          iconStyle: IconStyle(
            iconData: Icons.done,
            color: isPast? Colors.white : Colors.deepPurple.shade100,
            fontSize: 20,
          ),
        ),
        // event card
        endChild: EventCard(
          isPast: isPast,
          child: eventCard,
        ),
      ),
    );
  }
}
