/// Response models for the Cron Expression Generator API.

/// API Response wrapper.
class CrongeneratorResponse {
  final String status;
  final dynamic error;
  final CrongeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CrongeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CrongeneratorResponse.fromJson(Map<String, dynamic> json) => CrongeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CrongeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
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
