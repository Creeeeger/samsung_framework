package com.android.systemui.plugins;

import android.graphics.drawable.Drawable;
import android.service.notification.StatusBarNotification;
import com.android.systemui.plugins.annotations.DependsOn;
import com.android.systemui.plugins.annotations.ProvidesInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@ProvidesInterface(action = NotificationPersonExtractorPlugin.ACTION, version = 1)
@DependsOn(target = PersonData.class)
/* loaded from: classes2.dex */
public interface NotificationPersonExtractorPlugin extends Plugin {
    public static final String ACTION = "com.android.systemui.action.PEOPLE_HUB_PERSON_EXTRACTOR";
    public static final int VERSION = 1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @ProvidesInterface(version = 0)
    /* loaded from: classes2.dex */
    public static final class PersonData {
        public static final int VERSION = 0;
        public final Drawable avatar;
        public final Runnable clickRunnable;
        public final String key;
        public final CharSequence name;

        public PersonData(String str, CharSequence charSequence, Drawable drawable, Runnable runnable) {
            this.key = str;
            this.name = charSequence;
            this.avatar = drawable;
            this.clickRunnable = runnable;
        }
    }

    PersonData extractPerson(StatusBarNotification statusBarNotification);

    default String extractPersonKey(StatusBarNotification statusBarNotification) {
        return extractPerson(statusBarNotification).key;
    }

    default boolean isPersonNotification(StatusBarNotification statusBarNotification) {
        if (extractPersonKey(statusBarNotification) != null) {
            return true;
        }
        return false;
    }
}
