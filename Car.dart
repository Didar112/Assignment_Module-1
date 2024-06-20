class Car{

  late String brand;
  late String model;
  late int year;
  late double milesDriven;
  static int numberOfCars=0;


  Car(
    String brand,
    String model,
    int year,
    double milesDriven,
)
  {
    this.brand=brand;
    this.model=model;
    this.year=year;
    this.milesDriven=milesDriven;

    numberOfCars++;

  }


  void drive(double miles)
  {
    milesDriven+=miles;

  }

  double getMilesDriven()
  {
    return milesDriven;
  }

  String getBrand(){
    return brand;
  }
  String getModel()
  {
    return model;
  }
  int getYear()
  {
    return year;
  }

  int getAge(int currentYear)
  {
    return (currentYear-year);
  }



}

void main()
{
  Car c1 =Car("toyota","corolla", 2018, 15.3);
  Car c2 =Car("BMW","i8", 2020, 16.3);
  Car c3 =Car("Audi","R8", 2006, 17.3);

  c1.drive(20.00);
  c2.drive(25.00);
  c3.drive(30.00);
  print("-------------------------------FIRST CAR------------------------------\n\n");
  print('Car Brand: ${c1.getBrand()}');
  print("Car Model: ${c1.getModel()}");
  print("Car Year: ${c1.getYear()}");
  print("Miles driven: ${c1.getMilesDriven()}\n\n");

  print("-------------------------------SECOND CAR------------------------------\n\n");
  print('Car Brand: ${c2.getBrand()}');
  print("Car Model: ${c2.getModel()}");
  print("Car Year: ${c2.getYear()}");
  print("Miles driven: ${c2.getMilesDriven()}\n\n");

  print("-------------------------------THIRD CAR------------------------------\n\n");
  print('Car Brand: ${c3.getBrand()}');
  print("Car Model: ${c3.getModel()}");
  print("Car Year: ${c3.getYear()}");
  print("Miles driven: ${c3.getMilesDriven()}\n\n");


  print("-------------------------------AGE OF EACH CAR------------------------------\n\n");
  print("Age of first car: ${c1.getAge(2024)}");
  print("Age of second car: ${c2.getAge(2024)}");
  print("Age of third car: ${c3.getAge(2024)}\n\n");


  print("-------------------------------TOTAL NUMBER OF OBJECTS------------------------------\n\n");
  print("Total number of object created: ${Car.numberOfCars}");
  print("\n\n");
}