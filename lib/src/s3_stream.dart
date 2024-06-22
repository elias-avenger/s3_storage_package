import 'dart:async';

class StorageByteStream extends StreamView<List<int>> {
  StorageByteStream.fromStream({
    required Stream<List<int>> stream,
    required this.contentLength,
  }) : super(stream);

  final int? contentLength;
}
