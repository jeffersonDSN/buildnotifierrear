import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter_langdetect/flutter_langdetect.dart' as langdetect;

class Parameter {
  final String name;
  final String value;

  Parameter({required this.name, required this.value});
}

class GenerativeModelSingleton {
  static final GenerativeModelSingleton _instance =
      GenerativeModelSingleton._internal();

  final GenerativeModel model;

  factory GenerativeModelSingleton() {
    return _instance;
  }

  GenerativeModelSingleton._internal()
      : model = GenerativeModel(
          model: "gemini-1.5-flash",
          apiKey: 'AIzaSyD8Mviw4fLJVFogTjBzInBsfkOmRFL8iuY',
        );
}

// Future<String> detectLanguage(String text) async {
//   final detectedLang = await langdetect.detect(text);

//   final languageCodes = ['en', 'es', 'pt'];

//   String getBestMatch(String lang) {
//     if (languageCodes.contains(lang)) {
//       return lang;
//     } else {
//       var langs = langdetect.detectLangs(text);

//       var filteredProbabilities =
//           langs.where((p) => languageCodes.contains(p.lang));

//       var bestMatch =
//           filteredProbabilities.reduce((a, b) => a.prob > b.prob ? a : b);
//       return bestMatch.lang;
//     }
//   }

//   return getBestMatch(detectedLang);
// }

Future<Map<String, String>> getValueList(String value) async {
  final model = GenerativeModelSingleton().model;
  Map<String, String> valueList = {};

  GenerationConfig generationConfig = GenerationConfig(
    temperature: 0.1,
    topK: 1,
    topP: 1,
    maxOutputTokens: 2048,
  );

  if (value.isEmpty) {
    return valueList;
  }

  final language = langdetect.detect(value);

  switch (language) {
    case 'en':
      final response = await Future.wait([
        model.generateContent(
          [
            Content.text('translate to pt'),
            Content.text(value),
          ],
          generationConfig: generationConfig,
        ),
        model.generateContent(
          [
            Content.text('translate to es'),
            Content.text(value),
          ],
          generationConfig: generationConfig,
        ),
      ]);

      valueList.addAll({
        'en': value,
        'pt': response[0].text ?? '',
        'es': response[1].text ?? '',
      });

      break;

    case 'es':
      final response = await Future.wait([
        model.generateContent(
          [
            Content.text('translate to en'),
            Content.text(value),
          ],
          generationConfig: generationConfig,
        ),
        model.generateContent(
          [
            Content.text('translate to pt'),
            Content.text(value),
          ],
          generationConfig: generationConfig,
        ),
      ]);

      valueList.addAll({
        'en': response[0].text ?? '',
        'pt': response[1].text ?? '',
        'es': value,
      });

      break;

    case 'pt':
      final response = await Future.wait([
        model.generateContent(
          [
            Content.text('translate to en'),
            Content.text(value),
          ],
          generationConfig: generationConfig,
        ),
        model.generateContent(
          [
            Content.text('translate to es'),
            Content.text(value),
          ],
          generationConfig: generationConfig,
        ),
      ]);

      valueList.addAll({
        'en': response[0].text ?? '',
        'pt': value,
        'es': response[1].text ?? '',
      });

      break;

    default:
      final response = await Future.wait([
        model.generateContent([
          Content.text('translate to en'),
          Content.text(value),
        ]),
        model.generateContent(
          [
            Content.text('translate to pt'),
            Content.text(value),
          ],
        ),
        model.generateContent(
          [
            Content.text('translate to es'),
            Content.text(value),
          ],
          generationConfig: generationConfig,
        ),
      ]);

      valueList.addAll({
        'en': response[0].text ?? '',
        'pt': response[1].text ?? '',
        'es': response[2].text ?? '',
      });

      break;
  }

  return valueList;
}

Future<Map<String, String>> getValueListWithContext(
  String value,
  Map<String, String> values,
) async {
  final model = GenerativeModelSingleton().model;
  Map<String, String> valueList = {};

  GenerationConfig generationConfig = GenerationConfig(
    temperature: 0.1,
    topK: 1,
    topP: 1,
    maxOutputTokens: 2048,
  );

  if (value.isEmpty) {
    return valueList;
  }

  final language = langdetect.detect(value);

  switch (language) {
    case 'en':
      final response = await Future.wait([
        model.generateContent(
          [
            Content.text(
              'translate "$value" to pt, Based on this last message "${values['pt']}", just the translation',
            ),
          ],
        ),
        model.generateContent(
          [
            Content.text(
              'translate "$value" to es, Based on this last message "${values['es']}", just the translation',
            ),
          ],
        ),
      ]);

      valueList.addAll({
        'en': value,
        'pt': response[0].text ?? '',
        'es': response[1].text ?? '',
      });

      break;

    case 'es':
      final response = await Future.wait([
        model.generateContent(
          [
            Content.text(
              'translate "$value" to en, Based on this last message "${values['en']}", just the translation',
            ),
          ],
          generationConfig: generationConfig,
        ),
        model.generateContent(
          [
            Content.text(
              'translate "$value" to pt, Based on this last message "${values['pt']}", just the translation',
            ),
          ],
          generationConfig: generationConfig,
        ),
      ]);

      valueList.addAll({
        'en': response[0].text ?? '',
        'pt': response[1].text ?? '',
        'es': value,
      });

      break;

    case 'pt':
      final response = await Future.wait([
        model.generateContent(
          [
            Content.text(
              'translate "$value" to en, Based on this last message "${values['en']}", just the translation',
            ),
          ],
        ),
        model.generateContent(
          [
            Content.text(
              'translate "$value" to es, Based on this last message "${values['es']}", just the translation',
            ),
          ],
          generationConfig: generationConfig,
        ),
      ]);

      valueList.addAll({
        'en': response[0].text ?? '',
        'pt': value,
        'es': response[1].text ?? '',
      });

      break;

    default:
      final response = await Future.wait([
        model.generateContent([
          Content.text(
            'translate "$value" to en, Based on this last message "${values['en']}", just the translation',
          ),
        ]),
        model.generateContent(
          [
            Content.text(
              'translate "$value" to pt, Based on this last message "${values['pt']}", just the translation',
            ),
          ],
        ),
        model.generateContent(
          [
            Content.text(
              'translate "$value" to es, Based on this last message "${values['es']}", just the translation',
            ),
          ],
          generationConfig: generationConfig,
        ),
      ]);

      valueList.addAll({
        'en': response[0].text ?? '',
        'pt': response[1].text ?? '',
        'es': response[2].text ?? '',
      });

      break;
  }

  return valueList;
}
