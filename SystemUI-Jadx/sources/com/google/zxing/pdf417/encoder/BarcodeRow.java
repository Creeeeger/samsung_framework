package com.google.zxing.pdf417.encoder;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BarcodeRow {
    public int currentLocation = 0;
    public final byte[] row;

    public BarcodeRow(int i) {
        this.row = new byte[i];
    }
}
