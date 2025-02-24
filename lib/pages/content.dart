import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/extension/stringextension.dart';
import 'package:project_5/model/customermodel.dart';
import 'package:project_5/model/homeViewModel.dart';
import 'package:project_5/theme/text.dart';

class Content extends StatelessWidget {
   Content({super.key,required this.customer});

  CustomerModel customer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            right: -150,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            )),
        Positioned(
            left: -200,
            bottom: -470,
            child: Container(
              width: 600,
              height: 600,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            )),
        Positioned(
            top: 20,
            left: 15,
            child: Container(
                height: 30, child: Image.asset('assets/images/logo.png'))),
        Positioned(
            right: 10,
            child: Container(
              height: 80,
              child: Image.asset('assets/images/chip.png'),
            )),
        Positioned(
            top: 60,
            left: 25,
            child: ModifiedText(
                text: "it's where you want to be ",
                color: Colors.grey.shade900,
                style: FontStyle.normal,
                size: 14)),
                Positioned(
                  bottom: 30,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(customer.debitcode.formattedDebit,style: GoogleFonts.sourceCodePro(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.grey.shade700,
                    )),
                    Text(customer.name,style:GoogleFonts.sourceCodePro(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color:Colors.grey.shade700,
                    ))
                    
                  ],
                ))
      ],
    );
  }
}
