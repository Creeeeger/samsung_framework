package co.nstant.in.cbor.model;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class SpecialType {
    public static final /* synthetic */ SpecialType[] $VALUES;
    public static final SpecialType BREAK;
    public static final SpecialType IEEE_754_DOUBLE_PRECISION_FLOAT;
    public static final SpecialType IEEE_754_HALF_PRECISION_FLOAT;
    public static final SpecialType IEEE_754_SINGLE_PRECISION_FLOAT;
    public static final SpecialType SIMPLE_VALUE;
    public static final SpecialType SIMPLE_VALUE_NEXT_BYTE;
    public static final SpecialType UNALLOCATED;

    static {
        SpecialType specialType = new SpecialType("SIMPLE_VALUE", 0);
        SIMPLE_VALUE = specialType;
        SpecialType specialType2 = new SpecialType("SIMPLE_VALUE_NEXT_BYTE", 1);
        SIMPLE_VALUE_NEXT_BYTE = specialType2;
        SpecialType specialType3 = new SpecialType("IEEE_754_HALF_PRECISION_FLOAT", 2);
        IEEE_754_HALF_PRECISION_FLOAT = specialType3;
        SpecialType specialType4 = new SpecialType("IEEE_754_SINGLE_PRECISION_FLOAT", 3);
        IEEE_754_SINGLE_PRECISION_FLOAT = specialType4;
        SpecialType specialType5 = new SpecialType("IEEE_754_DOUBLE_PRECISION_FLOAT", 4);
        IEEE_754_DOUBLE_PRECISION_FLOAT = specialType5;
        SpecialType specialType6 = new SpecialType("UNALLOCATED", 5);
        UNALLOCATED = specialType6;
        SpecialType specialType7 = new SpecialType("BREAK", 6);
        BREAK = specialType7;
        $VALUES = new SpecialType[]{specialType, specialType2, specialType3, specialType4, specialType5, specialType6, specialType7};
    }

    public static SpecialType valueOf(String str) {
        return (SpecialType) Enum.valueOf(SpecialType.class, str);
    }

    public static SpecialType[] values() {
        return (SpecialType[]) $VALUES.clone();
    }
}
