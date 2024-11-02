package com.android.systemui.qs.tileimpl;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QSTileImpl$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ QSTileImpl f$0;

    public /* synthetic */ QSTileImpl$$ExternalSyntheticLambda0(QSTileImpl qSTileImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = qSTileImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mLifecycle.setCurrentState(Lifecycle.State.CREATED);
                return;
            case 1:
                QSTileImpl qSTileImpl = this.f$0;
                if (!qSTileImpl.mLifecycle.mState.equals(Lifecycle.State.DESTROYED)) {
                    qSTileImpl.mLifecycle.setCurrentState(Lifecycle.State.RESUMED);
                    if (qSTileImpl.mReadyState == 0) {
                        qSTileImpl.mReadyState = 1;
                    }
                    qSTileImpl.refreshState(null);
                    return;
                }
                return;
            case 2:
                LifecycleRegistry lifecycleRegistry = this.f$0.mLifecycle;
                if (!lifecycleRegistry.mState.equals(Lifecycle.State.DESTROYED)) {
                    lifecycleRegistry.setCurrentState(Lifecycle.State.STARTED);
                    return;
                }
                return;
            default:
                this.f$0.mLifecycle.setCurrentState(Lifecycle.State.DESTROYED);
                return;
        }
    }
}
