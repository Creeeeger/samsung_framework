package com.android.wm.shell.startingsurface;

import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import java.util.function.IntPredicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer$$ExternalSyntheticLambda0 implements IntPredicate {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.IntPredicate
    public final boolean test(int i) {
        switch (this.$r8$classId) {
            case 0:
                if ((i & EmergencyPhoneWidget.BG_COLOR) != 0) {
                    return true;
                }
                return false;
            default:
                if ((i & EmergencyPhoneWidget.BG_COLOR) == -16777216) {
                    return true;
                }
                return false;
        }
    }
}
