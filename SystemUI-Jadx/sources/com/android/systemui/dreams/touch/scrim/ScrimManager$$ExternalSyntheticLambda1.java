package com.android.systemui.dreams.touch.scrim;

import com.android.systemui.dreams.touch.BouncerSwipeTouchHandler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class ScrimManager$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ScrimManager f$0;
    public final /* synthetic */ BouncerSwipeTouchHandler.AnonymousClass1 f$1;

    public /* synthetic */ ScrimManager$$ExternalSyntheticLambda1(ScrimManager scrimManager, BouncerSwipeTouchHandler.AnonymousClass1 anonymousClass1, int i) {
        this.$r8$classId = i;
        this.f$0 = scrimManager;
        this.f$1 = anonymousClass1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ScrimManager scrimManager = this.f$0;
                scrimManager.mCallbacks.add(this.f$1);
                return;
            default:
                ScrimManager scrimManager2 = this.f$0;
                scrimManager2.mCallbacks.remove(this.f$1);
                return;
        }
    }
}
