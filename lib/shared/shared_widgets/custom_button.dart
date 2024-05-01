import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';


class CustomButton extends StatefulWidget {

  final Color color;
  final String txt;
  Function onTap;
  CustomButton(this.color, this.txt, this.onTap);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(widget.txt, style: AppFonts.subprimaryTextStyle,),
      style: TextButton.styleFrom(
        backgroundColor: widget.color,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))
      ),
      onPressed: () {
        widget.onTap();
      },
    );
  }
}