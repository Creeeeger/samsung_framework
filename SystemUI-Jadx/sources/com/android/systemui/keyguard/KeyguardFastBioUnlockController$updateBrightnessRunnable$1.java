package com.android.systemui.keyguard;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardFastBioUnlockController$updateBrightnessRunnable$1 implements Runnable {
    public float adjustedBrightness;
    public float brightness;
    public int displayState;
    public boolean isAodBrightThanNormal;
    public final /* synthetic */ KeyguardFastBioUnlockController this$0;

    public KeyguardFastBioUnlockController$updateBrightnessRunnable$1(KeyguardFastBioUnlockController keyguardFastBioUnlockController) {
        this.this$0 = keyguardFastBioUnlockController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        KeyguardFastBioUnlockController keyguardFastBioUnlockController = this.this$0;
        boolean z2 = this.isAodBrightThanNormal;
        int i = this.displayState;
        float f = this.brightness;
        float f2 = this.adjustedBrightness;
        if (keyguardFastBioUnlockController.curIsAodBrighterThanNormal != z2) {
            keyguardFastBioUnlockController.curIsAodBrighterThanNormal = z2;
            String str = "onBrightnessChanged isAodBrighterThanNormal=" + z2 + ", displayState=" + i;
            boolean z3 = true;
            if (f == -1.0f) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                if (f2 != -1.0f) {
                    z3 = false;
                }
                if (!z3) {
                    str = str + " brightness=" + f + " adjustedBrightness=" + f2;
                }
            }
            KeyguardFastBioUnlockController.logD(str);
        }
    }
}
