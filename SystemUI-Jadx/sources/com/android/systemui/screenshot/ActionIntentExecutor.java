package com.android.systemui.screenshot;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import com.android.internal.infra.ServiceConnector;
import com.android.systemui.screenshot.IScreenshotProxy;
import com.android.systemui.settings.DisplayTracker;
import java.util.function.Function;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ActionIntentExecutor {
    public final CoroutineScope applicationScope;
    public final Context context;
    public final DisplayTracker displayTracker;
    public final CoroutineDispatcher mainDispatcher;
    public final ServiceConnector proxyConnector;

    public ActionIntentExecutor(CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, Context context, DisplayTracker displayTracker) {
        this.applicationScope = coroutineScope;
        this.mainDispatcher = coroutineDispatcher;
        this.context = context;
        this.displayTracker = displayTracker;
        this.proxyConnector = new ServiceConnector.Impl(context, new Intent(context, (Class<?>) ScreenshotProxyService.class), 1073741857, context.getUserId(), new Function() { // from class: com.android.systemui.screenshot.ActionIntentExecutor$proxyConnector$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                IBinder iBinder = (IBinder) obj;
                int i = IScreenshotProxy.Stub.$r8$clinit;
                if (iBinder == null) {
                    return null;
                }
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.systemui.screenshot.IScreenshotProxy");
                if (queryLocalInterface != null && (queryLocalInterface instanceof IScreenshotProxy)) {
                    return (IScreenshotProxy) queryLocalInterface;
                }
                return new IScreenshotProxy.Stub.Proxy(iBinder);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object launchIntent(android.content.Intent r16, android.os.Bundle r17, int r18, boolean r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.screenshot.ActionIntentExecutor.launchIntent(android.content.Intent, android.os.Bundle, int, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void launchIntentAsync(Intent intent, Bundle bundle, int i, boolean z) {
        BuildersKt.launch$default(this.applicationScope, null, null, new ActionIntentExecutor$launchIntentAsync$1(this, intent, bundle, i, z, null), 3);
    }
}
