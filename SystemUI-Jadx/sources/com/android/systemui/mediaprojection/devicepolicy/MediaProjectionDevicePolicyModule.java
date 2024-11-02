package com.android.systemui.mediaprojection.devicepolicy;

import android.content.pm.UserInfo;
import android.os.UserHandle;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaProjectionDevicePolicyModule {
    public static UserHandle workProfileUserHandle(UserTracker userTracker) {
        Object obj;
        Iterator it = ((UserTrackerImpl) userTracker).getUserProfiles().iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((UserInfo) obj).isManagedProfile()) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        UserInfo userInfo = (UserInfo) obj;
        if (userInfo == null) {
            return null;
        }
        return userInfo.getUserHandle();
    }
}
