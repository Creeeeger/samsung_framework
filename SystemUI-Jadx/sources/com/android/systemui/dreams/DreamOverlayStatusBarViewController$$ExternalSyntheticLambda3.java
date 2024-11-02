package com.android.systemui.dreams;

import android.util.PluralsMessageFormatter;
import com.android.systemui.R;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3 {
    public final /* synthetic */ DreamOverlayStatusBarViewController f$0;

    public final void onNotificationCountChanged(int i) {
        boolean z;
        String str;
        DreamOverlayStatusBarViewController dreamOverlayStatusBarViewController = this.f$0;
        dreamOverlayStatusBarViewController.getClass();
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        if (i > 0) {
            str = PluralsMessageFormatter.format(dreamOverlayStatusBarViewController.mResources, Map.of("count", Integer.valueOf(i)), R.string.dream_overlay_status_bar_notification_indicator);
        } else {
            str = null;
        }
        dreamOverlayStatusBarViewController.mMainExecutor.execute(new DreamOverlayStatusBarViewController$$ExternalSyntheticLambda6(dreamOverlayStatusBarViewController, 0, z, str));
    }
}
