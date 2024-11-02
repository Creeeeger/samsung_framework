package com.android.settingslib;

import android.app.NotificationChannel;
import android.content.Context;
import android.os.Debug;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import com.samsung.android.feature.SemCscFeature;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecNotificationBlockManager {
    public static final boolean DEBUG = Debug.semIsProductDev();
    public static final HashSet mConfigCSCSet = new HashSet();
    public static final HashMap mMetaDataMap = new HashMap();
    public static final HashSet mExceptableSystemAppSet = new HashSet();

    public static int checkConfigCSC(Context context, String str, NotificationChannel notificationChannel) {
        HashSet hashSet = mConfigCSCSet;
        boolean isEmpty = hashSet.isEmpty();
        boolean z = DEBUG;
        if (isEmpty) {
            Collections.addAll(hashSet, context.getResources().getStringArray(17236256));
            Collections.addAll(hashSet, context.getResources().getStringArray(17236300));
            String string = SemCscFeature.getInstance().getString("CscFeature_Setting_ConfigBlockNotiAppList");
            if (string != null && string.length() > 0) {
                for (String str2 : string.split(",")) {
                    if (str2 != null) {
                        if (z) {
                            Log.d("SecNotificationBlockManager", "initConfigCSCSet:CSC:".concat(str2));
                        }
                        hashSet.add(str2);
                    }
                }
            }
        }
        if (hashSet.contains(str)) {
            if (z) {
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("checkConfigCSC:", str, "SecNotificationBlockManager");
            }
            return 2;
        }
        if (notificationChannel != null) {
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str, ":");
            m.append(notificationChannel.getId());
            if (hashSet.contains(m.toString())) {
                if (z) {
                    StringBuilder m2 = ActivityResultRegistry$$ExternalSyntheticOutline0.m("checkConfigCSC with channel :", str, ":");
                    m2.append(notificationChannel.getId());
                    Log.d("SecNotificationBlockManager", m2.toString());
                }
                return 2;
            }
            return 4;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            if (!TextUtils.isEmpty(str3)) {
                if (str3.startsWith(str + ":")) {
                    MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("checkConfigCSC :", str, "SecNotificationBlockManager");
                    return 2;
                }
            }
        }
        return 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0029, code lost:
    
        r6 = r0.getPackageInfo(r3, 64);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002e, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002f, code lost:
    
        r3.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0076, code lost:
    
        if (((java.lang.Boolean) r9.get(r10)).booleanValue() != false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a4 A[Catch: NameNotFoundException -> 0x00c0, TRY_LEAVE, TryCatch #0 {NameNotFoundException -> 0x00c0, blocks: (B:3:0x0007, B:5:0x000d, B:9:0x001c, B:11:0x001f, B:20:0x002f, B:13:0x0033, B:23:0x0038, B:27:0x004a, B:31:0x0063, B:33:0x006c, B:37:0x00a4, B:39:0x007a, B:41:0x007e, B:44:0x008e, B:46:0x0096, B:47:0x009b, B:17:0x0029), top: B:2:0x0007, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int checkSystemAppAndMetaData(android.content.Context r9, java.lang.String r10) {
        /*
            android.content.pm.PackageManager r0 = r9.getPackageManager()
            r1 = 128(0x80, float:1.794E-43)
            r2 = 4
            android.content.pm.ApplicationInfo r1 = r0.getApplicationInfo(r10, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            if (r1 == 0) goto Lbf
            java.lang.String r3 = r1.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            int r4 = r1.uid     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            java.lang.String[] r4 = r0.getPackagesForUid(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            r5 = 0
            r6 = 0
            if (r4 == 0) goto L36
            if (r3 == 0) goto L36
            r7 = r5
        L1c:
            int r8 = r4.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            if (r7 >= r8) goto L36
            r8 = r4[r7]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            boolean r8 = r3.equals(r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            if (r8 == 0) goto L33
            r4 = 64
            android.content.pm.PackageInfo r6 = r0.getPackageInfo(r3, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L2e
            goto L36
        L2e:
            r3 = move-exception
            r3.printStackTrace()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            goto L36
        L33:
            int r7 = r7 + 1
            goto L1c
        L36:
            if (r6 == 0) goto Lbf
            android.content.res.Resources r9 = r9.getResources()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            boolean r9 = com.android.settingslib.Utils.isSystemPackage(r9, r0, r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            java.lang.String r0 = "checkSystemAppAndMetaData:"
            java.lang.String r3 = "SecNotificationBlockManager"
            boolean r4 = com.android.settingslib.SecNotificationBlockManager.DEBUG
            if (r9 != 0) goto L63
            if (r4 == 0) goto L61
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            r9.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            r9.append(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            r9.append(r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            java.lang.String r10 = ":nonSystemPackage"
            r9.append(r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            java.lang.String r9 = r9.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            android.util.Log.d(r3, r9)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
        L61:
            r9 = 1
            return r9
        L63:
            java.util.HashMap r9 = com.android.settingslib.SecNotificationBlockManager.mMetaDataMap     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            boolean r6 = r9.containsKey(r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            r7 = 2
            if (r6 == 0) goto L7a
            java.lang.Object r9 = r9.get(r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            boolean r9 = r9.booleanValue()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            if (r9 == 0) goto La2
        L78:
            r7 = r2
            goto La2
        L7a:
            android.os.Bundle r1 = r1.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            if (r1 == 0) goto L8e
            java.lang.String r6 = "com.samsung.android.notification.blockable"
            boolean r1 = r1.getBoolean(r6, r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            r9.put(r10, r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            if (r1 == 0) goto La2
            goto L78
        L8e:
            java.util.HashSet r9 = com.android.settingslib.SecNotificationBlockManager.mExceptableSystemAppSet     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            boolean r1 = r9.isEmpty()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            if (r1 == 0) goto L9b
            java.lang.String r1 = "com.samsung.android.email.provider"
            r9.add(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
        L9b:
            boolean r9 = r9.contains(r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            if (r9 == 0) goto La2
            goto L78
        La2:
            if (r4 == 0) goto Lbe
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            r9.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            r9.append(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            r9.append(r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            java.lang.String r10 = ":"
            r9.append(r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            r9.append(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            java.lang.String r9 = r9.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
            android.util.Log.d(r3, r9)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc0
        Lbe:
            return r7
        Lbf:
            return r2
        Lc0:
            r9 = move-exception
            r9.printStackTrace()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.SecNotificationBlockManager.checkSystemAppAndMetaData(android.content.Context, java.lang.String):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (java.util.Arrays.stream(r0).noneMatch(new com.android.settingslib.SecNotificationBlockManager$$ExternalSyntheticLambda0()) != false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isBlockablePackage(android.content.Context r11, java.lang.String r12) {
        /*
            android.content.pm.PackageManager r0 = r11.getPackageManager()
            r1 = 4160(0x1040, float:5.83E-42)
            r2 = 0
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r12, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            if (r0 == 0) goto L2d
            android.content.pm.ApplicationInfo r1 = r0.applicationInfo     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            int r1 = r1.targetSdkVersion     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            r3 = 32
            if (r1 <= r3) goto L2d
            java.lang.String[] r0 = r0.requestedPermissions     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            if (r0 == 0) goto L28
            java.util.stream.Stream r0 = java.util.Arrays.stream(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            com.android.settingslib.SecNotificationBlockManager$$ExternalSyntheticLambda0 r1 = new com.android.settingslib.SecNotificationBlockManager$$ExternalSyntheticLambda0     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            r1.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            boolean r0 = r0.noneMatch(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            if (r0 == 0) goto L2d
        L28:
            return r2
        L29:
            r0 = move-exception
            r0.printStackTrace()
        L2d:
            r0 = 0
            int r0 = checkConfigCSC(r11, r12, r0)
            r1 = 2
            if (r0 != r1) goto L36
            return r2
        L36:
            java.lang.String r0 = "FLAG_PERMISSION_SYSTEM_FIXED pkg :"
            java.lang.String r3 = "Could not reach system server :"
            android.permission.IPermissionManager r4 = android.app.AppGlobals.getPermissionManager()
            r5 = 1
            java.lang.String r6 = "SecNotificationBlockManager"
            if (r4 != 0) goto L4a
            java.lang.String r0 = "AppGlobals.getPermissionManager() is null"
            android.util.Log.e(r6, r0)
        L48:
            r0 = r2
            goto L8e
        L4a:
            long r7 = android.os.Binder.clearCallingIdentity()
            int r9 = android.os.Binder.getCallingUid()
            int r9 = android.os.UserHandle.getUserId(r9)
            java.lang.String r10 = "android.permission.POST_NOTIFICATIONS"
            int r4 = r4.getPermissionFlags(r12, r10, r9)     // Catch: java.lang.Throwable -> L78 android.os.RemoteException -> L7a
            r9 = r4 & 16
            if (r9 != 0) goto L64
            r4 = r4 & 4
            if (r4 == 0) goto L8a
        L64:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L78 android.os.RemoteException -> L7a
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L78 android.os.RemoteException -> L7a
            r4.append(r12)     // Catch: java.lang.Throwable -> L78 android.os.RemoteException -> L7a
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L78 android.os.RemoteException -> L7a
            android.util.Log.d(r6, r0)     // Catch: java.lang.Throwable -> L78 android.os.RemoteException -> L7a
            android.os.Binder.restoreCallingIdentity(r7)
            r0 = r5
            goto L8e
        L78:
            r11 = move-exception
            goto Lb3
        L7a:
            r0 = move-exception
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L78
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L78
            r4.append(r0)     // Catch: java.lang.Throwable -> L78
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L78
            android.util.Log.d(r6, r0)     // Catch: java.lang.Throwable -> L78
        L8a:
            android.os.Binder.restoreCallingIdentity(r7)
            goto L48
        L8e:
            if (r0 == 0) goto L91
            return r2
        L91:
            int r11 = checkSystemAppAndMetaData(r11, r12)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "isBlockablePackage pkg :"
            r0.<init>(r3)
            r0.append(r12)
            java.lang.String r12 = " , result = "
            r0.append(r12)
            r0.append(r11)
            java.lang.String r12 = r0.toString()
            android.util.Log.d(r6, r12)
            if (r11 != r1) goto Lb1
            goto Lb2
        Lb1:
            r2 = r5
        Lb2:
            return r2
        Lb3:
            android.os.Binder.restoreCallingIdentity(r7)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.SecNotificationBlockManager.isBlockablePackage(android.content.Context, java.lang.String):boolean");
    }
}
