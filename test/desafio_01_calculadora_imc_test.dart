import 'package:desafio_01_calculadora_imc/models/utils.dart';
//import 'package:desafio_01_calculadora_imc/desafio_01_calculadora_imc.dart' as imc;
import 'package:test/test.dart';


void main() {
  group('Classificaion - IMC', (){
    var valuesToTest = {
      {'imc': 15.5} : 'Magreza grave',
      {'imc': 16} : 'Magreza moderada',
      {'imc': 16.5} : 'Magreza moderada', 
      {'imc': 17} : 'Magreza leve',
      {'imc': 18.4} : 'Magreza leve',
      {'imc': 18.5} : 'Saudável',
      {'imc': 24.5} : 'Saudável',
      {'imc': 25} : 'Sobrepeso',
      {'imc': 25.5} : 'Sobrepeso',
      {'imc': 29.5} : 'Sobrepeso',
      {'imc': 30} : 'Obesidade Grau I',
      {'imc': 34.5} : 'Obesidade Grau I',
      {'imc': 35} : 'Obsidade Grau II - severa',
      {'imc': 39.9} : 'Obsidade Grau II - severa',
      {'imc': 40} : 'Obesidade Grau III - mórbida'
    };
    valuesToTest.forEach((value, expected) {
      test('Entries: $value: expected: $expected', () {
         expect(
          Utils.imcClassification(
            double.parse(value["imc"].toString())),
          equals(expected));
      });   
    });
  });

  group('Calculator - IMC', (){
    var valuesToTest = {
      {'weight': 40.0, 'height':1.7} : '13.84',
      {'weight': 50.0, 'height':1.7} : '17.30'
    };
    valuesToTest.forEach((value, expected) {
      test('Entries: $value : expect: $expected', (){
        expect(
          Utils.calculatorIMC(
            value['weight'], 
            value['height'])!.toStringAsFixed(2),
        equals(expected));
      });
    });
  });

}
