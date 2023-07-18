
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'counter_screen.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 0;

  void increment() => state++;
  void decrement() => state--;
  void reset() => ref.invalidateSelf();
}

// Full code of the UI
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Text(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _IncreaseButton(),
                _DecreaseButton(),
                _ResetButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// StatelessWidget -> ConsumerWidget
class _Text extends ConsumerWidget {
  const _Text();
  @override
  Widget build(BuildContext context, WidgetRef ref) { // add ref here
    final count = ref.watch(counterProvider);
    return Text('$count');
  }
}

// StatelessWidget -> ConsumerWidget
class _IncreaseButton extends ConsumerWidget {
  const _IncreaseButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) { // add ref here
    return ElevatedButton(
      onPressed: ref.read(counterProvider.notifier).increment,
      child: const Text('Increase'),
    );
  }
}

// StatelessWidget -> ConsumerWidget
class _DecreaseButton extends ConsumerWidget {
  const _DecreaseButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) { // add ref here
    return ElevatedButton(
      onPressed: ref.read(counterProvider.notifier).decrement,
      child: const Text('Decrease'),
    );
  }
}

// StatelessWidget -> ConsumerWidget
class _ResetButton extends ConsumerWidget {
  const _ResetButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) { // add ref here
    return ElevatedButton(
      onPressed: ref.read(counterProvider.notifier).reset,
      child: const Text('Reset'),
    );
  }
}