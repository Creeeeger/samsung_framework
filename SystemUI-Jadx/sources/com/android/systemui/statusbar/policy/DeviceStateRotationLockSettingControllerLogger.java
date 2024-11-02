package com.android.systemui.statusbar.policy;

import android.content.Context;
import com.android.systemui.log.LogBuffer;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DeviceStateRotationLockSettingControllerLogger {
    public final int[] foldedStates;
    public final int[] halfFoldedStates;
    public final LogBuffer logBuffer;
    public final int[] rearDisplayStates;
    public final int[] unfoldedStates;

    public DeviceStateRotationLockSettingControllerLogger(LogBuffer logBuffer, Context context) {
        this.logBuffer = logBuffer;
        this.foldedStates = context.getResources().getIntArray(17236216);
        this.halfFoldedStates = context.getResources().getIntArray(17236223);
        this.unfoldedStates = context.getResources().getIntArray(17236271);
        this.rearDisplayStates = context.getResources().getIntArray(17236277);
    }

    public static final String access$toDevicePostureString(DeviceStateRotationLockSettingControllerLogger deviceStateRotationLockSettingControllerLogger, int i) {
        if (ArraysKt___ArraysKt.contains(i, deviceStateRotationLockSettingControllerLogger.foldedStates)) {
            return "Folded";
        }
        if (ArraysKt___ArraysKt.contains(i, deviceStateRotationLockSettingControllerLogger.unfoldedStates)) {
            return "Unfolded";
        }
        if (ArraysKt___ArraysKt.contains(i, deviceStateRotationLockSettingControllerLogger.halfFoldedStates)) {
            return "Half-Folded";
        }
        if (ArraysKt___ArraysKt.contains(i, deviceStateRotationLockSettingControllerLogger.rearDisplayStates)) {
            return "Rear display";
        }
        if (i == -1) {
            return "Uninitialized";
        }
        return "Unknown";
    }
}
