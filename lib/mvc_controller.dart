import 'package:mvc_pattern/mvc_pattern.dart';
import 'mvc_model.dart';

class Controller extends ControllerMVC {

  // Create the controller state if it doesn't exist
  factory Controller() {
    if(_this == null) _this = Controller._();
    return _this!;
  }

  // Declare the controller instance
  static Controller? _this;

  // Call the controller constructor privately
  Controller._();

  // Get the current count from static controller model
  int get counter => Model.counter;

  // Call the Model class's incrementCounter from the controller
  void incrementCounter() {
    Model.incrementCounter();
  }

  // Call the Model class's decrementCounter from the controller
  void decrementCounter() {
    Model.decrementCounter();
  }

}
