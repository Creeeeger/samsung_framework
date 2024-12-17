package co.nstant.in.cbor.model;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public enum SimpleValueType {
    FALSE("FALSE"),
    TRUE("TRUE"),
    NULL("NULL"),
    UNDEFINED("UNDEFINED"),
    RESERVED("RESERVED"),
    UNALLOCATED("UNALLOCATED");

    private final int value;

    SimpleValueType(String str) {
        this.value = r2;
    }

    public final int getValue() {
        return this.value;
    }
}
