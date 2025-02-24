

import 'package:flutter/material.dart';
import 'package:project_5/model/customermodel.dart';
import 'package:project_5/model/homeViewModel.dart';
import 'package:project_5/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _codecontroller = TextEditingController();


  HomeViewModel validation = HomeViewModel();
  CustomerModel customer = CustomerModel('John Doe', '1234 4444 5676');

  @override
  Widget build(BuildContext context)
   {
    return Scaffold(
      appBar:AppBar(  
        title: const Text('Login Page'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _namecontroller,
                decoration: const InputDecoration(
                  label:  Text('Name'),
                  hintText: 'Enter your name',
                  border:  OutlineInputBorder(),
                  enabledBorder:  OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _codecontroller,
                decoration: InputDecoration(
                  label:  const Text('Debit Number'),
                  hintText: 'Must be 12 digits (without spaces)',
                  border: const OutlineInputBorder(),
                  errorText: validation.debitcode.error,
                  enabledBorder: const OutlineInputBorder(),
                ),
                onChanged: (value){
                  validation.checkDebitvalue(value);
                  setState(() {
                    
                  });
                },
              ),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed:validation.isvalid? (){
                customer.name = _namecontroller.text.toString();
                customer.debitcode = _codecontroller.text.toString();

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> VisaPage(customer_: customer))
                );

                _codecontroller.clear();
                _namecontroller.clear();
              }: null, child: const Text('Get Card'))
            ],
          ),
        ),
      ),
    );
  }
}