package com.android.systemui.qs;

import android.view.View;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.demomode.DemoModeController;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.shade.ShadeHeaderController;
import com.android.systemui.statusbar.phone.StatusBarIconController;
import com.android.systemui.util.ViewController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecQuickStatusBarHeaderController extends ViewController {
    public boolean mListening;
    public final SecQuickQSPanelController mQuickQSPanelController;
    public final ShadeHeaderController mShadeHeaderController;

    public SecQuickStatusBarHeaderController(SecQuickStatusBarHeader secQuickStatusBarHeader, StatusBarIconController statusBarIconController, DemoModeController demoModeController, SecQuickQSPanelController secQuickQSPanelController, FeatureFlags featureFlags, StatusBarIconController.TintedIconManager.Factory factory, ShadeHeaderController shadeHeaderController) {
        super(secQuickStatusBarHeader);
        this.mQuickQSPanelController = secQuickQSPanelController;
        this.mShadeHeaderController = shadeHeaderController;
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        int paddingTop;
        View view = this.mView;
        SecQuickStatusBarHeader secQuickStatusBarHeader = (SecQuickStatusBarHeader) view;
        int paddingLeft = ((SecQuickStatusBarHeader) view).getPaddingLeft();
        if (QpRune.QUICK_TABLET_TOP_MARGIN) {
            paddingTop = this.mShadeHeaderController.getViewHeight() - ((SecQuickStatusBarHeader) this.mView).getResources().getDimensionPixelSize(R.dimen.shade_header_bottom_margin_tablet);
        } else {
            paddingTop = ((SecQuickStatusBarHeader) this.mView).getPaddingTop();
        }
        secQuickStatusBarHeader.setPadding(paddingLeft, paddingTop, ((SecQuickStatusBarHeader) this.mView).getPaddingRight(), ((SecQuickStatusBarHeader) this.mView).getPaddingBottom());
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        if (this.mListening) {
            this.mListening = false;
            this.mQuickQSPanelController.setListening(false);
        }
    }

    @Override // com.android.systemui.util.ViewController
    public final void onInit() {
    }
}
