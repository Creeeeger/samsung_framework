package com.android.systemui.statusbar.phone;

import android.content.Context;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.scrim.ScrimView;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionListener;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSScrimViewSwitch implements ShadeExpansionListener, StatusBarStateController.StateListener {
    public final KeyguardStateController mKeyguardStateController;
    public boolean mPanelVisible;
    public final ScrimView mScrimBehind;
    public final ScrimView mScrimInFront;
    public ScrimState mScrimState;
    public int mStatusBarState;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.QSScrimViewSwitch$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 {
        public AnonymousClass1() {
        }
    }

    public QSScrimViewSwitch(Context context, ShadeExpansionStateManager shadeExpansionStateManager, StatusBarStateController statusBarStateController, ScrimController scrimController, KeyguardStateController keyguardStateController, ScrimView scrimView, ScrimView scrimView2) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        shadeExpansionStateManager.addExpansionListener(this);
        statusBarStateController.addCallback(this);
        this.mKeyguardStateController = keyguardStateController;
        this.mScrimBehind = scrimView;
        this.mScrimInFront = scrimView2;
        scrimController.mScrimStateCallback = anonymousClass1;
    }

    @Override // com.android.systemui.shade.ShadeExpansionListener
    public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
        if (this.mStatusBarState == 1) {
            return;
        }
        onPanelExpansionChanged(shadeExpansionChangeEvent.fraction);
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onStateChanged(int i) {
        if (this.mStatusBarState != i) {
            this.mStatusBarState = i;
            if (i == 0) {
                updateScrimVisibility();
            }
        }
    }

    public final void updateScrimVisibility() {
        boolean z;
        int i = 0;
        if (this.mPanelVisible && !((KeyguardStateControllerImpl) this.mKeyguardStateController).mPrimaryBouncerShowing) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = 8;
        }
        this.mScrimBehind.setVisibility(i);
        this.mScrimInFront.setVisibility(i);
    }

    public final void onPanelExpansionChanged(float f) {
        ScrimView scrimView = this.mScrimBehind;
        if (f > 0.0f && scrimView.getVisibility() != 8) {
            this.mPanelVisible = true;
            updateScrimVisibility();
        } else if (f == 0.0f && scrimView.getVisibility() == 8) {
            this.mPanelVisible = false;
            updateScrimVisibility();
        }
    }
}
