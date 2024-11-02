package com.android.settingslib;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.Signature;
import android.content.pm.UserInfo;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.os.UserManager;
import android.telephony.ServiceState;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.IconFactory;
import com.android.systemui.R;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Utils {
    static final String INCOMPATIBLE_CHARGER_WARNING_DISABLED = "incompatible_charger_warning_disabled";
    static final String STORAGE_MANAGER_ENABLED_PROPERTY = "ro.storage_manager.enabled";
    public static final int[] WIFI_PIE = {R.drawable.sec_ic_wifi_signal_0, R.drawable.sec_ic_wifi_signal_1, R.drawable.sec_ic_wifi_signal_2, R.drawable.sec_ic_wifi_signal_3, R.drawable.sec_ic_wifi_signal_4};
    public static String sPermissionControllerPackageName;
    public static String sServicesSystemSharedLibPackageName;
    public static String sSharedSystemSharedLibPackageName;
    public static Signature[] sSystemSignature;

    public static FastBitmapDrawable getBadgedIcon(Context context, ApplicationInfo applicationInfo) {
        Drawable loadUnbadgedIcon = applicationInfo.loadUnbadgedIcon(context.getPackageManager());
        final UserHandle userHandleForUid = UserHandle.getUserHandleForUid(applicationInfo.uid);
        boolean anyMatch = ((UserManager) context.getSystemService(UserManager.class)).getProfiles(userHandleForUid.getIdentifier()).stream().anyMatch(new Predicate() { // from class: com.android.settingslib.Utils$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                UserHandle userHandle = userHandleForUid;
                UserInfo userInfo = (UserInfo) obj;
                if (userInfo.isCloneProfile() && userInfo.id == userHandle.getIdentifier()) {
                    return true;
                }
                return false;
            }
        });
        IconFactory obtain = IconFactory.obtain(context);
        try {
            BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
            iconOptions.mUserHandle = userHandleForUid;
            iconOptions.mIsCloneProfile = anyMatch;
            FastBitmapDrawable newIcon = obtain.createBadgedIconBitmap(loadUnbadgedIcon, iconOptions).newIcon(context);
            obtain.close();
            return newIcon;
        } catch (Throwable th) {
            try {
                obtain.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static ColorStateList getColorAttr(int i, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        try {
            return obtainStyledAttributes.getColorStateList(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int getColorAttrDefaultColor(int i, Context context, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        int color = obtainStyledAttributes.getColor(0, i2);
        obtainStyledAttributes.recycle();
        return color;
    }

    public static int getColorStateListDefaultColor(int i, Context context) {
        return context.getResources().getColorStateList(i, context.getTheme()).getDefaultColor();
    }

    public static int getThemeAttr(int i, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    public static boolean isInService(ServiceState serviceState) {
        if (serviceState == null) {
            return false;
        }
        int state = serviceState.getState();
        serviceState.getDataRegistrationState();
        if ((state == 1 || state == 2) && serviceState.getMobileDataRegState() == 0) {
            state = 0;
        }
        if (state == 3 || state == 1 || state == 2) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
    
        if (r0.equals(r1) == false) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isSystemPackage(android.content.res.Resources r6, android.content.pm.PackageManager r7, android.content.pm.PackageInfo r8) {
        /*
            android.content.pm.Signature[] r0 = com.android.settingslib.Utils.sSystemSignature
            r1 = 0
            r2 = 0
            if (r0 != 0) goto L21
            java.lang.String r0 = "android"
            r3 = 64
            android.content.pm.PackageInfo r0 = r7.getPackageInfo(r0, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1a
            if (r0 == 0) goto L1a
            android.content.pm.Signature[] r0 = r0.signatures     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1a
            if (r0 == 0) goto L1a
            int r3 = r0.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1a
            if (r3 <= 0) goto L1a
            r0 = r0[r2]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1a
            goto L1b
        L1a:
            r0 = r1
        L1b:
            android.content.pm.Signature[] r0 = new android.content.pm.Signature[]{r0}
            com.android.settingslib.Utils.sSystemSignature = r0
        L21:
            android.content.pm.Signature[] r0 = com.android.settingslib.Utils.sSystemSignature
            r0 = r0[r2]
            r3 = 1
            if (r0 == 0) goto L37
            android.content.pm.Signature[] r4 = r8.signatures
            if (r4 == 0) goto L31
            int r5 = r4.length
            if (r5 <= 0) goto L31
            r1 = r4[r2]
        L31:
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L91
        L37:
            java.lang.String r8 = r8.packageName
            java.lang.String r0 = com.android.settingslib.Utils.sPermissionControllerPackageName
            if (r0 != 0) goto L43
            java.lang.String r0 = r7.getPermissionControllerPackageName()
            com.android.settingslib.Utils.sPermissionControllerPackageName = r0
        L43:
            java.lang.String r0 = com.android.settingslib.Utils.sServicesSystemSharedLibPackageName
            if (r0 != 0) goto L4d
            java.lang.String r0 = r7.getServicesSystemSharedLibraryPackageName()
            com.android.settingslib.Utils.sServicesSystemSharedLibPackageName = r0
        L4d:
            java.lang.String r0 = com.android.settingslib.Utils.sSharedSystemSharedLibPackageName
            if (r0 != 0) goto L57
            java.lang.String r7 = r7.getSharedSystemSharedLibraryPackageName()
            com.android.settingslib.Utils.sSharedSystemSharedLibPackageName = r7
        L57:
            java.lang.String r7 = com.android.settingslib.Utils.sPermissionControllerPackageName
            boolean r7 = r8.equals(r7)
            if (r7 != 0) goto L8e
            java.lang.String r7 = com.android.settingslib.Utils.sServicesSystemSharedLibPackageName
            boolean r7 = r8.equals(r7)
            if (r7 != 0) goto L8e
            java.lang.String r7 = com.android.settingslib.Utils.sSharedSystemSharedLibPackageName
            boolean r7 = r8.equals(r7)
            if (r7 != 0) goto L8e
            java.lang.String r7 = "com.android.printspooler"
            boolean r7 = r8.equals(r7)
            if (r7 != 0) goto L8e
            r7 = 17040169(0x1040329, float:2.4246838E-38)
            java.lang.String r6 = r6.getString(r7)
            if (r6 == 0) goto L88
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L88
            r6 = r3
            goto L89
        L88:
            r6 = r2
        L89:
            if (r6 == 0) goto L8c
            goto L8e
        L8c:
            r6 = r2
            goto L8f
        L8e:
            r6 = r3
        L8f:
            if (r6 == 0) goto L92
        L91:
            r2 = r3
        L92:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.Utils.isSystemPackage(android.content.res.Resources, android.content.pm.PackageManager, android.content.pm.PackageInfo):boolean");
    }
}
