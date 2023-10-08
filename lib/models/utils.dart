import 'dart:convert';
import 'dart:io';


class Utils {
  static String readString(){
    return stdin.readLineSync(encoding:utf8) ?? "";
  }

  static String readTextString(String text){
    print(text);
    return readString();
  }

  static double? readDouble(){
    var value = readString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  // ignore: body_might_complete_normally_nullable
  static double? readTextDouble(String text){
    try {
      print(text);
      var value = readDouble();
      if(value == null || value <= 0){
        print("Invalid value, please insert the correct value.");
        return readTextDouble(text);
      }else{
        return value;
      }
    } catch (e) {
      print (e);
      readTextDouble(text);
    }
  }

  static String imcClassification(double imc) {
    if (imc < 16){
      return "Magreza grave";
    }else if (imc < 17){
      return "Magreza moderada";
    }else if (imc < 18.5){
      return "Magreza leve";
    }else if (imc < 25){
      return "Saudável";
    }else if (imc < 30){
      return "Sobrepeso";
    }else if (imc < 35){
      return "Obesidade Grau I";
    }else if (imc < 40){
      return "Obsidade Grau II - severa";
    }else if (imc>=40){
      return "Obesidade Grau III - mórbida";
    }else {
      return "Classificação indeterminada";
    }
  }

  static double? calculatorIMC(weight, height){
    return weight/(height*height);
  }

}