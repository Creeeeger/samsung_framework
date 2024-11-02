package com.android.systemui.coverlauncher.widget;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverLauncherMediumWidgetProvider extends CoverLauncherLargeWidgetProvider {
    public static final HashMap sWidgetOptions = new HashMap();

    @Override // com.android.systemui.coverlauncher.widget.CoverLauncherLargeWidgetProvider
    public final int getProviderType() {
        return 1;
    }

    @Override // com.android.systemui.coverlauncher.widget.CoverLauncherLargeWidgetProvider
    public final HashMap getWidgetOptions() {
        return sWidgetOptions;
    }

    @Override // com.android.systemui.coverlauncher.widget.CoverLauncherLargeWidgetProvider, android.appwidget.AppWidgetProvider
    public final void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int i, Bundle bundle) {
        super.onAppWidgetOptionsChanged(context, appWidgetManager, i, bundle);
    }

    @Override // com.android.systemui.coverlauncher.widget.CoverLauncherLargeWidgetProvider, android.appwidget.AppWidgetProvider
    public final void onDeleted(Context context, int[] iArr) {
        super.onDeleted(context, iArr);
    }

    @Override // com.android.systemui.coverlauncher.widget.CoverLauncherLargeWidgetProvider, android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Log.i("CoverLauncherMediumWidgetProvider", "onReceive");
        super.onReceive(context, intent);
    }

    @Override // com.android.systemui.coverlauncher.widget.CoverLauncherLargeWidgetProvider, android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        super.onUpdate(context, appWidgetManager, iArr);
    }

    @Override // com.android.systemui.coverlauncher.widget.CoverLauncherLargeWidgetProvider
    public final void updateAppWidgetViewWithProvider(Context context, AppWidgetManager appWidgetManager) {
        CoverLauncherLargeWidgetProvider.updateAppWidgetView(context, appWidgetManager, appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) CoverLauncherMediumWidgetProvider.class)));
    }
}
