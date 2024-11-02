package com.android.wm.shell.common.split;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CellUtil {
    public static boolean isCellInLeftOrTopBounds(int i, boolean z) {
        if (((i & 16) != 0 && !z) || ((i & 8) != 0 && z)) {
            return true;
        }
        return false;
    }
}
