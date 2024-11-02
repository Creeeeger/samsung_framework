package com.samsung.android.desktopsystemui.sharedlib.system;

import android.window.IRemoteTransitionFinishedCallback;
import com.samsung.android.desktopsystemui.sharedlib.system.RemoteTransitionCompat;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class RemoteTransitionCompat$1$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ IRemoteTransitionFinishedCallback f$0;

    public /* synthetic */ RemoteTransitionCompat$1$$ExternalSyntheticLambda0(IRemoteTransitionFinishedCallback iRemoteTransitionFinishedCallback, int i) {
        this.$r8$classId = i;
        this.f$0 = iRemoteTransitionFinishedCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                RemoteTransitionCompat.AnonymousClass1.m2484$r8$lambda$CIhxtG26IjKoYIDb_bD0EAbO2M(this.f$0);
                return;
            default:
                RemoteTransitionCompat.AnonymousClass1.$r8$lambda$opgUtdb2WIfDCeVcUBBeh4gBRf8(this.f$0);
                return;
        }
    }
}
