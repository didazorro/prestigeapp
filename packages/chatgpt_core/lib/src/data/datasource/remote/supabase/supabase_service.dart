// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:injectable/injectable.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
//
// import '../../../../../generated/l10n.dart';
// import '../../../../domain/entities/payloads/image_generate_option_payload.dart';
//
// const _imageGenerateFunctionName = 'image-generate';
// const _chatFunctionName = 'chat';
//
// @injectable
// class SupabaseService {
//   final SupabaseClient _supabaseClient;
//
//   SupabaseService(this._supabaseClient);
//
//   Future<List<String>?> generateImage(
//     String prompt,
//     ImageGenerateOptionPayload optionPayload,
//   ) async {
//     try {
//       final response = await _supabaseClient.functions
//           .invoke(_imageGenerateFunctionName, body: {
//         'prompt': prompt,
//         ...optionPayload.toJson(),
//       });
//
//       if (response.status == 200) {
//         final result = response.data as Map<String, dynamic>;
//         if (result['data'] != null && result['data'].isNotEmpty) {
//           final images = List.from(result['data'] as List)
//               .map((e) => e['url'])
//               .whereType<String>()
//               .toList();
//
//           return images;
//         }
//       } else {
//         final error = response.data['error']?['message'] as String?;
//         if (error?.isNotEmpty ?? false) {
//           debugPrint('Error: $error');
//         }
//       }
//
//       return null;
//     } catch (e) {
//       throw S.current.pleaseCheckConnection;
//     }
//   }
//
//   Future<String?> chat(List<Map> messages) async {
//     try {
//       final response = await _supabaseClient.functions.invoke(
//         _chatFunctionName,
//         body: {
//           'messages': messages,
//         },
//         responseType: ResponseType.arraybuffer,
//       );
//
//       final bodyBytes = response.data;
//       const utf8decoder = Utf8Decoder();
//       final Map<String, dynamic> decodedBody =
//           jsonDecode(utf8decoder.convert(bodyBytes)) as Map<String, dynamic>;
//
//       if (response.status == 200) {
//         final completed = decodedBody['content'] as String;
//         debugPrint('Message: $decodedBody');
//         if (completed.isNotEmpty) {
//           return completed;
//         }
//       } else {
//         final error = decodedBody['error']?['message'] as String?;
//         if (error?.isNotEmpty ?? false) {
//           debugPrint('Error: $error');
//         }
//       }
//
//       return null;
//     } catch (e) {
//       throw S.current.pleaseCheckConnection;
//     }
//   }
// }
