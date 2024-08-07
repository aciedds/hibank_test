import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hibank_test/data/model/post_model/post_model.dart';
import 'package:hibank_test/data/source/post_remote_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'post_remote.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late PostRemoteSource postRemoteSource;

  setUp(() {
    mockDio = MockDio();
    postRemoteSource = PostRemoteSource(mockDio);
  });

  group('getListPost', () {
    test(
        'should return DataState.success with list of PostModel when data exists',
        () async {
      // Arrange
      final responseData = [
        {'userId': 1, 'id': 1, 'title': 'Title 1', 'body': 'Body 1'},
        {'userId': 2, 'id': 2, 'title': 'Title 2', 'body': 'Body 2'},
      ];
      when(mockDio.get('/posts')).thenAnswer((_) async => Response(
            data: responseData,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/posts'),
          ));

      // Act
      final result = await postRemoteSource.getListPost();

      // Assert
      result.when(
        success: (data) {
          expect(data, isA<List<PostModel>>());
          expect(data.length, 2);
        },
        error: (message, data, exception, stackTrace, statusCode) {},
      );
    });

    test('should return DataState.error when no data is found', () async {
      // Arrange
      when(mockDio.get('/posts')).thenAnswer((_) async => Response(
            data: [], // Empty list
            statusCode: 200,
            requestOptions: RequestOptions(path: '/posts'),
          ));

      // Act
      final result = await postRemoteSource.getListPost();

      // Assert
      result.when(
        success: (data) {},
        error: (message, data, exception, stackTrace, statusCode) {
          expect(message, 'No data found');
        },
      );
    });

    test('should return DataState.error on request failure', () async {
      // Arrange
      when(mockDio.get('/posts')).thenThrow(DioException(
        requestOptions: RequestOptions(path: '/posts'),
        type: DioExceptionType.badResponse,
        response: Response(
          statusCode: 404,
          requestOptions: RequestOptions(path: '/posts'),
        ),
      ));

      // Act
      final result = await postRemoteSource.getListPost();

      // Assert
      result.when(
        success: (data) {},
        error: (message, data, exception, stackTrace, statusCode) {
          expect(message, contains('Error'));
        },
      );
    });
  });

  group('getPostById', () {
    test('should return DataState.success with PostModel when data exists',
        () async {
      // Arrange
      final responseData = {
        'userId': 1,
        'id': 1,
        'title': 'Title 1',
        'body': 'Body 1'
      };
      when(mockDio.get('/posts/1')).thenAnswer((_) async => Response(
            data: responseData,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/posts/1'),
          ));

      // Act
      final result = await postRemoteSource.getPostById(1);

      // Assert
      result.when(
        success: (data) {
          expect(data, isA<PostModel>());
          expect(data.id, 1);
        },
        error: (message, data, exception, stackTrace, statusCode) {},
      );
    });

    test('should return DataState.error when no data is found', () async {
      // Arrange
      when(mockDio.get('/posts/1')).thenAnswer((_) async => Response(
            data: {}, // Empty map
            statusCode: 200,
            requestOptions: RequestOptions(path: '/posts/1'),
          ));

      // Act
      final result = await postRemoteSource.getPostById(1);

      // Assert
      result.when(
        success: (data) {},
        error: (message, data, exception, stackTrace, statusCode) {
          expect(message, 'No data found');
        },
      );
    });

    test('should return DataState.error on request failure', () async {
      // Arrange
      when(mockDio.get('/posts/1')).thenThrow(DioException(
        requestOptions: RequestOptions(path: '/posts/1'),
        type: DioExceptionType.badResponse,
        response: Response(
          statusCode: 404,
          requestOptions: RequestOptions(path: '/posts/1'),
        ),
      ));

      // Act
      final result = await postRemoteSource.getPostById(1);

      // Assert
      result.when(
        success: (data) {},
        error: (message, data, exception, stackTrace, statusCode) {
          expect(message, contains("Error"));
        },
      );
    });
  });
}
