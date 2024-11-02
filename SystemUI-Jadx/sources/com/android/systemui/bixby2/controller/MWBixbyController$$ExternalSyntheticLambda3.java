package com.android.systemui.bixby2.controller;

import android.app.ActivityManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MWBixbyController$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MWBixbyController f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ MWBixbyController$$ExternalSyntheticLambda3(MWBixbyController mWBixbyController, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = mWBixbyController;
        this.f$1 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                MWBixbyController.$r8$lambda$pSwgOGmGUcL5xBb97Nk0G4cengo(this.f$0, (ActivityManager.RunningTaskInfo) this.f$1);
                return;
            default:
                MWBixbyController.$r8$lambda$HDdQO6yXx55WcPPyRIia8VnNEx4(this.f$0, (int[]) this.f$1);
                return;
        }
    }
}
