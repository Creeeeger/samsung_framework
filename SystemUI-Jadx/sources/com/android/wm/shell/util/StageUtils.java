package com.android.wm.shell.util;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StageUtils {
    public static int convertStagePositionToDockSide(int i) {
        if (i != 8) {
            if (i != 16) {
                if (i != 32) {
                    if (i != 64) {
                        return -1;
                    }
                    return 4;
                }
                return 3;
            }
            return 2;
        }
        return 1;
    }

    public static int getMultiSplitLaunchPosition(int i, boolean z) {
        if (i != 0) {
            if (z) {
                if ((i & 8) == 0) {
                    return 96;
                }
                return 24;
            }
            if ((i & 16) != 0) {
                return 48;
            }
            return 72;
        }
        if (z) {
            return 96;
        }
        return 48;
    }
}
