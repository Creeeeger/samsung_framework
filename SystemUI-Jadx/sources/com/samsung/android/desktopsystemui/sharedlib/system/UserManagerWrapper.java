package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.os.UserHandle;
import android.os.UserManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class UserManagerWrapper {
    private static final UserManagerWrapper sInstance = new UserManagerWrapper();
    private static final UserManager mUserManager = (UserManager) AppGlobals.getInitialApplication().getSystemService("user");

    private UserManagerWrapper() {
    }

    public static UserManagerWrapper getInstance() {
        return sInstance;
    }

    public boolean hasUserRestriction(int i) {
        return mUserManager.hasUserRestriction("no_share_location", UserHandle.semOf(i));
    }

    public boolean isSecondaryOrGuestUser(int i) {
        String str = mUserManager.getUserInfo(i).userType;
        if (!"android.os.usertype.full.SECONDARY".equals(str) && !UserManager.isUserTypeGuest(str)) {
            return false;
        }
        return true;
    }
}
