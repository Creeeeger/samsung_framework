package com.android.systemui.recents;

import android.util.Log;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class OverviewProxyService$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ OverviewProxyService f$0;

    public /* synthetic */ OverviewProxyService$$ExternalSyntheticLambda0(OverviewProxyService overviewProxyService, int i) {
        this.$r8$classId = i;
        this.f$0 = overviewProxyService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.internalConnectToCurrentUser("runnable: startConnectionToCurrentUser");
                return;
            case 1:
                OverviewProxyService overviewProxyService = this.f$0;
                overviewProxyService.getClass();
                Log.w("OverviewProxyService", "Binder supposed established connection but actual connection to service timed out, trying again");
                overviewProxyService.retryConnectionWithBackoff();
                return;
            default:
                OverviewProxyService overviewProxyService2 = this.f$0;
                ((Optional) overviewProxyService2.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$$ExternalSyntheticLambda4(overviewProxyService2, 0));
                return;
        }
    }
}
