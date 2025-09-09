
import 'package:flutter/material.dart';
import 'package:graphql_demo/query.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'models/country_model.dart';

class CountryListPage extends StatelessWidget {
  const CountryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Countries")),
      body: Query(
        options: QueryOptions(document: gql(getCountries)),
        builder: (QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (result.hasException) {
            return Center(child: Text(result.exception.toString()));
          }

          final List data = result.data?['countries'] ?? [];
          final countries = data.map((e) => Country.fromJson(e)).toList();

          return ListView.builder(
            itemCount: countries.length,
            itemBuilder: (context, index) {
              final country = countries[index];
              return ListTile(
                title: Text(country.name),
                subtitle: Text("Capital: ${country.capital ?? 'N/A'}"),
                trailing: Text(country.code),
              );
            },
          );
        },
      ),
    );
  }
}