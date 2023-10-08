import 'dart:io';

import 'package:desafio_01_calculadora_imc/classes/people.dart';
import 'package:desafio_01_calculadora_imc/exception/invalid_input.dart';
import 'package:desafio_01_calculadora_imc/models/utils.dart';

void getPeople() {
  print("Welcome to IMC Calculator");
  String name = Utils.readTextString("What is your name? ");
  PeopleName(name);
  var people = People(name);
  double? weight = Utils.readTextDouble("How much do you weigh (kg)?");
  people.setWeight(weight!);

  double? height = Utils.readTextDouble("What is your heigh (m)?");
  people.setHeight(height!);

  String imc = (Utils.calculatorIMC(weight, height))!.toStringAsFixed(2);
  people.setIMC(imc);

   String classIMC = Utils.imcClassification(Utils.calculatorIMC(weight, height)!);
  people.setIMCclass(classIMC);

  print(people);
}

String PeopleName(name){
   try {
    if (name.trim() == "") {
      throw InvalidNameException();
    }
    return name;
  } catch (InvalidNameException) {
    print(InvalidNameException);
    return Utils.readTextString("What is your name? ");
  }
}