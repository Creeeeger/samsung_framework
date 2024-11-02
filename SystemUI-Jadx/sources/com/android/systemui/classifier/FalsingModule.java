package com.android.systemui.classifier;

import android.content.res.Resources;
import android.view.ViewConfiguration;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface FalsingModule {
    static float providesDoubleTapTouchSlop(Resources resources) {
        return resources.getDimension(R.dimen.double_tap_slop);
    }

    static boolean providesIsFoldableDevice(Resources resources) {
        try {
            if (resources.getIntArray(17236216).length == 0) {
                return false;
            }
            return true;
        } catch (Resources.NotFoundException unused) {
            return false;
        }
    }

    static float providesLongTapTouchSlop(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledTouchSlop() * 1.25f;
    }
}
