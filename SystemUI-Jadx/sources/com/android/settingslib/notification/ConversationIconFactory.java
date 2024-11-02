package com.android.settingslib.notification;

import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.util.IconDrawableFactory;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ConversationIconFactory extends BaseIconFactory {
    public final LauncherApps mLauncherApps;
    public final PackageManager mPackageManager;

    static {
        Math.sqrt(288.0d);
    }

    public ConversationIconFactory(Context context, LauncherApps launcherApps, PackageManager packageManager, IconDrawableFactory iconDrawableFactory, int i) {
        super(context, context.getResources().getConfiguration().densityDpi, i);
        this.mLauncherApps = launcherApps;
        this.mPackageManager = packageManager;
        context.getResources().getColor(R.color.important_conversation, null);
    }
}
