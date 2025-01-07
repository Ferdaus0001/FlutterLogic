// import 'package:flutter/material.dart';
// import 'package:timeline_tile/timeline_tile.dart';
//
// class TimelineExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Timeline Example'),
//       ),
//       body: ListView(
//         children: [
//           TimelineTile(
//             alignment: TimelineAlign.start,
//             axis: TimelineAxis.vertical,
//             endChild: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Step 1: Started'),
//             ),
//             indicatorStyle: IndicatorStyle(
//               width: 20,
//               color: Colors.green,
//             ),
//             startChild: Container(
//               color: Colors.green.withOpacity(0.1),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text('Started'),
//               ),
//             ),
//           ),
//           TimelineTile(
//             alignment: TimelineAlign.start,
//             axis: TimelineAxis.vertical,
//             endChild: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Step 2: In Progress'),
//             ),
//             indicatorStyle: IndicatorStyle(
//               width: 20,
//               color: Colors.orange,
//             ),
//             startChild: Container(
//               color: Colors.orange.withOpacity(0.1),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text('In Progress'),
//               ),
//             ),
//           ),
//           TimelineTile(
//             alignment: TimelineAlign.start,
//             axis: TimelineAxis.vertical,
//             endChild: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Step 3: Completed'),
//             ),
//             indicatorStyle: IndicatorStyle(
//               width: 20,
//               color: Colors.red,
//             ),
//             startChild: Container(
//               color: Colors.red.withOpacity(0.1),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text('Completed'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
