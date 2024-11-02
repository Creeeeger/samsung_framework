package com.android.wm.shell.common.magnetictarget;

import android.graphics.PointF;
import com.android.wm.shell.common.magnetictarget.MagnetizedObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MagnetizedObject$MagneticTarget$updateLocationOnScreen$1 implements Runnable {
    public final /* synthetic */ MagnetizedObject.MagneticTarget this$0;

    public MagnetizedObject$MagneticTarget$updateLocationOnScreen$1(MagnetizedObject.MagneticTarget magneticTarget) {
        this.this$0 = magneticTarget;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MagnetizedObject.MagneticTarget magneticTarget = this.this$0;
        magneticTarget.targetView.getLocationOnScreen(magneticTarget.tempLoc);
        PointF pointF = this.this$0.centerOnScreen;
        float width = ((r0.targetView.getWidth() / 2.0f) + r0.tempLoc[0]) - this.this$0.targetView.getTranslationX();
        MagnetizedObject.MagneticTarget magneticTarget2 = this.this$0;
        pointF.set(width, ((magneticTarget2.targetView.getHeight() / 2.0f) + magneticTarget2.tempLoc[1]) - this.this$0.targetView.getTranslationY());
    }
}
