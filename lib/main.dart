import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'country_list_page.dart';
import 'graphql_client.dart';

void main() async {
  await initHiveForFlutter(); // Required for caching
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: initGraphQLClient(),
      child: CacheProvider(
        child: MaterialApp(
          home: CountryListPage(),
        ),
      ),
    );
  }
}
