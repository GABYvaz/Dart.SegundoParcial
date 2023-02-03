import 'dart:async';
//import 'dart:html';

void main(List<String> arguments) {
  //Instanciando y usando un objeto de la clase Gato
  Gato garfield= Gato();
  garfield.yoSoy(); //Funcion de la clase Gato
  garfield.infoAnimal(); //funcion de la clase Animal (herencia)
  garfield.infoMamifero(); //funcion de la clase Mamifero (herencia)
  garfield.caminar(); //funcion de la clase Caminante (mixin)

  Paloma paco= Paloma();
  paco.yoSoy();
  paco.infoAve();
  paco.infoAnimal();
  paco.volador();
  paco.caminar();

  Pato juan= Pato();
  juan.yoSoy();
  juan.infoAnimal();
  juan.infoAve();
  juan.caminar();
  juan.volador();
  juan.nadador();

  Tiburon lolo= Tiburon();
  lolo.yoSoy();
  lolo.infoAnimal();
  lolo.infoPez();
  lolo.nadador();
}


 abstract class Animal{
   void infoAnimal(); 
  }

  abstract class Mamifero extends Animal {
    void infoMamifero();
  }

  abstract class Ave extends Animal {
    void infoAve();
  }

  abstract class Pez extends Animal {
    void infoPez();
  }

  class Caminante {
    void caminar() => print('Puedo caminar!!');
  }  

  class Nadador {
    void nadador() => print('Puedo nadar!!');
  }

  class Volador {
    void volador()=> print('Puedo volar!!');
  }

  //Creacion de la clase de los tipos especificos de animales
  class Gato extends Mamifero with Caminante { 
    //Metodos heredados de Animal y Mamifero
    @override 
    void infoAnimal(){
      print('Soy un animal');
    }

    @override 
    void infoMamifero(){
      print('Soy un mamifero');
    }
    //Metodo de la clase gato
    void yoSoy() => print('Soy un michi--------');
    
  }
  class Paloma extends Ave with Caminante, Volador{
       @override 
    void infoAnimal(){
      print('Soy un animal!');
    }
    @override 
    void infoAve(){
      print('Soy un ave');
    }
  void yoSoy() =>print('Yo soy una Paloma!!');
  }
  class Pato extends Ave with Caminante, Volador,Nadador{
    @override 
    void infoAve(){
      print('Soy un ave');
    }
    @override 
    void infoAnimal(){
      print('Soy un animal');
    }
    void yoSoy() => print('Yo soy un Pato!'); 
  }
  class Tiburon extends Pez with Nadador{
     @override 
    void infoAnimal(){
      print('Soy un animal');
    }
    @override 
    void infoPez(){
      print('Soy un Pez');
    }
 void yoSoy() => print('Yo soy un Tiburon'); 

  }


  
