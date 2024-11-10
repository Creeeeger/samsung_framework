package com.android.server.appop;

import com.android.internal.util.function.QuadFunction;
import com.android.server.appop.AppOpsService;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda15 implements QuadFunction {
    public final /* synthetic */ AppOpsService f$0;

    public /* synthetic */ AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda15(AppOpsService appOpsService) {
        this.f$0 = appOpsService;
    }

    public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
        return Integer.valueOf(AppOpsService.CheckOpsDelegateDispatcher.m2447$r8$lambda$OZl5IEyDeUqho8Gs802JgarEbM(this.f$0, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), ((Integer) obj3).intValue(), (String) obj4));
    }
}
