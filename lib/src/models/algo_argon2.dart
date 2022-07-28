part of appwrite.models;

/// AlgoArgon2
class AlgoArgon2 implements Model {
    /// Memory that may be used to compute hash.
    final int memoryCost;
    /// Amount of time it may take to compute hash.
    final int timeCost;
    /// Number of threads to use to compute hash.
    final int threads;

    AlgoArgon2({
        required this.memoryCost,
        required this.timeCost,
        required this.threads,
    });

    factory AlgoArgon2.fromMap(Map<String, dynamic> map) {
        return AlgoArgon2(
            memoryCost: map['memoryCost'],
            timeCost: map['timeCost'],
            threads: map['threads'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "memoryCost": memoryCost,
            "timeCost": timeCost,
            "threads": threads,
        };
    }
}
