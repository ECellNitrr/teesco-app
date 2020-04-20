import 'dart:io';

/// Synchronous function to read mock json files. 
String fixture(String name) => File('test/fixtures/$name').readAsStringSync(); 
