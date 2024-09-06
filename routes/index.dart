import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';

import '../src/data/dto/agify_response_dto.dart';
import '../src/data/source/agify_source.dart';

Future<Response> onRequest(RequestContext context) async {
  final AgifySource source = AgifySource();
  final AgifyResponseDto response = await source.fetchNameInformation(context.request.uri.query);
  return Response(body: json.encode(response.toJson()), statusCode: 200);
}
