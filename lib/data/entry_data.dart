import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

sealed class EntryData{
  static double height = 60;
  static double width = 375;

  static Widget textField(String hint){
    return Container(
      height: EntryData.height,
      width: EntryData.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade900,
        boxShadow: [
          BoxShadow(
              offset: const Offset(-5, -5),
              color: Colors.black.withOpacity(0.2)
          ),

          BoxShadow(
              offset: const Offset(5, 5),
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 1
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16
              )
          ),
        ),
      ),
    );
  }

 static Widget teslaIcon(){
    return ColorFiltered(
      colorFilter: const ColorFilter.mode(
        Colors.purple,
        BlendMode.srcIn,
      ),
      child: Brand(
        Brands.tesla,
        size: 130,
      ),
    );
  }

  static Widget teslaText(){
   return Column(
     children: [
       Text(
         "T E S L A",
         style: GoogleFonts.montserrat(
           fontSize: 36,
           color: Colors.white,
         ),
       ),

       Text(
         "deibe model X",
         style: GoogleFonts.montserrat(
             fontSize: 14,
             color: Colors.purple
         ),
       ),
     ],
   );
  }
}