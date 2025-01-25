```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate a network request that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    // Simulate a network error by randomly throwing an exception
    if (DateTime.now().millisecond % 2 == 0) {
      throw Exception('Network error!');
    }
    print('Data fetched successfully!');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
    // Handle timeout errors - retry, display message etc.
  } on SocketException catch (e) {
    print('Socket error: $e');
    // Handle socket errors - check connection, display message etc.
  } on FormatException catch (e) {
    print('Format error: $e');
    // Handle format errors - data parsing issues etc.
  } on Exception catch (e) {
    print('General error: $e');
    // Handle other exceptions
  } catch (e) {
    print('Unknown error: $e');
    // Handle any other unexpected errors
  } finally {
    print('Operation finished'); //This ensures cleanup happens even on errors
  }
}

void main() async {
  await fetchData();
}
```