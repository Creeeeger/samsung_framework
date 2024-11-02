package com.android.systemui.shade;

import com.android.systemui.plugins.qs.QS;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QuickSettingsController$$ExternalSyntheticLambda2 implements QS.HeightListener, QS.ScrollListener {
    public final /* synthetic */ QuickSettingsController f$0;

    public /* synthetic */ QuickSettingsController$$ExternalSyntheticLambda2(QuickSettingsController quickSettingsController) {
        this.f$0 = quickSettingsController;
    }

    @Override // com.android.systemui.plugins.qs.QS.HeightListener
    public final void onQsHeightChanged() {
        this.f$0.onHeightChanged();
    }

    @Override // com.android.systemui.plugins.qs.QS.ScrollListener
    public final void onQsPanelScrollChanged(int i) {
        QuickSettingsController quickSettingsController = this.f$0;
        ShadeHeaderController shadeHeaderController = quickSettingsController.mShadeHeaderController;
        if (shadeHeaderController.qsScrollY != i) {
            shadeHeaderController.qsScrollY = i;
            if (!shadeHeaderController.largeScreenActive) {
                shadeHeaderController.header.setScrollY(i);
            }
        }
        if (i > 0 && !quickSettingsController.mFullyExpanded) {
            ((NotificationPanelViewController) quickSettingsController.mPanelViewControllerLazy.get()).expandToQs();
        }
    }
}
