package com.android.systemui.shared.system;

import android.hardware.input.InputManagerGlobal;
import android.view.InputMonitor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class InputMonitorCompat {
    public final InputMonitor mInputMonitor;

    public InputMonitorCompat(String str, int i) {
        this.mInputMonitor = InputManagerGlobal.getInstance().monitorGestureInput(str, i);
    }
}
