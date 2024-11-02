package com.android.internal.accessibility.dialog;

import android.content.Context;
import android.graphics.drawable.Drawable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class InvisibleToggleAllowListingFeatureTarget extends AccessibilityTarget {
    public InvisibleToggleAllowListingFeatureTarget(Context context, int shortcutType, boolean isShortcutSwitched, String id, int uid, CharSequence label, Drawable icon, String key) {
        super(context, shortcutType, 1, isShortcutSwitched, id, uid, label, context.getPackageManager().semGetDrawableForIconTray(icon, 1), key);
    }
}
