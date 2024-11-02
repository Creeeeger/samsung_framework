package com.google.zxing.oned;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class UPCEANWriter extends OneDimensionalCodeWriter {
    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public final int getDefaultMargin() {
        int[] iArr = UPCEANReader.START_END_PATTERN;
        return 3;
    }
}
