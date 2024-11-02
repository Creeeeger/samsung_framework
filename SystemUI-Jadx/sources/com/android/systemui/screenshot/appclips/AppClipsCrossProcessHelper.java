package com.android.systemui.screenshot.appclips;

import android.content.Context;
import android.content.Intent;
import android.os.UserManager;
import com.android.internal.infra.ServiceConnector;
import com.android.systemui.settings.DisplayTracker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AppClipsCrossProcessHelper {
    public final DisplayTracker mDisplayTracker;
    public final ServiceConnector mProxyConnector;

    public AppClipsCrossProcessHelper(Context context, UserManager userManager, DisplayTracker displayTracker) {
        this.mProxyConnector = new ServiceConnector.Impl(context, new Intent(context, (Class<?>) AppClipsScreenshotHelperService.class), 1073741857, userManager.getMainUser().getIdentifier(), new AppClipsCrossProcessHelper$$ExternalSyntheticLambda0());
        this.mDisplayTracker = displayTracker;
    }
}
