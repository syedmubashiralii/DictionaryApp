import 'package:dictionaryapp/Src/Utils/Constants.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Color bgcolor;
  Widget child;
  Background({super.key, required this.bgcolor, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.black, width: 2.0)),
          child: child,
        ),
      ),
    );
  }
}

class TextWithStroke extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double strokeWidth;
  final Color strokeColor;

  const TextWithStroke({
    super.key,
    required this.text,
    required this.textStyle,
    required this.strokeWidth,
    required this.strokeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(text,
            style: textStyle.copyWith(
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = strokeWidth
                ..color = strokeColor,
            )),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final Color bordercolor;
  final Color buttoncolor;
  final String buttontext;
  final VoidCallback ontap;
  final TextStyle textStyle;
  const MyButton(
      {super.key,
      required this.buttoncolor,
      required this.bordercolor,
      required this.buttontext,
      required this.ontap,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Card(
          child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: buttoncolor,
            border: Border.all(color: bordercolor, width: 3)),
        child: Center(
          child: Text(
            buttontext,
            style: textStyle,
          ),
        ),
      )),
    );
  }
}

class Mytextfield extends StatelessWidget {
  final String hinttext;
  TextEditingController controler;
  Icon? suffixicon;
  Color? bordercolor;
  FocusNode? f;
  Mytextfield(
      {super.key,
      required this.hinttext,
      required this.controler,
      this.suffixicon,
      this.f,
      this.bordercolor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: f,
      controller: controler,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: bordercolor!)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: bordercolor!)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: bordercolor!)),
          hintText: hinttext,
          labelStyle: const TextStyle(
            fontFamily: "montserrat",
          ),
          suffixIcon: suffixicon,
          hintStyle: const TextStyle(
              fontFamily: "montserrat",
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w600)),
    );
  }
}

class MypasswordTextfield extends StatelessWidget {
  TextEditingController controller;
  MypasswordTextfield({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          filled: true,
          suffixIcon: Icon(Icons.remove_red_eye),
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black)),
          hintText: "Password",
          hintStyle: TextStyle(
              fontFamily: "montserrat",
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w600)),
    );
  }
}



////
class categorywidget extends StatelessWidget {
  final String categoryname;
  final String categoryimg;
  final VoidCallback ontap;
  const categorywidget({
    required this.categoryname,
    required this.categoryimg,
    required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          Image.asset(categoryimg),
          Text(
            categoryname,
            style: TextStyle(
                fontFamily: "montserrat",
                fontSize: 25,
                color: AppColors.apporangecolor.withOpacity(.8),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}


///

class ImageAndTextWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  const ImageAndTextWidget({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          width: 100.0, // Adjust the image size as needed
          height: 100.0,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}

class TextAndImageWidget extends StatelessWidget {
  final String text;
  final String imagePath;

  const TextAndImageWidget({
    super.key,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 24),
        ),
        Image.asset(
          imagePath,
          width: 100.0, // Adjust the image size as needed
          height: 100.0,
        ),
      ],
    );
  }
}
