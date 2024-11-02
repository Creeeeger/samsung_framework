package com.android.systemui.dreams.touch;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.android.systemui.dreams.touch.DreamOverlayTouchMonitor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda0 implements DreamOverlayTouchMonitor.Evaluator {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MotionEvent f$0;
    public final /* synthetic */ MotionEvent f$1;
    public final /* synthetic */ float f$2;
    public final /* synthetic */ float f$3;

    public /* synthetic */ DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda0(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2, int i) {
        this.$r8$classId = i;
        this.f$0 = motionEvent;
        this.f$1 = motionEvent2;
        this.f$2 = f;
        this.f$3 = f2;
    }

    @Override // com.android.systemui.dreams.touch.DreamOverlayTouchMonitor.Evaluator
    public final boolean evaluate(GestureDetector.OnGestureListener onGestureListener) {
        int i = this.$r8$classId;
        float f = this.f$3;
        float f2 = this.f$2;
        MotionEvent motionEvent = this.f$1;
        MotionEvent motionEvent2 = this.f$0;
        switch (i) {
            case 0:
                return onGestureListener.onFling(motionEvent2, motionEvent, f2, f);
            default:
                return onGestureListener.onScroll(motionEvent2, motionEvent, f2, f);
        }
    }
}
