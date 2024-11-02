package com.android.systemui.statusbar.pipeline.wifi.domain.interactor;

import com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel;
import com.android.systemui.statusbar.pipeline.wifi.ui.util.WifiSignalIconResource;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.domain.interactor.WifiInteractorImpl$wifiIconGroup$1", f = "WifiInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class WifiInteractorImpl$wifiIconGroup$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ WifiSignalIconResource $wifiSignalIconResource;
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiInteractorImpl$wifiIconGroup$1(WifiSignalIconResource wifiSignalIconResource, Continuation<? super WifiInteractorImpl$wifiIconGroup$1> continuation) {
        super(3, continuation);
        this.$wifiSignalIconResource = wifiSignalIconResource;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        WifiInteractorImpl$wifiIconGroup$1 wifiInteractorImpl$wifiIconGroup$1 = new WifiInteractorImpl$wifiIconGroup$1(this.$wifiSignalIconResource, (Continuation) obj3);
        wifiInteractorImpl$wifiIconGroup$1.L$0 = (WifiNetworkModel) obj;
        wifiInteractorImpl$wifiIconGroup$1.Z$0 = booleanValue;
        return wifiInteractorImpl$wifiIconGroup$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x013d, code lost:
    
        if (r0.enterpriseConfig.getPhase2Method() != 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0145, code lost:
    
        if (r0.enterpriseConfig.getEapMethod() != 4) goto L84;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.wifi.domain.interactor.WifiInteractorImpl$wifiIconGroup$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
