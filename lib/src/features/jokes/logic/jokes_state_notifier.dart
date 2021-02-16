part of 'jokes_provider.dart';

/// Defines all the Jokes logic the app will use
class JokesNotifier extends StateNotifier<JokesState> {
  /// Base constructor expects a [ProviderReference] to
  /// read its usecases and also defines inital state
  JokesNotifier(GetJoke getJoke)
      : assert(getJoke != null),
        _getJoke = getJoke,
        super(JokesState.initial());

  final GetJoke _getJoke;

  void reset() => state = Initial();
}
