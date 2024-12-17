package org.apache.commons.compress.compressors.deflate64;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
final class HuffmanState {
    public static final /* synthetic */ HuffmanState[] $VALUES;
    public static final HuffmanState DYNAMIC_CODES;
    public static final HuffmanState FIXED_CODES;
    public static final HuffmanState INITIAL;
    public static final HuffmanState STORED;

    static {
        HuffmanState huffmanState = new HuffmanState("INITIAL", 0);
        INITIAL = huffmanState;
        HuffmanState huffmanState2 = new HuffmanState("STORED", 1);
        STORED = huffmanState2;
        HuffmanState huffmanState3 = new HuffmanState("DYNAMIC_CODES", 2);
        DYNAMIC_CODES = huffmanState3;
        HuffmanState huffmanState4 = new HuffmanState("FIXED_CODES", 3);
        FIXED_CODES = huffmanState4;
        $VALUES = new HuffmanState[]{huffmanState, huffmanState2, huffmanState3, huffmanState4};
    }

    public static HuffmanState valueOf(String str) {
        return (HuffmanState) Enum.valueOf(HuffmanState.class, str);
    }

    public static HuffmanState[] values() {
        return (HuffmanState[]) $VALUES.clone();
    }
}
