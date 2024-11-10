package com.android.server.appop;

import android.content.AttributionSource;
import android.os.IBinder;
import com.android.internal.util.function.QuadFunction;
import com.android.server.appop.AppOpsService;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda7 implements QuadFunction {
    public final /* synthetic */ AppOpsService f$0;

    public /* synthetic */ AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda7(AppOpsService appOpsService) {
        this.f$0 = appOpsService;
    }

    public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
        return AppOpsService.CheckOpsDelegateDispatcher.$r8$lambda$I3NTEK2Gko9ISrq9PnNlScAqCDU(this.f$0, (IBinder) obj, ((Integer) obj2).intValue(), (AttributionSource) obj3, ((Boolean) obj4).booleanValue());
    }
}
