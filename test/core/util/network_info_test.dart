import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:teesco/core/util/network_info.dart';

class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}

void main() {
  NetworkInfo networkInfo;
  MockDataConnectionChecker mockDataConnectionChecker;

  setUp(() {
    mockDataConnectionChecker = MockDataConnectionChecker();
    networkInfo = NetworkInfo(mockDataConnectionChecker);
  });

  group('NetworkInfo', () {
    
    test('To check call forwarding to DataConnectionChecker.hasConnection', () {
      // arrange
      final tHasConnectionFuture = Future.value(true);

      when(mockDataConnectionChecker.hasConnection)
        .thenAnswer((_) => tHasConnectionFuture);
      // act
      final result = networkInfo.isConnected;
      // assert
      verify(mockDataConnectionChecker.hasConnection);
      expect(result, equals(tHasConnectionFuture));
    });
  });
}
