void main() {

  // object 1
  var car1 = Car();
  car1.model = "TATA";
  car1.color = "white";
  car1.price = 25000;

  // object 2
  var car2 = Car();
  car2.model = "SUZUKI";
  car2.color = "black";
  car2.price = 20000;

  car1.cardetails();
  car2.cardetails();
  
  
}

class Car {
  var model;
  var color;
  var price;
  void cardetails() {
    print("model:${model}");
    print("color:${color}");
    print("price:${price}");
  }
}
