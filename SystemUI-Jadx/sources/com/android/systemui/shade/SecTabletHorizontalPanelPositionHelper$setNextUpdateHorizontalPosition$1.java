package com.android.systemui.shade;

import com.android.systemui.QpRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1 implements Runnable {
    public final /* synthetic */ float $x;
    public final /* synthetic */ SecTabletHorizontalPanelPositionHelper this$0;

    public SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1(SecTabletHorizontalPanelPositionHelper secTabletHorizontalPanelPositionHelper, float f) {
        this.this$0 = secTabletHorizontalPanelPositionHelper;
        this.$x = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (QpRune.QUICK_TABLET_HORIZONTAL_PANEL_POSITION) {
            SecTabletHorizontalPanelPositionHelper secTabletHorizontalPanelPositionHelper = this.this$0;
            float f = this.$x;
            int i = SecTabletHorizontalPanelPositionHelper.$r8$clinit;
            secTabletHorizontalPanelPositionHelper.updateTabletHorizontalPanelPosition(f);
        }
    }
}
