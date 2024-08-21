//constructor method
void main() {
  var car1 = Car("Toyota", "black", 200000);
  var car2 = Car("TATA", "white", 30000);
  car1.carDetails();
  car2.carDetails();
}

class Car {
  var model;
  var color;
  var price;

  // Car(model, color, price) {
  //   this.model = model;
  //   this.color = color;
  //   this.price = price;
  // }
  Car(this.color, this.model, this.price);
  
  void carDetails() {
    print("model:${model}");
    print("color:${color}");
    print("price:${price}");
  }
}
