package com.android.settingslib.devicestate;

import android.content.Context;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PosturesHelper {
    public final int[] foldedDeviceStates;
    public final int[] halfFoldedDeviceStates;
    public final int[] rearDisplayDeviceStates;
    public final int[] unfoldedDeviceStates;

    public PosturesHelper(Context context) {
        this.foldedDeviceStates = context.getResources().getIntArray(17236216);
        this.halfFoldedDeviceStates = context.getResources().getIntArray(17236223);
        this.unfoldedDeviceStates = context.getResources().getIntArray(17236271);
        this.rearDisplayDeviceStates = context.getResources().getIntArray(17236277);
    }

    public final int deviceStateToPosture(int i) {
        if (ArraysKt___ArraysKt.contains(i, this.foldedDeviceStates)) {
            return 0;
        }
        if (ArraysKt___ArraysKt.contains(i, this.halfFoldedDeviceStates)) {
            return 1;
        }
        if (ArraysKt___ArraysKt.contains(i, this.unfoldedDeviceStates)) {
            return 2;
        }
        if (ArraysKt___ArraysKt.contains(i, this.rearDisplayDeviceStates)) {
            return 3;
        }
        return -1;
    }
}
