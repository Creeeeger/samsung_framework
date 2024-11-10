package com.android.server.appop;

import android.content.AttributionSource;
import com.android.internal.util.function.HexFunction;
import com.android.server.appop.AppOpsService;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5 implements HexFunction {
    public final /* synthetic */ AppOpsService f$0;

    public /* synthetic */ AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5(AppOpsService appOpsService) {
        this.f$0 = appOpsService;
    }

    public final Object apply(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return AppOpsService.CheckOpsDelegateDispatcher.m2451$r8$lambda$i5BgzdKGjmZM_Fo82DEvnLzfGw(this.f$0, ((Integer) obj).intValue(), (AttributionSource) obj2, ((Boolean) obj3).booleanValue(), (String) obj4, ((Boolean) obj5).booleanValue(), ((Boolean) obj6).booleanValue());
    }
}
