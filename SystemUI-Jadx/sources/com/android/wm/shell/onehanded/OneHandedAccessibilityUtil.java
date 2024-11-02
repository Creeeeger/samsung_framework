package com.android.wm.shell.onehanded;

import android.content.Context;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OneHandedAccessibilityUtil {
    public final AccessibilityManager mAccessibilityManager;
    public String mDescription;
    public final String mPackageName;
    public final String mStartOneHandedDescription;
    public final String mStopOneHandedDescription;

    public OneHandedAccessibilityUtil(Context context) {
        this.mAccessibilityManager = AccessibilityManager.getInstance(context);
        this.mPackageName = context.getPackageName();
        this.mStartOneHandedDescription = context.getResources().getString(R.string.accessibility_action_start_one_handed);
        this.mStopOneHandedDescription = context.getResources().getString(R.string.accessibility_action_stop_one_handed);
    }

    public final void announcementForScreenReader(String str) {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        if (!accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        this.mDescription = str;
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setPackageName(this.mPackageName);
        obtain.setEventType(16384);
        obtain.getText().add(this.mDescription);
        accessibilityManager.sendAccessibilityEvent(obtain);
    }
}
