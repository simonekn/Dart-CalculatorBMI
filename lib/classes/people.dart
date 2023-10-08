class People {
  String? _name;
  double? _weight;
  double? _height;
  String? _imc;
  String? _imcclass;

   People(String name){
    _name = name;
  }

  String? getName(){
    return _name;
  }

   void setWeight(double weight){
    _weight = weight;
  }

  double? getWeight(){
    return _weight;
  }

   void setHeight(double height){
    _height = height;
  }

  double? getHeight(){
    return _height;
  }

  void setIMC(String imc){
    _imc = imc;
  }

  String? getIMC(){
    return _imc;
  }

  void setIMCclass(String imcclass){
    _imcclass = imcclass;
  }

  String? getIMCclass(){
    return _imcclass;
  }


  @override
  String toString(){
    return '''
      Name: $_name,
      Weight: $_weight,
      Height: $_height,
      IMC: $_imc - $_imcclass
    ''';
  }

}