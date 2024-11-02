package com.android.wm.shell.splitscreen;

import android.graphics.Rect;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.samsung.android.knox.ex.peripheral.PeripheralBarcodeConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface SplitScreen {
    static String stageTypeToString(int i) {
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    return LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("UNKNOWN(", i, ")");
                }
                return "SIDE";
            }
            return "MAIN";
        }
        return PeripheralBarcodeConstants.Symbology.UNDEFINED;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SplitScreenListener {
        default void onSplitVisibilityChanged(boolean z) {
        }

        default void onStagePositionChanged(int i, int i2) {
        }

        default void onSplitBoundsChanged(Rect rect, Rect rect2, Rect rect3) {
        }

        default void onTaskStageChanged(int i, int i2, boolean z) {
        }
    }
}
