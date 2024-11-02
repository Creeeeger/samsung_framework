package com.android.wm.shell.startingsurface.phone;

import android.window.StartingWindowInfo;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.startingsurface.StartingWindowTypeAlgorithm;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PhoneStartingWindowTypeAlgorithm implements StartingWindowTypeAlgorithm {
    @Override // com.android.wm.shell.startingsurface.StartingWindowTypeAlgorithm
    public final int getSuggestedWindowType(StartingWindowInfo startingWindowInfo) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        int i = startingWindowInfo.startingWindowTypeParameter;
        if ((i & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((i & 4) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if ((i & 8) != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        if ((i & 16) != 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        if ((i & 32) != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            z7 = true;
        } else {
            z7 = false;
        }
        if ((i & 64) != 0) {
            z8 = true;
        } else {
            z8 = false;
        }
        if ((i & 256) != 0) {
            z9 = true;
        } else {
            z9 = false;
        }
        if (startingWindowInfo.taskInfo.topActivityType == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, 1535727272, 1048575, null, Boolean.valueOf(z), Boolean.valueOf(z2), Boolean.valueOf(z3), Boolean.valueOf(z4), Boolean.valueOf(z5), Boolean.valueOf(z6), Boolean.valueOf(z7), Boolean.valueOf(z8), Boolean.valueOf(z9), Boolean.valueOf(z10));
        }
        if (z9) {
            return 5;
        }
        if (!z10 && (!z3 || z || (z2 && !z5))) {
            if (z6) {
                return 3;
            }
            if (z7) {
                return 4;
            }
            return 1;
        }
        if (z2) {
            if (z4) {
                if (startingWindowInfo.taskSnapshot != null) {
                    return 2;
                }
                if (!z10) {
                    return 3;
                }
            }
            if (!z8 && !z10) {
                if (z6) {
                    return 3;
                }
                if (z7) {
                    return 4;
                }
                return 1;
            }
            return 0;
        }
        return 0;
    }
}
