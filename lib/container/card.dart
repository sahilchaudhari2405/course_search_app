import 'package:flutter/material.dart';

class card extends StatelessWidget {
  card({required this.data});
  final List<int> data;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        // Set a fixed height for the container as per your requirement
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            itemBuilder: (context, index) {
              var id = data[index];
              if (id > 0) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  child: Container(
                    width: 338,
                    height: 175,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF6EFFE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 1,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  child: Container(
                    width: 338,
                    height: 175,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF6EFFE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 1,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Text("sahil"),
                  ),
                );
              }
            }));
  }
}

// class card2 extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       // Set a fixed height for the container as per your requirement
//       child: ListView.builder(
//         physics: BouncingScrollPhysics(),
//         scrollDirection: Axis.vertical,
//         itemCount: data.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
//             child: Container(
//               width: 338,
//               height: 175,
//               decoration: ShapeDecoration(
//                 color: Color(0xFFF6EFFE),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 shadows: [
//                   BoxShadow(
//                     color: Color(0x3F000000),
//                     blurRadius: 1,
//                     offset: Offset(0, 0),
//                     spreadRadius: 0,
//                   )
//                 ],
//               ),
//               child: Text("${data[index]}"),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
