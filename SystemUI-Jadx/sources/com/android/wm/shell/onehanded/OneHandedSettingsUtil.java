package com.android.wm.shell.onehanded;

import android.content.ContentResolver;
import android.net.Uri;
import android.provider.Settings;
import com.android.internal.accessibility.AccessibilityShortcutController;
import com.android.wm.shell.onehanded.OneHandedController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OneHandedSettingsUtil {
    public static final String ONE_HANDED_MODE_TARGET_NAME = AccessibilityShortcutController.ONE_HANDED_COMPONENT_NAME.getShortClassName();

    public static boolean getSettingsOneHandedModeEnabled(ContentResolver contentResolver, int i) {
        if (Settings.Secure.getIntForUser(contentResolver, "one_handed_mode_enabled", 0, i) != 1) {
            return false;
        }
        return true;
    }

    public static boolean getSettingsSwipeToNotificationEnabled(ContentResolver contentResolver, int i) {
        if (Settings.Secure.getIntForUser(contentResolver, "swipe_bottom_to_notification_enabled", 0, i) != 1) {
            return false;
        }
        return true;
    }

    public static void registerSettingsKeyObserver(String str, ContentResolver contentResolver, OneHandedController.AnonymousClass5 anonymousClass5, int i) {
        Uri uriFor = Settings.Secure.getUriFor(str);
        if (contentResolver != null && uriFor != null) {
            contentResolver.registerContentObserver(uriFor, false, anonymousClass5, i);
        }
    }
}
