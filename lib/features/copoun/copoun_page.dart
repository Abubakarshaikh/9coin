import 'package:flutter/material.dart';

class CopounPage extends StatelessWidget {
  const CopounPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Coupon Screen"),
    );
  }
}

// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 1;

//     Path path0 = Path();
//     path0.moveTo(size.width * 0.0714286, 0);
//     path0.quadraticBezierTo(size.width * 0.0720714, size.height * 0.0842500, 0,
//         size.height * 0.0833333);
//     path0.lineTo(0, size.height * 0.0833333);
//     path0.lineTo(0, size.height * 0.1333333);
//     path0.lineTo(size.width * 0.0285714, size.height * 0.1333333);
//     path0.lineTo(size.width * 0.0285714, size.height * 0.1666667);
//     path0.lineTo(0, size.height * 0.1666667);
//     path0.lineTo(0, size.height * 0.2083333);
//     path0.lineTo(size.width * 0.0285714, size.height * 0.2083333);
//     path0.lineTo(size.width * 0.0285714, size.height * 0.2416667);
//     path0.lineTo(0, size.height * 0.2500000);
//     path0.lineTo(0, size.height * 0.2500000);
//     path0.lineTo(0, size.height * 0.2916667);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.2916667);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.3333333);
//     path0.lineTo(0, size.height * 0.3333333);
//     path0.lineTo(0, size.height * 0.3833333);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.3833333);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.4166667);
//     path0.lineTo(0, size.height * 0.4166667);
//     path0.lineTo(0, size.height * 0.4666667);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.4666667);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.5000000);
//     path0.lineTo(0, size.height * 0.5000000);
//     path0.lineTo(0, size.height * 0.5500000);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.5500000);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.5833333);
//     path0.lineTo(0, size.height * 0.5833333);
//     path0.lineTo(0, size.height * 0.6333333);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.6333333);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.6666667);
//     path0.lineTo(0, size.height * 0.6666667);
//     path0.lineTo(0, size.height * 0.7166667);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.7166667);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.7500000);
//     path0.lineTo(0, size.height * 0.7500000);
//     path0.lineTo(0, size.height * 0.8000000);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.8000000);
//     path0.lineTo(size.width * 0.0357143, size.height * 0.8666667);
//     path0.lineTo(0, size.height * 0.8666667);
//     path0.lineTo(0, size.height * 0.9166667);

//     path0.quadraticBezierTo(size.width * 0.0805000, size.height * 0.9099167,
//         size.width * 0.0714286, size.height * 0.9916667);

//     path0.quadraticBezierTo(size.width * 0.3017857, size.height * 0.9916667,
//         size.width * 0.9928571, size.height * 0.9916667);

//     path0.lineTo(size.width, size.height * 0.0083333);

//     path0.quadraticBezierTo(size.width * 0.7678571, size.height * 0.0062500,
//         size.width * 0.0714286, 0);
//     path0.close();

//     canvas.drawPath(path0, paint0);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

// >> Triangle
// CustomPaint(
//         size: Size(
//             200,
//             (200 * 1.2)
//                 .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//         painter: RPSCustomPainter(),
//       ),
// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 1;

//     Path path0 = Path();
//     path0.moveTo(size.width * 0.9900000, size.height * 0.0083333);
//     path0.quadraticBezierTo(size.width * 0.9025000, size.height * 0.9161667,
//         size.width * 0.0100000, size.height * 0.9916667);
//     path0.lineTo(size.width * 0.9900000, size.height * 0.9916667);
//     path0.quadraticBezierTo(size.width * 0.9900000, size.height * 0.7458333,
//         size.width * 0.9900000, size.height * 0.0083333);
//     path0.close();

//     canvas.drawPath(path0, paint0);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
