import 'package:hibank_test/domain/entity/post/post_data.dart';
import 'package:hibank_test/state/data_state/data_state.dart';

abstract class PostRepository {
  Future<DataState<List<PostData>>> getListPost();

  Future<DataState<PostData>> getPostById(int id);
}
