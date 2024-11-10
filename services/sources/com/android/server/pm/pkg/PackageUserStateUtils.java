package com.android.server.pm.pkg;

import android.content.pm.ComponentInfo;
import com.android.server.pm.pkg.component.ParsedMainComponent;

/* loaded from: classes3.dex */
public abstract class PackageUserStateUtils {
    public static boolean reportIfDebug(boolean z, long j) {
        return z;
    }

    public static boolean isMatch(PackageUserState packageUserState, ComponentInfo componentInfo, long j) {
        return isMatch(packageUserState, componentInfo.applicationInfo.isSystemApp(), componentInfo.applicationInfo.enabled, componentInfo.enabled, componentInfo.directBootAware, componentInfo.name, j);
    }

    public static boolean isMatch(PackageUserState packageUserState, boolean z, boolean z2, ParsedMainComponent parsedMainComponent, long j) {
        return isMatch(packageUserState, z, z2, parsedMainComponent.isEnabled(), parsedMainComponent.isDirectBootAware(), parsedMainComponent.getName(), j);
    }

    public static boolean isMatch(PackageUserState packageUserState, boolean z, boolean z2, boolean z3, boolean z4, String str, long j) {
        boolean z5 = true;
        boolean z6 = (4202496 & j) != 0;
        if (!isAvailable(packageUserState, j) && (!z || !z6)) {
            return reportIfDebug(false, j);
        }
        if (!isEnabled(packageUserState, z2, z3, str, j)) {
            return reportIfDebug(false, j);
        }
        if ((1048576 & j) != 0 && !z) {
            return reportIfDebug(false, j);
        }
        boolean z7 = ((262144 & j) == 0 || z4) ? false : true;
        boolean z8 = (524288 & j) != 0 && z4;
        if (!z7 && !z8) {
            z5 = false;
        }
        return reportIfDebug(z5, j);
    }

    public static boolean isAvailable(PackageUserState packageUserState, long j) {
        boolean z = (4194304 & j) != 0;
        boolean z2 = (j & 8192) != 0;
        if (z) {
            return true;
        }
        return packageUserState.isInstalled() && (!packageUserState.isHidden() || z2);
    }

    public static boolean isEnabled(PackageUserState packageUserState, ComponentInfo componentInfo, long j) {
        return isEnabled(packageUserState, componentInfo.applicationInfo.enabled, componentInfo.enabled, componentInfo.name, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0062, code lost:
    
        if ((r11 & 32768) == 0) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isEnabled(com.android.server.pm.pkg.PackageUserState r7, boolean r8, boolean r9, java.lang.String r10, long r11) {
        /*
            r0 = 512(0x200, double:2.53E-321)
            long r0 = r0 & r11
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r1 = 1
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r7.getEnabledState()
            r4 = 0
            if (r0 == 0) goto L65
            r5 = 2
            if (r0 == r5) goto L64
            r5 = 3
            if (r0 == r5) goto L64
            r5 = 4
            if (r0 == r5) goto L1c
            goto L68
        L1c:
            r5 = 536870912(0x20000000, double:2.652494739E-315)
            long r5 = r5 & r11
            int r0 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r0 == 0) goto L5c
            java.lang.String r0 = r7.getLastDisableAppCaller()
            if (r0 == 0) goto L5c
            java.lang.String r0 = "auto_disabler"
            java.lang.String r5 = r7.getLastDisableAppCaller()
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L5c
            if (r10 == 0) goto L5c
            android.util.ArraySet r8 = r7.getEnabledComponents()
            if (r8 == 0) goto L4a
            android.util.ArraySet r8 = r7.getEnabledComponents()
            boolean r8 = r8.contains(r10)
            if (r8 == 0) goto L4a
            r9 = r1
            goto L5b
        L4a:
            android.util.ArraySet r8 = r7.getDisabledComponents()
            if (r8 == 0) goto L5b
            android.util.ArraySet r7 = r7.getDisabledComponents()
            boolean r7 = r7.contains(r10)
            if (r7 == 0) goto L5b
            r9 = r4
        L5b:
            return r9
        L5c:
            r5 = 32768(0x8000, double:1.61895E-319)
            long r11 = r11 & r5
            int r11 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r11 != 0) goto L65
        L64:
            return r4
        L65:
            if (r8 != 0) goto L68
            return r4
        L68:
            boolean r8 = r7.isComponentEnabled(r10)
            if (r8 == 0) goto L6f
            return r1
        L6f:
            boolean r7 = r7.isComponentDisabled(r10)
            if (r7 == 0) goto L76
            return r4
        L76:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.pkg.PackageUserStateUtils.isEnabled(com.android.server.pm.pkg.PackageUserState, boolean, boolean, java.lang.String, long):boolean");
    }

    public static boolean isPackageEnabled(PackageUserState packageUserState, AndroidPackage androidPackage) {
        int enabledState = packageUserState.getEnabledState();
        if (enabledState == 1) {
            return true;
        }
        if (enabledState == 2 || enabledState == 3 || enabledState == 4) {
            return false;
        }
        return androidPackage.isEnabled();
    }
}
