package notification.src.com.android.systemui;

import com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$mSrResponseCallback$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface BasePromptProcessor {
    String getNotificationKey();

    void setNotificationKey(String str);

    void textPrompting(String str, String str2, SubscreenDeviceModelB5$mSrResponseCallback$1 subscreenDeviceModelB5$mSrResponseCallback$1);
}
