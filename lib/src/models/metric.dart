part of appwrite.models;

/// Metric
class Metric implements Model {
    /// The value of this metric at the timestamp.
    final int value;
    /// The UNIX timestamp at which this metric was aggregated.
    final int timestamp;

    Metric({
        required this.value,
        required this.timestamp,
    });

    factory Metric.fromMap(Map<String, dynamic> map) {
        return Metric(
            value: map['value'],
            timestamp: map['timestamp'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "value": value,
            "timestamp": timestamp,
        };
    }
}
