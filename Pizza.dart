import 'dart:io';
void main () {

    print("Pizza Price: small: 5 USD, medium: 7 USD, large: 10 USD");

    String? size;

    while (true){
      print("Please enter your pizza size (small, medium or large):");
      size = stdin.readLineSync()?.toLowerCase().trim();

      if (size == "small" || size == "medium" || size == "large") {
        break;
      } 

        print("Invalid size entered. Please enter small, medium or large.");
    }


    print("How many pizzas do you want $size?");
    int? quantity = int.parse(stdin.readLineSync()!);
    
    int price = 0;
    
    switch (size) {
      case "small":
        price = 5;
        break;

      case "medium":
        price = 7;
        break;  
      
      case "large": 
        price = 10;
        break;

      default:
      print("Invalid size entered. Please enter small, medium or large.");  

      return;
    }
      
      int totalpayment = price * quantity;

    print("Total price for $quantity $size pizzas: $totalpayment USD");

}