package com.android.systemui.accessibility.floatingmenu;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AccessibilityFloatingMenuView$$ExternalSyntheticLambda4 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AccessibilityFloatingMenuView f$0;

    public /* synthetic */ AccessibilityFloatingMenuView$$ExternalSyntheticLambda4(AccessibilityFloatingMenuView accessibilityFloatingMenuView, int i) {
        this.$r8$classId = i;
        this.f$0 = accessibilityFloatingMenuView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mFadeOutAnimator.start();
                return;
            default:
                this.f$0.setAlpha(1.0f);
                return;
        }
    }
}
