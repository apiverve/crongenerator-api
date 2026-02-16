/// Response models for the Cron Expression Generator API.

/// API Response wrapper.
class CrongeneratorResponse {
  final String status;
  final dynamic error;
  final CrongeneratorData? data;

  CrongeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CrongeneratorResponse.fromJson(Map<String, dynamic> json) => CrongeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CrongeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Cron Expression Generator API.

class CrongeneratorData {
  String? schedule;
  String? expression;
  String? description;

  CrongeneratorData({
    this.schedule,
    this.expression,
    this.description,
  });

  factory CrongeneratorData.fromJson(Map<String, dynamic> json) => CrongeneratorData(
      schedule: json['schedule'],
      expression: json['expression'],
      description: json['description'],
    );
}

class CrongeneratorRequest {
  String schedule;

  CrongeneratorRequest({
    required this.schedule,
  });

  Map<String, dynamic> toJson() => {
      'schedule': schedule,
    };
}
