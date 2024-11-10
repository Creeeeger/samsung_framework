package com.android.server.pm;

import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import com.android.server.pm.parsing.pkg.AndroidPackageInternal;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.pm.pkg.component.ParsedUsesPermission;
import java.util.List;

/* loaded from: classes3.dex */
public class UpdateOwnershipHelper {
    public final ArrayMap mUpdateOwnerOptOutsToOwners = new ArrayMap(200);
    public final Object mLock = new Object();

    public static boolean hasValidOwnershipDenyList(PackageSetting packageSetting) {
        AndroidPackageInternal pkg = packageSetting.getPkg();
        return pkg != null && (packageSetting.isSystem() || packageSetting.isUpdatedSystemApp()) && pkg.getProperties().containsKey("android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST") && usesAnyPermission(pkg, "android.permission.INSTALL_PACKAGES", "android.permission.INSTALL_PACKAGE_UPDATES");
    }

    public static boolean usesAnyPermission(AndroidPackage androidPackage, String... strArr) {
        List usesPermissions = androidPackage.getUsesPermissions();
        for (int i = 0; i < usesPermissions.size(); i++) {
            for (String str : strArr) {
                if (str.equals(((ParsedUsesPermission) usesPermissions.get(i)).getName())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x007e, code lost:
    
        android.util.Slog.w("PackageManager", "Deny list defined by " + r0.getPackageName() + " was trucated to maximum size of 1000");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.ArraySet readUpdateOwnerDenyList(com.android.server.pm.PackageSetting r20) {
        /*
            r19 = this;
            java.lang.String r1 = "PackageManager"
            boolean r0 = hasValidOwnershipDenyList(r20)
            r2 = 0
            if (r0 != 0) goto La
            return r2
        La:
            com.android.server.pm.parsing.pkg.AndroidPackageInternal r0 = r20.getPkg()
            if (r0 != 0) goto L11
            return r2
        L11:
            android.util.ArraySet r3 = new android.util.ArraySet
            r4 = 1000(0x3e8, float:1.401E-42)
            r3.<init>(r4)
            java.util.Map r5 = r0.getProperties()     // Catch: java.lang.Exception -> Lb0
            java.lang.String r6 = "android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST"
            java.lang.Object r5 = r5.get(r6)     // Catch: java.lang.Exception -> Lb0
            android.content.pm.PackageManager$Property r5 = (android.content.pm.PackageManager.Property) r5     // Catch: java.lang.Exception -> Lb0
            int r5 = r5.getResourceId()     // Catch: java.lang.Exception -> Lb0
            android.content.pm.ApplicationInfo r6 = com.android.server.pm.parsing.pkg.AndroidPackageUtils.generateAppInfoWithoutState(r0)     // Catch: java.lang.Exception -> Lb0
            android.app.ResourcesManager r7 = android.app.ResourcesManager.getInstance()     // Catch: java.lang.Exception -> Lb0
            r8 = 0
            java.lang.String r9 = r6.sourceDir     // Catch: java.lang.Exception -> Lb0
            java.lang.String[] r10 = r6.splitSourceDirs     // Catch: java.lang.Exception -> Lb0
            java.lang.String[] r11 = r6.resourceDirs     // Catch: java.lang.Exception -> Lb0
            java.lang.String[] r12 = r6.overlayPaths     // Catch: java.lang.Exception -> Lb0
            java.lang.String[] r13 = r6.sharedLibraryFiles     // Catch: java.lang.Exception -> Lb0
            r14 = 0
            android.content.res.Configuration r15 = android.content.res.Configuration.EMPTY     // Catch: java.lang.Exception -> Lb0
            r16 = 0
            r17 = 0
            r18 = 0
            android.content.res.Resources r6 = r7.getResources(r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18)     // Catch: java.lang.Exception -> Lb0
            android.content.res.XmlResourceParser r5 = r6.getXml(r5)     // Catch: java.lang.Exception -> Lb0
        L4c:
            int r6 = r5.getEventType()     // Catch: java.lang.Throwable -> La2
            r7 = 1
            if (r6 == r7) goto L9e
            int r6 = r5.next()     // Catch: java.lang.Throwable -> La2
            r7 = 2
            if (r6 != r7) goto L4c
            java.lang.String r6 = "deny-ownership"
            java.lang.String r7 = r5.getName()     // Catch: java.lang.Throwable -> La2
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> La2
            if (r6 == 0) goto L4c
            r5.next()     // Catch: java.lang.Throwable -> La2
            java.lang.String r6 = r5.getText()     // Catch: java.lang.Throwable -> La2
            if (r6 == 0) goto L4c
            boolean r7 = r6.isBlank()     // Catch: java.lang.Throwable -> La2
            if (r7 != 0) goto L4c
            r3.add(r6)     // Catch: java.lang.Throwable -> La2
            int r6 = r3.size()     // Catch: java.lang.Throwable -> La2
            if (r6 <= r4) goto L4c
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La2
            r6.<init>()     // Catch: java.lang.Throwable -> La2
            java.lang.String r7 = "Deny list defined by "
            r6.append(r7)     // Catch: java.lang.Throwable -> La2
            java.lang.String r0 = r0.getPackageName()     // Catch: java.lang.Throwable -> La2
            r6.append(r0)     // Catch: java.lang.Throwable -> La2
            java.lang.String r0 = " was trucated to maximum size of "
            r6.append(r0)     // Catch: java.lang.Throwable -> La2
            r6.append(r4)     // Catch: java.lang.Throwable -> La2
            java.lang.String r0 = r6.toString()     // Catch: java.lang.Throwable -> La2
            android.util.Slog.w(r1, r0)     // Catch: java.lang.Throwable -> La2
        L9e:
            r5.close()     // Catch: java.lang.Exception -> Lb0
            return r3
        La2:
            r0 = move-exception
            r3 = r0
            if (r5 == 0) goto Laf
            r5.close()     // Catch: java.lang.Throwable -> Laa
            goto Laf
        Laa:
            r0 = move-exception
            r4 = r0
            r3.addSuppressed(r4)     // Catch: java.lang.Exception -> Lb0
        Laf:
            throw r3     // Catch: java.lang.Exception -> Lb0
        Lb0:
            r0 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Failed to parse update owner list for "
            r3.append(r4)
            java.lang.String r4 = r20.getPackageName()
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            android.util.Slog.e(r1, r3, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UpdateOwnershipHelper.readUpdateOwnerDenyList(com.android.server.pm.PackageSetting):android.util.ArraySet");
    }

    public void addToUpdateOwnerDenyList(String str, ArraySet arraySet) {
        synchronized (this.mLock) {
            for (int i = 0; i < arraySet.size(); i++) {
                ArraySet arraySet2 = (ArraySet) this.mUpdateOwnerOptOutsToOwners.putIfAbsent((String) arraySet.valueAt(i), new ArraySet(new String[]{str}));
                if (arraySet2 != null) {
                    arraySet2.add(str);
                }
            }
        }
    }

    public void removeUpdateOwnerDenyList(String str) {
        synchronized (this.mLock) {
            for (int size = this.mUpdateOwnerOptOutsToOwners.size() - 1; size >= 0; size--) {
                ArrayMap arrayMap = this.mUpdateOwnerOptOutsToOwners;
                ArraySet arraySet = (ArraySet) arrayMap.get(arrayMap.keyAt(size));
                if (arraySet.remove(str) && arraySet.isEmpty()) {
                    this.mUpdateOwnerOptOutsToOwners.removeAt(size);
                }
            }
        }
    }

    public boolean isUpdateOwnershipDenylisted(String str) {
        return this.mUpdateOwnerOptOutsToOwners.containsKey(str);
    }

    public boolean isSamsungApp(String str) {
        if (str != null) {
            return str.startsWith("com.samsung") || str.startsWith("com.sec");
        }
        Slog.w("PackageManager", "Package name is null while checking update-ownership");
        return false;
    }

    public boolean isUpdateOwnershipDenyListProvider(String str) {
        if (str == null) {
            return false;
        }
        synchronized (this.mLock) {
            for (int size = this.mUpdateOwnerOptOutsToOwners.size() - 1; size >= 0; size--) {
                if (((ArraySet) this.mUpdateOwnerOptOutsToOwners.valueAt(size)).contains(str)) {
                    return true;
                }
            }
            return false;
        }
    }
}
