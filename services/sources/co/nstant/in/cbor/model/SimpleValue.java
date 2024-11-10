package co.nstant.in.cbor.model;

import java.util.Objects;

/* loaded from: classes.dex */
public class SimpleValue extends Special {
    public final SimpleValueType simpleValueType;
    public final int value;
    public static final SimpleValue FALSE = new SimpleValue(SimpleValueType.FALSE);
    public static final SimpleValue TRUE = new SimpleValue(SimpleValueType.TRUE);
    public static final SimpleValue NULL = new SimpleValue(SimpleValueType.NULL);
    public static final SimpleValue UNDEFINED = new SimpleValue(SimpleValueType.UNDEFINED);

    public SimpleValue(SimpleValueType simpleValueType) {
        super(SpecialType.SIMPLE_VALUE);
        this.value = simpleValueType.getValue();
        this.simpleValueType = simpleValueType;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SimpleValue(int r2) {
        /*
            r1 = this;
            r0 = 23
            if (r2 > r0) goto L7
            co.nstant.in.cbor.model.SpecialType r0 = co.nstant.in.cbor.model.SpecialType.SIMPLE_VALUE
            goto L9
        L7:
            co.nstant.in.cbor.model.SpecialType r0 = co.nstant.in.cbor.model.SpecialType.SIMPLE_VALUE_NEXT_BYTE
        L9:
            r1.<init>(r0)
            r1.value = r2
            co.nstant.in.cbor.model.SimpleValueType r2 = co.nstant.in.cbor.model.SimpleValueType.ofByte(r2)
            r1.simpleValueType = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: co.nstant.in.cbor.model.SimpleValue.<init>(int):void");
    }

    public SimpleValueType getSimpleValueType() {
        return this.simpleValueType;
    }

    public int getValue() {
        return this.value;
    }

    @Override // co.nstant.in.cbor.model.Special, co.nstant.in.cbor.model.DataItem
    public boolean equals(Object obj) {
        if (obj instanceof SimpleValue) {
            return super.equals(obj) && this.value == ((SimpleValue) obj).value;
        }
        return false;
    }

    @Override // co.nstant.in.cbor.model.Special, co.nstant.in.cbor.model.DataItem
    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.value)) ^ super.hashCode();
    }

    @Override // co.nstant.in.cbor.model.Special
    public String toString() {
        return this.simpleValueType.toString();
    }
}
