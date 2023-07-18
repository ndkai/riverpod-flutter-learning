import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'async_value_screen.g.dart';

@riverpod
Future<String> getAsyncData(GetAsyncDataRef ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'ehuehe';
}


// With AsyncValue
class HomePage2 extends ConsumerWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(getAsyncDataProvider);
    return Scaffold(
      body: Center(
        // safe and sound! fully compile and type-safe!
        child: asyncData.when(
          data: (data) => Text(data),
          error: (e, _) => Text('Error: $e'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}


// Without AsyncValue
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late final Future<String> asyncData;

  @override
  void initState() {
    super.initState();
    asyncData = ref.watch(getAsyncDataProvider.future);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: asyncData,
          builder: (context, snapshot) {
            // Error-prone! You may forget to handle other cases
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            return Text(snapshot.data!);
          },
        ),
      ),
    );
  }
}