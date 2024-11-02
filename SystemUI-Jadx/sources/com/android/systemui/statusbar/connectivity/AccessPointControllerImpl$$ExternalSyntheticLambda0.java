package com.android.systemui.statusbar.connectivity;

import androidx.lifecycle.Lifecycle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class AccessPointControllerImpl$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AccessPointControllerImpl f$0;

    public /* synthetic */ AccessPointControllerImpl$$ExternalSyntheticLambda0(AccessPointControllerImpl accessPointControllerImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = accessPointControllerImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mLifecycle.setCurrentState(Lifecycle.State.DESTROYED);
                return;
            case 1:
                this.f$0.mLifecycle.setCurrentState(Lifecycle.State.CREATED);
                return;
            case 2:
                this.f$0.mLifecycle.setCurrentState(Lifecycle.State.CREATED);
                return;
            default:
                this.f$0.mLifecycle.setCurrentState(Lifecycle.State.STARTED);
                return;
        }
    }
}
