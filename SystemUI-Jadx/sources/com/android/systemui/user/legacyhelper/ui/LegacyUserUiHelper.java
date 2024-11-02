package com.android.systemui.user.legacyhelper.ui;

import android.content.Context;
import android.content.pm.UserInfo;
import com.android.systemui.R;
import com.android.systemui.user.data.source.UserRecord;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LegacyUserUiHelper {
    public static final LegacyUserUiHelper INSTANCE = new LegacyUserUiHelper();

    private LegacyUserUiHelper() {
    }

    public static final String getUserRecordName(Context context, UserRecord userRecord, boolean z, boolean z2, boolean z3) {
        Integer num;
        INSTANCE.getClass();
        UserInfo userInfo = userRecord.info;
        boolean z4 = userRecord.isGuest;
        if (z4 && userRecord.isCurrent) {
            num = Integer.valueOf(R.string.guest_exit_quick_settings_button);
        } else if (z4 && userInfo != null) {
            num = Integer.valueOf(android.R.string.permdesc_use_sip);
        } else {
            num = null;
        }
        if (num != null) {
            return context.getString(num.intValue());
        }
        if (userInfo != null) {
            return userInfo.name;
        }
        return context.getString(getUserSwitcherActionTextResourceId(userRecord.isGuest, z, z2, userRecord.isAddUser, userRecord.isAddSupervisedUser, z3, userRecord.isManageUsers));
    }

    public static final int getUserSwitcherActionIconResourceId(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        if (z && z4) {
            return R.drawable.ic_account_circle_filled;
        }
        if (z) {
            return R.drawable.ic_add;
        }
        if (z2) {
            return R.drawable.ic_account_circle;
        }
        if (z3) {
            return R.drawable.ic_add_supervised_user;
        }
        if (z5) {
            return R.drawable.ic_manage_users;
        }
        return R.drawable.ic_avatar_user;
    }

    public static final int getUserSwitcherActionTextResourceId(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        boolean z8;
        if (!z && !z4 && !z5 && !z7) {
            z8 = false;
        } else {
            z8 = true;
        }
        if (z8) {
            if (z && z2 && z3) {
                return R.string.guest_resetting;
            }
            if (z && z6) {
                return R.string.guest_new_guest;
            }
            if ((z && z2) || z) {
                return android.R.string.permdesc_use_sip;
            }
            if (z4) {
                return R.string.user_add_user;
            }
            if (z5) {
                return R.string.add_user_supervised;
            }
            if (z7) {
                return R.string.manage_users;
            }
            throw new IllegalStateException("This should never happen!".toString());
        }
        throw new IllegalStateException("Check failed.".toString());
    }
}
