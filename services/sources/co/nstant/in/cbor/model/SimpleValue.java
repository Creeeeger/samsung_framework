package co.nstant.in.cbor.model;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class SimpleValue extends Special {
    public final SimpleValueType simpleValueType;
    public final int value;
    public static final SimpleValue FALSE = new SimpleValue(SimpleValueType.FALSE);
    public static final SimpleValue TRUE = new SimpleValue(SimpleValueType.TRUE);
    public static final SimpleValue NULL = new SimpleValue(SimpleValueType.NULL);
    public static final SimpleValue UNDEFINED = new SimpleValue(SimpleValueType.UNDEFINED);

    public SimpleValue(int i) {
        super(i <= 23 ? SpecialType.SIMPLE_VALUE : SpecialType.SIMPLE_VALUE_NEXT_BYTE);
        SimpleValueType simpleValueType;
        this.value = i;
        switch (i & 31) {
            case 20:
                simpleValueType = SimpleValueType.FALSE;
                break;
            case 21:
                simpleValueType = SimpleValueType.TRUE;
                break;
            case 22:
                simpleValueType = SimpleValueType.NULL;
                break;
            case 23:
                simpleValueType = SimpleValueType.UNDEFINED;
                break;
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
                simpleValueType = SimpleValueType.RESERVED;
                break;
            default:
                simpleValueType = SimpleValueType.UNALLOCATED;
                break;
        }
        this.simpleValueType = simpleValueType;
    }

    public SimpleValue(SimpleValueType simpleValueType) {
        super(SpecialType.SIMPLE_VALUE);
        this.value = simpleValueType.getValue();
        this.simpleValueType = simpleValueType;
    }

    @Override // co.nstant.in.cbor.model.Special, co.nstant.in.cbor.model.DataItem
    public final boolean equals(Object obj) {
        if (obj instanceof SimpleValue) {
            return super.equals(obj) && this.value == ((SimpleValue) obj).value;
        }
        return false;
    }

    @Override // co.nstant.in.cbor.model.Special, co.nstant.in.cbor.model.DataItem
    public final int hashCode() {
        return Integer.valueOf(this.value).hashCode() ^ super.hashCode();
    }

    @Override // co.nstant.in.cbor.model.Special
    public final String toString() {
        return this.simpleValueType.toString();
    }
}
