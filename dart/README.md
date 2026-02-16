# Cron Expression Generator API - Dart/Flutter Client

Cron Expression Generator is an AI-powered tool for converting natural language schedule descriptions into cron expressions. It returns valid cron syntax along with human-readable descriptions.

[![pub package](https://img.shields.io/pub/v/apiverve_crongenerator.svg)](https://pub.dev/packages/apiverve_crongenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Cron Expression Generator API](https://apiverve.com/marketplace/crongenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_crongenerator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_crongenerator/apiverve_crongenerator.dart';

void main() async {
  final client = CrongeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'schedule': 'every weekday at 9am'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "schedule": "every weekday at 9am",
    "expression": "0 9 * * 1-5",
    "description": "Runs every weekday at 9:00 AM."
  }
}
```

## API Reference

- **API Home:** [Cron Expression Generator API](https://apiverve.com/marketplace/crongenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/crongenerator](https://docs.apiverve.com/ref/crongenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
