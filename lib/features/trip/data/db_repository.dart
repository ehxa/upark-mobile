import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_api/amplify_api.dart';

import '../../../amplifyconfiguration.dart';
import '../../../models/ModelProvider.dart';

class DBRepository {
  Future<void> configureAmplify() async {
    final api = AmplifyAPI(modelProvider: ModelProvider.instance);
    await Amplify.addPlugin(api);

    try {
      await Amplify.configure(amplifyconfig);
    } on Exception catch (e) {
      safePrint('An error occurred configuring Amplify: $e');
    }
  }

  Future<void> createParkinfo() async {
    try {
      final parkinfo = Parkinfo(
          floors: 1,
          no_spots: 20,
          capacity: 50,
          description: 'park info description');
      final request = ModelMutations.create(parkinfo);
      final response = await Amplify.API.mutate(request: request).response;

      final createdParkinfo = response.data;
      if (createdParkinfo == null) {
        safePrint('errors: ${response.errors}');
        return;
      }
      safePrint('Mutation result: ${createdParkinfo.id}');
    } on ApiException catch (e) {
      safePrint('Mutation failed: $e');
    }
  }
}
