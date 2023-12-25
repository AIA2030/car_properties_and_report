import 'package:car_properties_methods/cars.dart';

void main(List<String> arguments) {
  
  var car1 = Cars(brand: 'Toyota', model: 'Camry', energy: 'Petrol', year: 2022);
  car1.printInfo();
  
  var electricCar = ElectricCar(
    brand: 'Tesla',
    model: 'Model S',
    energy: 'Electric',
    year: 2023,
    batteryCapacity: 100,
  );
  electricCar.printInfo();
}