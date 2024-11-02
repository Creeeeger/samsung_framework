package com.android.settingslib.wifi;

import android.content.Context;
import android.os.UserManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WifiEnterpriseRestrictionUtils {
    public static boolean hasUserRestrictionFromT(Context context, String str) {
        UserManager userManager = (UserManager) context.getSystemService(UserManager.class);
        if (userManager == null) {
            return false;
        }
        return userManager.hasUserRestriction(str);
    }
}
