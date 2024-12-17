package co.nstant.in.cbor.model;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public enum AdditionalInformation {
    DIRECT("DIRECT"),
    ONE_BYTE("ONE_BYTE"),
    TWO_BYTES("TWO_BYTES"),
    FOUR_BYTES("FOUR_BYTES"),
    EIGHT_BYTES("EIGHT_BYTES"),
    RESERVED("RESERVED"),
    INDEFINITE("INDEFINITE");

    private final int value;

    AdditionalInformation(String str) {
        this.value = r2;
    }

    public final int getValue() {
        return this.value;
    }
}
