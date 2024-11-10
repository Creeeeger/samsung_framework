package com.android.server.appop;

import android.os.IBinder;
import com.android.internal.util.function.QuintConsumer;
import com.android.server.appop.AppOpsService;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda13 implements QuintConsumer {
    public final /* synthetic */ AppOpsService f$0;

    public /* synthetic */ AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda13(AppOpsService appOpsService) {
        this.f$0 = appOpsService;
    }

    public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        AppOpsService.CheckOpsDelegateDispatcher.$r8$lambda$naHwKJkY2ZO4TzzaHmddSx750qU(this.f$0, (IBinder) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue(), (String) obj4, (String) obj5);
    }
}
