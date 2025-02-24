
import 'package:flutter/material.dart';
import 'package:project_5/extension/stringextension.dart';

class ValidationModel{
  String? error;
  String? value;

  ValidationModel(
    this.error,
    this.value,
  );
}

class HomeViewModel{

  ValidationModel debitcode = ValidationModel(null, null);

  bool get isvalid => debitcode.value != null && debitcode.value!.length == 12;

  checkDebitvalue(String value){
    if(value.length == 12 && value.isvalidDebit){
      debitcode.value =value;
      debitcode.error =null;
    }
    else{
      debitcode.error = "invalid cold";
    }
  }
}