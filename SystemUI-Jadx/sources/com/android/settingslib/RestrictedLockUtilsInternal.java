package com.android.settingslib;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;
import com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;
import com.android.settingslib.RestrictedLockUtils;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.restriction.RestrictionPolicy;
import java.util.List;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RestrictedLockUtilsInternal extends RestrictedLockUtils {
    public static final boolean DEBUG = Log.isLoggable("RestrictedLockUtils", 3);
    static Proxy sProxy = new Proxy();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    class Proxy {
    }

    public static RestrictedLockUtils.EnforcedAdmin checkIfRestrictionEnforced(Context context, String str, int i) {
        DevicePolicyManager devicePolicyManager;
        ComponentName deviceOwnerComponentOnAnyUser;
        RestrictedLockUtils.EnforcedAdmin enforcedAdmin;
        RestrictionPolicy restrictionPolicy;
        RestrictedLockUtils.EnforcedAdmin enforcedAdmin2 = null;
        if (((DevicePolicyManager) context.getSystemService("device_policy")) == null) {
            return null;
        }
        UserManager userManager = UserManager.get(context);
        UserHandle of = UserHandle.of(i);
        List userRestrictionSources = userManager.getUserRestrictionSources(str, of);
        if (userRestrictionSources.isEmpty()) {
            return null;
        }
        int size = userRestrictionSources.size();
        if (size > 1) {
            RestrictedLockUtils.EnforcedAdmin enforcedAdmin3 = new RestrictedLockUtils.EnforcedAdmin();
            enforcedAdmin3.enforcedRestriction = str;
            enforcedAdmin3.user = of;
            if (DEBUG) {
                StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("Multiple (", size, ") enforcing users for restriction '", str, "' on user ");
                m.append(of);
                m.append("; returning default admin (");
                m.append(enforcedAdmin3);
                m.append(")");
                Log.d("RestrictedLockUtils", m.toString());
            }
            return enforcedAdmin3;
        }
        UserManager.EnforcingUser enforcingUser = (UserManager.EnforcingUser) userRestrictionSources.get(0);
        if (enforcingUser.getUserRestrictionSource() == 1) {
            EnterpriseDeviceManager enterpriseDeviceManager = EnterpriseDeviceManager.getInstance(context);
            if (enterpriseDeviceManager == null || (restrictionPolicy = enterpriseDeviceManager.getRestrictionPolicy()) == null || !restrictionPolicy.checkIfRestrictionWasSetByKC(str)) {
                return null;
            }
            return new RestrictedLockUtils.EnforcedAdmin(RestrictionPolicy.KC_COMPONENT_NAME, str, new UserHandle(0));
        }
        UserHandle userHandle = enforcingUser.getUserHandle();
        if (userHandle != null && (devicePolicyManager = (DevicePolicyManager) context.getSystemService("device_policy")) != null) {
            try {
                ComponentName profileOwner = ((DevicePolicyManager) context.createPackageContextAsUser(context.getPackageName(), 0, userHandle).getSystemService(DevicePolicyManager.class)).getProfileOwner();
                if (profileOwner != null) {
                    enforcedAdmin = new RestrictedLockUtils.EnforcedAdmin(profileOwner, null, userHandle);
                } else if (Objects.equals(devicePolicyManager.getDeviceOwnerUser(), userHandle) && (deviceOwnerComponentOnAnyUser = devicePolicyManager.getDeviceOwnerComponentOnAnyUser()) != null) {
                    enforcedAdmin = new RestrictedLockUtils.EnforcedAdmin(deviceOwnerComponentOnAnyUser, null, userHandle);
                }
                enforcedAdmin2 = enforcedAdmin;
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalStateException(e);
            }
        }
        if (enforcedAdmin2 != null) {
            return enforcedAdmin2;
        }
        RestrictedLockUtils.EnforcedAdmin enforcedAdmin4 = new RestrictedLockUtils.EnforcedAdmin();
        enforcedAdmin4.enforcedRestriction = str;
        return enforcedAdmin4;
    }

    public static boolean hasBaseUserRestriction(Context context, String str, int i) {
        return ((UserManager) context.getSystemService("user")).hasBaseUserRestriction(str, UserHandle.of(i));
    }
}
