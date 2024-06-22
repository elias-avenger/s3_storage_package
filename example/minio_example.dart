import 'dart:io';

import 'package:s3_storage/s3_storage.dart';

void main() async {
  final s3storage = S3Storage(
    endPoint: 'play.min.io',
    signingType: SigningType.V2,
    accessKey: 'Q3AM3UQ867SPQQA43P2F',
    secretKey: 'zuf+tfteSlswRu7BJ86wekitnifILbZam1KYY3TG',
  );

  print(await s3storage.putObject('aaaaaaaaa', 'test.png',
      File('example/custed.png').readAsBytes().asStream(),
      metadata: {'test': 'works'}));
}
