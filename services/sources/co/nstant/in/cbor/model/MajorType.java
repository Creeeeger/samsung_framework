package co.nstant.in.cbor.model;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public enum MajorType {
    INVALID("INVALID"),
    UNSIGNED_INTEGER("UNSIGNED_INTEGER"),
    NEGATIVE_INTEGER("NEGATIVE_INTEGER"),
    BYTE_STRING("BYTE_STRING"),
    UNICODE_STRING("UNICODE_STRING"),
    ARRAY("ARRAY"),
    MAP("MAP"),
    TAG("TAG"),
    SPECIAL("SPECIAL");

    private final int value;

    MajorType(String str) {
        this.value = r2;
    }

    public final int getValue() {
        return this.value;
    }
}
