import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hibank_test/data/model/post_model/post_model.dart';

void main() {
  group('PostModel', () {
    test('fromJson should correctly parse JSON to PostModel', () {
      // Arrange
      const jsonString = '''
        {
          "userId":1,
          "id": 1,
          "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
          "body": "quia et suscipit\\nsuscipit recusandae consequuntur expedita et cum\\nreprehenderit molestiae ut ut quas totam\\nnostrum rerum est autem sunt rem eveniet architecto"
        }
      ''';
      final jsonMap = json.decode(jsonString) as Map<String, dynamic>;

      // Act
      final postModel = PostModel.fromJson(jsonMap);

      // Assert
      expect(postModel.userId, 1);
      expect(postModel.id, 1);
      expect(postModel.title,
          'sunt aut facere repellat provident occaecati excepturi optio reprehenderit');
      expect(postModel.body,
          'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto');
    });

    test('toJson should correctly convert PostModel to JSON', () {
      // Arrange
      final postModel = PostModel(
        userId: 1,
        id: 1,
        title:
            'sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
        body:
            'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto',
      );
      final expectedJsonMap = {
        'userId': 1,
        'id': 1,
        'title':
            'sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
        'body':
            'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto',
      };

      // Act
      final jsonMap = postModel.toJson();

      // Assert
      expect(jsonMap, expectedJsonMap);
    });

    test('fromJson should handle a list of JSON objects', () {
      // Arrange
      const jsonString = '''
        [
          {
            "userId": 1,
            "id": 1,
            "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
            "body": "quia et suscipit\\nsuscipit recusandae consequuntur expedita et cum\\nreprehenderit molestiae ut ut quas totam\\nnostrum rerum est autem sunt rem eveniet architecto"
          },
          {
            "userId": 1,
            "id": 2,
            "title": "qui est esse",
            "body": "est rerum tempore vitae\\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\\nqui aperiam non debitis possimus qui neque nisi nulla"
          }
        ]
      ''';
      final jsonList = json.decode(jsonString) as List;

      // Act
      final postModels = jsonList
          .map((json) => PostModel.fromJson(json as Map<String, dynamic>))
          .toList();

      // Assert
      expect(postModels.length, 2);
      expect(postModels[0].id, 1);
      expect(postModels[1].id, 2);
    });
  });
}
