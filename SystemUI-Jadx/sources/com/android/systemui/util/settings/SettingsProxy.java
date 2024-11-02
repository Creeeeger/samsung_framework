package com.android.systemui.util.settings;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface SettingsProxy {
    default boolean getBoolForUser(int i, String str, boolean z) {
        int i2;
        if (z) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (getIntForUser(i2, i, str) != 0) {
            return true;
        }
        return false;
    }

    ContentResolver getContentResolver();

    default float getFloatForUser(String str, int i, float f) {
        String stringForUser = getStringForUser(i, str);
        if (stringForUser != null) {
            try {
                return Float.parseFloat(stringForUser);
            } catch (NumberFormatException unused) {
                return f;
            }
        }
        return f;
    }

    default int getInt(String str, int i) {
        return getIntForUser(i, getUserId(), str);
    }

    default int getIntForUser(int i, int i2, String str) {
        String stringForUser = getStringForUser(i2, str);
        if (stringForUser != null) {
            try {
                return Integer.parseInt(stringForUser);
            } catch (NumberFormatException unused) {
                return i;
            }
        }
        return i;
    }

    default int getRealUserHandle(int i) {
        if (i != -2) {
            return i;
        }
        return ((UserTrackerImpl) getUserTracker()).getUserId();
    }

    String getStringForUser(int i, String str);

    Uri getUriFor(String str);

    default int getUserId() {
        return getContentResolver().getUserId();
    }

    UserTracker getUserTracker();

    default boolean putIntForUser(int i, int i2, String str) {
        return putStringForUser(i2, str, Integer.toString(i));
    }

    boolean putStringForUser(int i, String str, String str2);

    default void registerContentObserverForUser(String str, ContentObserver contentObserver, int i) {
        registerContentObserverForUser(getUriFor(str), false, contentObserver, i);
    }

    default void unregisterContentObserver(ContentObserver contentObserver) {
        getContentResolver().unregisterContentObserver(contentObserver);
    }

    default void registerContentObserverForUser(String str, boolean z, ContentObserver contentObserver, int i) {
        registerContentObserverForUser(getUriFor(str), z, contentObserver, i);
    }

    default void registerContentObserverForUser(Uri uri, boolean z, ContentObserver contentObserver, int i) {
        getContentResolver().registerContentObserver(uri, z, contentObserver, getRealUserHandle(i));
    }
}
