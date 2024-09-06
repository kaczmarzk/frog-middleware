import 'dart:convert';
import 'package:http/http.dart' as http show get;

import '../dto/agify_response_dto.dart';

abstract interface class IAgifySource {
  Future<AgifyResponseDto> fetchNameInformation(String name);
}

class AgifySource implements IAgifySource {
  static const url = 'https://api.agify.io';

  @override
  Future<AgifyResponseDto> fetchNameInformation(String name) async {
    final uri = Uri.parse('$url?name=$name');
    final Map<String, dynamic> res = await http.get(uri).then((e) => json.decode(e.body));
    return AgifyResponseDto.fromJson(res);
  }
}
