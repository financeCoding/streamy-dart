/**
 * WARNING: GENERATED CODE. DO NOT EDIT BY HAND.
 * 
 */
library multiplexertest;
import 'dart:async';
import 'package:streamy/streamy.dart' as streamy;
import 'multiplexer_client_resources.dart' as res;

abstract class MultiplexerTestResourcesMixin {
  res.FoosResource _foos;
  res.FoosResource get foos {
    if (_foos == null) {
      _foos = new res.FoosResource(this as streamy.Root);
    }
    return _foos;
  }
}

class MultiplexerTest
    extends streamy.Root
    with MultiplexerTestResourcesMixin {
  String get apiType => r'MultiplexerTest';
  final streamy.TransactionStrategy _txStrategy;
  final streamy.RequestHandler requestHandler;
  final streamy.Tracer _tracer;
  MultiplexerTest(
      this.requestHandler,
      {String servicePath: 'multiplexerTest/v1/',
      streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY,
      streamy.TransactionStrategy txStrategy: null,
      streamy.Tracer tracer: const streamy.NoopTracer()}) :
          super(typeRegistry, servicePath),
          this._txStrategy = txStrategy,
          this._tracer = tracer;
  Stream send(streamy.Request request) =>
      requestHandler.handle(request, _tracer.trace(request));
  MultiplexerTestTransaction beginTransaction() =>
      new MultiplexerTestTransaction(typeRegistry, servicePath,
          _txStrategy.beginTransaction());
}

/// Provides the same API as [MultiplexerTest] but runs all requests as
/// part of the same transaction.
class MultiplexerTestTransaction
    extends streamy.TransactionRoot
    with MultiplexerTestResourcesMixin {
  String get apiType => r'MultiplexerTestTransaction';
  MultiplexerTestTransaction(
      streamy.TypeRegistry typeRegistry,
      String servicePath,
      streamy.Transaction tx) : super(typeRegistry, servicePath, tx);
}
