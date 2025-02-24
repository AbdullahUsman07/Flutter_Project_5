
import 'package:flutter/material.dart';
import 'package:project_5/model/customermodel.dart';
import 'package:project_5/pages/content.dart';
import 'package:project_5/theme/colors.dart';

class VisaPage extends StatelessWidget {
   VisaPage({super.key, required this.customer_});

  CustomerModel customer_;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Align(  
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(left: 18,right: 18,bottom: 100),
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: AppColors.shadows,
          ),
          child: Content(customer: customer_,),
        ),
      )
    );
  }
}