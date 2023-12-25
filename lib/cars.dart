class Cars {
  String? brand;
  String? model;
  String? energy;
  int? year;

  Cars({
    required this.brand,
    required this.model,
    required this.energy,
    required this.year,
  });

  Cars.fromJson(Map<String, dynamic> data) {
    brand = data['brandname'];
    model = data['modelname'];
    energy = data['energytype'];
    year = data['year'];
  }

  void printInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Energy: $energy');
    print('Year: $year');
  }
}

class ElectricCar extends Cars {
  double? batteryCapacity;

  ElectricCar({
    required String brand,
    required String model,
    required String energy,
    required int year,
    required this.batteryCapacity,
  }) : super(brand: brand, model: model, energy: energy, year: year);

  @override
  void printInfo() {
    super.printInfo();
    print('Battery Capacity: $batteryCapacity kWh');
  }
}

class HybridCar extends Cars {
  double? fuelEfficiency;

  HybridCar({
    required String brand,
    required String model,
    required String energy,
    required int year,
    required this.fuelEfficiency,
  }) : super(brand: brand, model: model, energy: energy, year: year);

  @override
  void printInfo() {
    super.printInfo();
    print('Fuel Efficiency: $fuelEfficiency km/L');
  }
}

class GasolineCar extends Cars {
  double? engineDisplacement;

  GasolineCar({
    required String brand,
    required String model,
    required String energy,
    required int year,
    required this.engineDisplacement,
  }) : super(brand: brand, model: model, energy: energy, year: year);

  @override
  void printInfo() {
    super.printInfo();
    print('Engine Displacement: $engineDisplacement L');
  }
}