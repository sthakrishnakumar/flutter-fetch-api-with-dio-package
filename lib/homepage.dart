import 'dart:developer';

import 'package:dio_api/provider/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(dataProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('API using Dio'),
        ),
        body: SingleChildScrollView(
          child: data.when(
            data: (d) {
              log(d.length.toString());
              return Column(
                children: [...d.map((e) => Text(e.firstName))],
              );
            },
            error: (err, s) => Text(
              'Error ' + err.toString(),
            ),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
