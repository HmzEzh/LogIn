import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.lineTo(size.width,0);
    path_0.lineTo(size.width,size.height);
    path_0.quadraticBezierTo(size.width/2, size.height-80, 0, size.height);
    path_0.close();
    canvas.drawShadow(path_0, Color(0x000000).withOpacity(1.0),5, false);
Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color.fromARGB(255, 2, 60, 141);
canvas.drawPath(path_0,paint_0_fill);
}
@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}