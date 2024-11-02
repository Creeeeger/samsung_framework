package com.android.systemui.qs.external;

import android.content.ComponentName;
import com.android.systemui.qs.external.TileServices;
import com.android.systemui.statusbar.phone.StatusBarIconControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TileServices$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Comparable f$1;

    public /* synthetic */ TileServices$$ExternalSyntheticLambda1(Object obj, Comparable comparable, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = comparable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                TileServices tileServices = (TileServices) this.f$0;
                ((StatusBarIconControllerImpl) tileServices.mStatusBarIconController).removeAllIconsForSlot((String) this.f$1);
                return;
            default:
                TileServices.AnonymousClass3 anonymousClass3 = (TileServices.AnonymousClass3) this.f$0;
                ComponentName componentName = (ComponentName) this.f$1;
                anonymousClass3.getClass();
                boolean z = TileServices.DEBUG;
                TileServices.this.requestListening(componentName);
                return;
        }
    }
}
