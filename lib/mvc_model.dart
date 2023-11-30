class Model {
  static int _counter = 0; // Initialize the counter variable
  static int get counter => _counter; // Create the counter getter

  static int incrementCounter() => ++_counter; // Increment the counter variable
  static int decrementCounter() => _counter--; // Decrement the counter variable
}