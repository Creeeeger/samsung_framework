package com.android.keyguard;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardPatternView$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardPatternView f$0;

    public /* synthetic */ KeyguardPatternView$$ExternalSyntheticLambda1(KeyguardPatternView keyguardPatternView, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardPatternView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 1;
        switch (this.$r8$classId) {
            case 0:
                KeyguardPatternView keyguardPatternView = this.f$0;
                int i2 = KeyguardPatternView.$r8$clinit;
                keyguardPatternView.setAlpha(1.0f);
                keyguardPatternView.mAppearAnimationUtils.startAnimation2d(keyguardPatternView.mLockPatternView.getCellStates(), new KeyguardPatternView$$ExternalSyntheticLambda1(keyguardPatternView, i), keyguardPatternView);
                return;
            default:
                KeyguardPatternView keyguardPatternView2 = this.f$0;
                int i3 = KeyguardPatternView.$r8$clinit;
                keyguardPatternView2.enableClipping(true);
                return;
        }
    }
}
