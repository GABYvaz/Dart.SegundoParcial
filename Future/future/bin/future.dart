//Ejemplo de uso de la clase Future
//Se van a enviar tareas al segundo plano
//Mientras la aplicacion puede seguir trabajando 
void main(List<String> arguments) {
  //Acciones del hilo principal
  print('Vamos a conectar con la NASA');
  print('Pidiendo datos del exterior....');

  //Llamado a la funcion future
  getDataFromMars('https://mars.api.nasa.com', 3).then((data){
    print(data);
  });
  //Mas acciones del hilo principal
  print('Mientras, seguimos trabajando en el hilo principal...');

  //Llamado a otra funcion tipo Future
  var AlienWeight = 0;
  getAlienWeight(1, 30).then((peso) => AlienWeight = peso);
  print('Peso del alien: $AlienWeight');
  if (AlienWeight > 100){
    print('El alien tiene sobrepeso');
  }else{
    print('Esta en su peso ideal');
  }
}
Future<String> getDataFromMars(String url, int idPlanet){
  //Acciones de larga duracion que debe realizar la funcion 
  var planeta= '';
  if (idPlanet == 2){
 planeta = 'Marte';
  }else{
    if (idPlanet == 1){
      planeta = 'Venus';
    }else{
      planeta = 'Tierra';
    }
  }
  return Future.delayed(Duration(seconds: 10), () {
    if (idPlanet == 1 || idPlanet == 2){
      return 'Se encontro vida extraterrestre en $planeta'; 
    }else{
      return 'Lo sentimos no se encontró vida inteligente en $planeta';
    }
  });
}
//otra funcion Future (otro hilo)
Future<double> getAlienWeight(int idPlaneta, int referencia){
  int peso = referencia;
  if (idPlaneta == 1 || idPlaneta == 2){
    for(int i = 1; i <= 10; i++){
      peso *=i;
    }
  }else{
    peso *= 2;
  }
  return Future.delayed(Duration(seconds: 10), (() => peso));
}
