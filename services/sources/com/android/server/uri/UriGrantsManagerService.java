package com.android.server.uri;

import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AppGlobals;
import android.app.IUriGrantsManager;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.content.pm.PathPermission;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInstalld;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.util.XmlUtils;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.IoThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.SystemServiceManager;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.uri.UriMetricsHelper;
import com.android.server.uri.UriPermission;
import com.google.android.collect.Lists;
import com.google.android.collect.Maps;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class UriGrantsManagerService extends IUriGrantsManager.Stub implements UriMetricsHelper.PersistentUriGrantsProvider {
    public ActivityManagerInternal mAmInternal;
    public final AtomicFile mGrantFile;
    public final SparseArray mGrantedUriPermissions;
    public final H mH;
    public final Object mLock;
    public UriMetricsHelper mMetricsHelper;
    public PackageManagerInternal mPmInternal;

    public UriGrantsManagerService() {
        this(SystemServiceManager.ensureSystemDir());
    }

    public UriGrantsManagerService(File file) {
        this.mLock = new Object();
        this.mGrantedUriPermissions = new SparseArray();
        this.mH = new H(IoThread.get().getLooper());
        this.mGrantFile = new AtomicFile(new File(file, "urigrants.xml"), "uri-grants");
    }

    public static UriGrantsManagerService createForTest(File file) {
        UriGrantsManagerService uriGrantsManagerService = new UriGrantsManagerService(file);
        uriGrantsManagerService.mAmInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        uriGrantsManagerService.mPmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        return uriGrantsManagerService;
    }

    public UriGrantsManagerInternal getLocalService() {
        return new LocalService();
    }

    public final void start() {
        LocalServices.addService(UriGrantsManagerInternal.class, new LocalService());
    }

    /* loaded from: classes3.dex */
    public final class Lifecycle extends SystemService {
        public final Context mContext;
        public final UriGrantsManagerService mService;

        public Lifecycle(Context context) {
            super(context);
            this.mContext = context;
            this.mService = new UriGrantsManagerService();
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            publishBinderService("uri_grants", this.mService);
            this.mService.mMetricsHelper = new UriMetricsHelper(this.mContext, this.mService);
            this.mService.start();
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int i) {
            if (i == 500) {
                this.mService.mAmInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
                this.mService.mPmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                this.mService.mMetricsHelper.registerPuller();
            }
        }

        public UriGrantsManagerService getService() {
            return this.mService;
        }
    }

    public final int checkUidPermission(String str, int i) {
        try {
            return AppGlobals.getPackageManager().checkUidPermission(str, i);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void grantUriPermissionFromOwner(IBinder iBinder, int i, String str, Uri uri, int i2, int i3, int i4) {
        grantUriPermissionFromOwnerUnlocked(iBinder, i, str, uri, i2, i3, i4);
    }

    public final void grantUriPermissionFromOwnerUnlocked(IBinder iBinder, int i, String str, Uri uri, int i2, int i3, int i4) {
        int handleIncomingUser = this.mAmInternal.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), i4, false, 2, "grantUriPermissionFromOwner", (String) null);
        UriPermissionOwner fromExternalToken = UriPermissionOwner.fromExternalToken(iBinder);
        if (fromExternalToken == null) {
            throw new IllegalArgumentException("Unknown owner: " + iBinder);
        }
        if (i != Binder.getCallingUid() && Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("nice try");
        }
        if (str == null) {
            throw new IllegalArgumentException("null target");
        }
        if (uri == null) {
            throw new IllegalArgumentException("null uri");
        }
        grantUriPermissionUnlocked(i, str, new GrantUri(i3, uri, i2), i2, fromExternalToken, handleIncomingUser);
    }

    public ParceledListSlice getUriPermissions(String str, boolean z, boolean z2) {
        enforceNotIsolatedCaller("getUriPermissions");
        Objects.requireNonNull(str, "packageName");
        int callingUid = Binder.getCallingUid();
        if (((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).getPackageUid(str, 786432L, UserHandle.getUserId(callingUid)) != callingUid) {
            throw new SecurityException("Package " + str + " does not belong to calling UID " + callingUid);
        }
        ArrayList newArrayList = Lists.newArrayList();
        synchronized (this.mLock) {
            if (z) {
                ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.get(callingUid);
                if (arrayMap == null) {
                    Slog.w("UriGrantsManagerService", "No permission grants found for " + str);
                } else {
                    for (int i = 0; i < arrayMap.size(); i++) {
                        UriPermission uriPermission = (UriPermission) arrayMap.valueAt(i);
                        if (str.equals(uriPermission.targetPkg) && (!z2 || uriPermission.persistedModeFlags != 0)) {
                            newArrayList.add(uriPermission.buildPersistedPublicApiObject());
                        }
                    }
                }
            } else {
                int size = this.mGrantedUriPermissions.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ArrayMap arrayMap2 = (ArrayMap) this.mGrantedUriPermissions.valueAt(i2);
                    for (int i3 = 0; i3 < arrayMap2.size(); i3++) {
                        UriPermission uriPermission2 = (UriPermission) arrayMap2.valueAt(i3);
                        if (str.equals(uriPermission2.sourcePkg) && (!z2 || uriPermission2.persistedModeFlags != 0)) {
                            newArrayList.add(uriPermission2.buildPersistedPublicApiObject());
                        }
                    }
                }
            }
        }
        return new ParceledListSlice(newArrayList);
    }

    public ParceledListSlice getGrantedUriPermissions(String str, int i) {
        this.mAmInternal.enforceCallingPermission("android.permission.GET_APP_GRANTED_URI_PERMISSIONS", "getGrantedUriPermissions");
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            int size = this.mGrantedUriPermissions.size();
            for (int i2 = 0; i2 < size; i2++) {
                ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.valueAt(i2);
                for (int i3 = 0; i3 < arrayMap.size(); i3++) {
                    UriPermission uriPermission = (UriPermission) arrayMap.valueAt(i3);
                    if ((str == null || str.equals(uriPermission.targetPkg)) && uriPermission.targetUserId == i && uriPermission.persistedModeFlags != 0) {
                        arrayList.add(uriPermission.buildGrantedUriPermission());
                    }
                }
            }
        }
        return new ParceledListSlice(arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0079, code lost:
    
        r2 = false | r1.takePersistableModes(r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void takePersistableUriPermission(android.net.Uri r7, int r8, java.lang.String r9, int r10) {
        /*
            r6 = this;
            if (r9 == 0) goto L15
            android.app.ActivityManagerInternal r0 = r6.mAmInternal
            java.lang.String r1 = "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"
            java.lang.String r2 = "takePersistableUriPermission"
            r0.enforceCallingPermission(r1, r2)
            android.content.pm.PackageManagerInternal r0 = r6.mPmInternal
            r1 = 0
            int r9 = r0.getPackageUid(r9, r1, r10)
            goto L1f
        L15:
            java.lang.String r9 = "takePersistableUriPermission"
            r6.enforceNotIsolatedCaller(r9)
            int r9 = android.os.Binder.getCallingUid()
        L1f:
            r0 = 3
            com.android.internal.util.Preconditions.checkFlagsArgument(r8, r0)
            java.lang.Object r0 = r6.mLock
            monitor-enter(r0)
            com.android.server.uri.GrantUri r1 = new com.android.server.uri.GrantUri     // Catch: java.lang.Throwable -> L91
            r2 = 0
            r1.<init>(r10, r7, r2)     // Catch: java.lang.Throwable -> L91
            com.android.server.uri.UriPermission r1 = r6.findUriPermissionLocked(r9, r1)     // Catch: java.lang.Throwable -> L91
            com.android.server.uri.GrantUri r3 = new com.android.server.uri.GrantUri     // Catch: java.lang.Throwable -> L91
            r4 = 128(0x80, float:1.794E-43)
            r3.<init>(r10, r7, r4)     // Catch: java.lang.Throwable -> L91
            com.android.server.uri.UriPermission r10 = r6.findUriPermissionLocked(r9, r3)     // Catch: java.lang.Throwable -> L91
            r3 = 1
            if (r1 == 0) goto L45
            int r4 = r1.persistableModeFlags     // Catch: java.lang.Throwable -> L91
            r4 = r4 & r8
            if (r4 != r8) goto L45
            r4 = r3
            goto L46
        L45:
            r4 = r2
        L46:
            if (r10 == 0) goto L4e
            int r5 = r10.persistableModeFlags     // Catch: java.lang.Throwable -> L91
            r5 = r5 & r8
            if (r5 != r8) goto L4e
            goto L4f
        L4e:
            r3 = r2
        L4f:
            if (r4 != 0) goto L77
            if (r3 == 0) goto L54
            goto L77
        L54:
            java.lang.SecurityException r6 = new java.lang.SecurityException     // Catch: java.lang.Throwable -> L91
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L91
            r8.<init>()     // Catch: java.lang.Throwable -> L91
            java.lang.String r10 = "No persistable permission grants found for UID "
            r8.append(r10)     // Catch: java.lang.Throwable -> L91
            r8.append(r9)     // Catch: java.lang.Throwable -> L91
            java.lang.String r9 = " and Uri "
            r8.append(r9)     // Catch: java.lang.Throwable -> L91
            java.lang.String r7 = r7.toSafeString()     // Catch: java.lang.Throwable -> L91
            r8.append(r7)     // Catch: java.lang.Throwable -> L91
            java.lang.String r7 = r8.toString()     // Catch: java.lang.Throwable -> L91
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L91
            throw r6     // Catch: java.lang.Throwable -> L91
        L77:
            if (r4 == 0) goto L7e
            boolean r7 = r1.takePersistableModes(r8)     // Catch: java.lang.Throwable -> L91
            r2 = r2 | r7
        L7e:
            if (r3 == 0) goto L85
            boolean r7 = r10.takePersistableModes(r8)     // Catch: java.lang.Throwable -> L91
            r2 = r2 | r7
        L85:
            boolean r7 = r6.maybePrunePersistedUriGrantsLocked(r9)     // Catch: java.lang.Throwable -> L91
            r7 = r7 | r2
            if (r7 == 0) goto L8f
            r6.schedulePersistUriGrants()     // Catch: java.lang.Throwable -> L91
        L8f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L91
            return
        L91:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L91
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.uri.UriGrantsManagerService.takePersistableUriPermission(android.net.Uri, int, java.lang.String, int):void");
    }

    public void clearGrantedUriPermissions(String str, int i) {
        this.mAmInternal.enforceCallingPermission("android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS", "clearGrantedUriPermissions");
        synchronized (this.mLock) {
            removeUriPermissionsForPackageLocked(str, i, true, true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0067, code lost:
    
        r3 = false | r2.releasePersistableModes(r8);
        removeUriPermissionIfNeededLocked(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void releasePersistableUriPermission(android.net.Uri r7, int r8, java.lang.String r9, int r10) {
        /*
            r6 = this;
            if (r9 == 0) goto L15
            android.app.ActivityManagerInternal r0 = r6.mAmInternal
            java.lang.String r1 = "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"
            java.lang.String r2 = "releasePersistableUriPermission"
            r0.enforceCallingPermission(r1, r2)
            android.content.pm.PackageManagerInternal r0 = r6.mPmInternal
            r1 = 0
            int r0 = r0.getPackageUid(r9, r1, r10)
            goto L1f
        L15:
            java.lang.String r0 = "releasePersistableUriPermission"
            r6.enforceNotIsolatedCaller(r0)
            int r0 = android.os.Binder.getCallingUid()
        L1f:
            r1 = 3
            com.android.internal.util.Preconditions.checkFlagsArgument(r8, r1)
            java.lang.Object r1 = r6.mLock
            monitor-enter(r1)
            com.android.server.uri.GrantUri r2 = new com.android.server.uri.GrantUri     // Catch: java.lang.Throwable -> L80
            r3 = 0
            r2.<init>(r10, r7, r3)     // Catch: java.lang.Throwable -> L80
            com.android.server.uri.UriPermission r2 = r6.findUriPermissionLocked(r0, r2)     // Catch: java.lang.Throwable -> L80
            com.android.server.uri.GrantUri r4 = new com.android.server.uri.GrantUri     // Catch: java.lang.Throwable -> L80
            r5 = 128(0x80, float:1.794E-43)
            r4.<init>(r10, r7, r5)     // Catch: java.lang.Throwable -> L80
            com.android.server.uri.UriPermission r10 = r6.findUriPermissionLocked(r0, r4)     // Catch: java.lang.Throwable -> L80
            if (r2 != 0) goto L65
            if (r10 != 0) goto L65
            if (r9 == 0) goto L42
            goto L65
        L42:
            java.lang.SecurityException r6 = new java.lang.SecurityException     // Catch: java.lang.Throwable -> L80
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L80
            r8.<init>()     // Catch: java.lang.Throwable -> L80
            java.lang.String r9 = "No permission grants found for UID "
            r8.append(r9)     // Catch: java.lang.Throwable -> L80
            r8.append(r0)     // Catch: java.lang.Throwable -> L80
            java.lang.String r9 = " and Uri "
            r8.append(r9)     // Catch: java.lang.Throwable -> L80
            java.lang.String r7 = r7.toSafeString()     // Catch: java.lang.Throwable -> L80
            r8.append(r7)     // Catch: java.lang.Throwable -> L80
            java.lang.String r7 = r8.toString()     // Catch: java.lang.Throwable -> L80
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L80
            throw r6     // Catch: java.lang.Throwable -> L80
        L65:
            if (r2 == 0) goto L6f
            boolean r7 = r2.releasePersistableModes(r8)     // Catch: java.lang.Throwable -> L80
            r3 = r3 | r7
            r6.removeUriPermissionIfNeededLocked(r2)     // Catch: java.lang.Throwable -> L80
        L6f:
            if (r10 == 0) goto L79
            boolean r7 = r10.releasePersistableModes(r8)     // Catch: java.lang.Throwable -> L80
            r3 = r3 | r7
            r6.removeUriPermissionIfNeededLocked(r10)     // Catch: java.lang.Throwable -> L80
        L79:
            if (r3 == 0) goto L7e
            r6.schedulePersistUriGrants()     // Catch: java.lang.Throwable -> L80
        L7e:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L80
            return
        L80:
            r6 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L80
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.uri.UriGrantsManagerService.releasePersistableUriPermission(android.net.Uri, int, java.lang.String, int):void");
    }

    public final void removeUriPermissionsForPackageLocked(String str, int i, boolean z, boolean z2) {
        if (i == -1 && str == null) {
            throw new IllegalArgumentException("Must narrow by either package or user");
        }
        int size = this.mGrantedUriPermissions.size();
        int i2 = 0;
        boolean z3 = false;
        while (i2 < size) {
            int keyAt = this.mGrantedUriPermissions.keyAt(i2);
            ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.valueAt(i2);
            if (i == -1 || i == UserHandle.getUserId(keyAt)) {
                Iterator it = arrayMap.values().iterator();
                while (it.hasNext()) {
                    UriPermission uriPermission = (UriPermission) it.next();
                    if (str == null || ((!z2 && uriPermission.sourcePkg.equals(str)) || uriPermission.targetPkg.equals(str))) {
                        if (!"downloads".equals(uriPermission.uri.uri.getAuthority()) || z) {
                            z3 |= uriPermission.revokeModes(z ? -1 : -65, true);
                            if (uriPermission.modeFlags == 0) {
                                it.remove();
                            }
                        }
                    }
                }
                if (arrayMap.isEmpty()) {
                    this.mGrantedUriPermissions.remove(keyAt);
                    size--;
                    i2--;
                }
            }
            i2++;
        }
        if (z3) {
            schedulePersistUriGrants();
        }
    }

    public final boolean checkAuthorityGrantsLocked(int i, ProviderInfo providerInfo, int i2, boolean z) {
        ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.get(i);
        if (arrayMap == null) {
            return false;
        }
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            GrantUri grantUri = (GrantUri) arrayMap.keyAt(size);
            if ((grantUri.sourceUserId == i2 || !z) && matchesProvider(grantUri.uri, providerInfo)) {
                return true;
            }
        }
        return false;
    }

    public final boolean matchesProvider(Uri uri, ProviderInfo providerInfo) {
        String authority = uri.getAuthority();
        String str = providerInfo.authority;
        if (str.indexOf(59) == -1) {
            return str.equals(authority);
        }
        for (String str2 : str.split(KnoxVpnFirewallHelper.DELIMITER)) {
            if (str2.equals(authority)) {
                return true;
            }
        }
        return false;
    }

    public final boolean maybePrunePersistedUriGrantsLocked(int i) {
        ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.get(i);
        if (arrayMap == null || arrayMap.size() < 512) {
            return false;
        }
        ArrayList newArrayList = Lists.newArrayList();
        for (UriPermission uriPermission : arrayMap.values()) {
            if (uriPermission.persistedModeFlags != 0) {
                newArrayList.add(uriPermission);
            }
        }
        int size = newArrayList.size() - 512;
        if (size <= 0) {
            return false;
        }
        Collections.sort(newArrayList, new UriPermission.PersistedTimeComparator());
        for (int i2 = 0; i2 < size; i2++) {
            UriPermission uriPermission2 = (UriPermission) newArrayList.get(i2);
            uriPermission2.releasePersistableModes(-1);
            removeUriPermissionIfNeededLocked(uriPermission2);
        }
        return true;
    }

    public final NeededUriGrants checkGrantUriPermissionFromIntentUnlocked(int i, String str, Intent intent, int i2, NeededUriGrants neededUriGrants, int i3) {
        int i4;
        NeededUriGrants checkGrantUriPermissionFromIntentUnlocked;
        NeededUriGrants neededUriGrants2 = neededUriGrants;
        if (str == null) {
            throw new NullPointerException("targetPkg");
        }
        if (intent == null) {
            return null;
        }
        Uri data = intent.getData();
        ClipData clipData = intent.getClipData();
        if (data == null && clipData == null) {
            return null;
        }
        int contentUserHint = intent.getContentUserHint();
        if (contentUserHint == -2) {
            contentUserHint = UserHandle.getUserId(i);
        }
        int i5 = contentUserHint;
        if (neededUriGrants2 != null) {
            i4 = neededUriGrants2.targetUid;
        } else {
            int packageUid = this.mPmInternal.getPackageUid(str, 268435456L, i3);
            if (packageUid < 0) {
                return null;
            }
            i4 = packageUid;
        }
        if (data != null) {
            GrantUri resolve = GrantUri.resolve(i5, data, i2);
            i4 = checkGrantUriPermissionUnlocked(i, str, resolve, i2, i4);
            if (i4 > 0) {
                NeededUriGrants neededUriGrants3 = neededUriGrants2 == null ? new NeededUriGrants(str, i4, i2) : neededUriGrants2;
                neededUriGrants3.uris.add(resolve);
                neededUriGrants2 = neededUriGrants3;
            }
        }
        if (clipData == null) {
            return neededUriGrants2;
        }
        int i6 = i4;
        NeededUriGrants neededUriGrants4 = neededUriGrants2;
        for (int i7 = 0; i7 < clipData.getItemCount(); i7++) {
            Uri uri = clipData.getItemAt(i7).getUri();
            if (uri != null) {
                GrantUri resolve2 = GrantUri.resolve(i5, uri, i2);
                i6 = checkGrantUriPermissionUnlocked(i, str, resolve2, i2, i6);
                if (i6 > 0) {
                    if (neededUriGrants4 == null) {
                        neededUriGrants4 = new NeededUriGrants(str, i6, i2);
                    }
                    neededUriGrants4.uris.add(resolve2);
                }
            } else {
                Intent intent2 = clipData.getItemAt(i7).getIntent();
                if (intent2 != null && (checkGrantUriPermissionFromIntentUnlocked = checkGrantUriPermissionFromIntentUnlocked(i, str, intent2, i2, neededUriGrants4, i3)) != null) {
                    neededUriGrants4 = checkGrantUriPermissionFromIntentUnlocked;
                }
            }
        }
        return neededUriGrants4;
    }

    public final void readGrantedUriPermissionsLocked() {
        String str;
        FileInputStream fileInputStream;
        long j;
        int attributeInt;
        String str2 = "Failed reading Uri grants";
        String str3 = "UriGrantsManagerService";
        long currentTimeMillis = System.currentTimeMillis();
        FileInputStream fileInputStream2 = null;
        String str4 = null;
        try {
            try {
                FileInputStream openRead = this.mGrantFile.openRead();
                try {
                    try {
                        TypedXmlPullParser resolvePullParser = Xml.resolvePullParser(openRead);
                        while (true) {
                            int next = resolvePullParser.next();
                            if (next != 1) {
                                String name = resolvePullParser.getName();
                                if (next == 2 && "uri-grant".equals(name)) {
                                    int attributeInt2 = resolvePullParser.getAttributeInt(str4, "userHandle", -10000);
                                    if (attributeInt2 != -10000) {
                                        attributeInt = attributeInt2;
                                    } else {
                                        attributeInt2 = resolvePullParser.getAttributeInt(str4, "sourceUserId");
                                        attributeInt = resolvePullParser.getAttributeInt(str4, "targetUserId");
                                    }
                                    String attributeValue = resolvePullParser.getAttributeValue(str4, "sourcePkg");
                                    String attributeValue2 = resolvePullParser.getAttributeValue(str4, "targetPkg");
                                    Uri parse = Uri.parse(resolvePullParser.getAttributeValue(str4, "uri"));
                                    boolean attributeBoolean = resolvePullParser.getAttributeBoolean(str4, "prefix", false);
                                    int attributeInt3 = resolvePullParser.getAttributeInt(str4, "modeFlags");
                                    str = str2;
                                    String str5 = str3;
                                    try {
                                        try {
                                            long attributeLong = resolvePullParser.getAttributeLong(str4, "createdTime", currentTimeMillis);
                                            j = currentTimeMillis;
                                            ProviderInfo providerInfo = getProviderInfo(parse.getAuthority(), attributeInt2, 786432, 1000);
                                            if (providerInfo != null) {
                                                try {
                                                    if (attributeValue.equals(providerInfo.packageName)) {
                                                        fileInputStream = openRead;
                                                        try {
                                                            try {
                                                                try {
                                                                    int packageUid = this.mPmInternal.getPackageUid(attributeValue2, 8192L, attributeInt);
                                                                    if (packageUid != -1) {
                                                                        findOrCreateUriPermissionLocked(attributeValue, attributeValue2, packageUid, new GrantUri(attributeInt2, parse, attributeBoolean ? 128 : 0)).initPersistedModes(attributeInt3, attributeLong);
                                                                        this.mPmInternal.grantImplicitAccess(attributeInt, null, UserHandle.getAppId(packageUid), providerInfo.applicationInfo.uid, false, true);
                                                                    }
                                                                    str3 = str5;
                                                                } catch (FileNotFoundException unused) {
                                                                    fileInputStream2 = fileInputStream;
                                                                    IoUtils.closeQuietly(fileInputStream2);
                                                                    return;
                                                                } catch (Throwable th) {
                                                                    th = th;
                                                                    fileInputStream2 = fileInputStream;
                                                                    IoUtils.closeQuietly(fileInputStream2);
                                                                    throw th;
                                                                }
                                                            } catch (IOException e) {
                                                                e = e;
                                                                str2 = str;
                                                                str3 = str5;
                                                                fileInputStream2 = fileInputStream;
                                                                Slog.wtf(str3, str2, e);
                                                                IoUtils.closeQuietly(fileInputStream2);
                                                                return;
                                                            }
                                                        } catch (XmlPullParserException e2) {
                                                            e = e2;
                                                            str3 = str5;
                                                            fileInputStream2 = fileInputStream;
                                                            Slog.wtf(str3, str, e);
                                                            IoUtils.closeQuietly(fileInputStream2);
                                                            return;
                                                        }
                                                    }
                                                } catch (IOException e3) {
                                                    e = e3;
                                                    fileInputStream = openRead;
                                                }
                                            }
                                            fileInputStream = openRead;
                                            try {
                                                str3 = str5;
                                                try {
                                                    Slog.w(str3, "Persisted grant for " + parse + " had source " + attributeValue + " but instead found " + providerInfo);
                                                } catch (IOException e4) {
                                                    e = e4;
                                                    str2 = str;
                                                    fileInputStream2 = fileInputStream;
                                                    Slog.wtf(str3, str2, e);
                                                    IoUtils.closeQuietly(fileInputStream2);
                                                    return;
                                                } catch (XmlPullParserException e5) {
                                                    e = e5;
                                                    fileInputStream2 = fileInputStream;
                                                    Slog.wtf(str3, str, e);
                                                    IoUtils.closeQuietly(fileInputStream2);
                                                    return;
                                                }
                                            } catch (IOException e6) {
                                                e = e6;
                                                str3 = str5;
                                                str2 = str;
                                                fileInputStream2 = fileInputStream;
                                                Slog.wtf(str3, str2, e);
                                                IoUtils.closeQuietly(fileInputStream2);
                                                return;
                                            }
                                        } catch (XmlPullParserException e7) {
                                            e = e7;
                                            fileInputStream = openRead;
                                        }
                                    } catch (IOException e8) {
                                        e = e8;
                                        fileInputStream = openRead;
                                    }
                                } else {
                                    str = str2;
                                    j = currentTimeMillis;
                                    fileInputStream = openRead;
                                }
                                str2 = str;
                                currentTimeMillis = j;
                                openRead = fileInputStream;
                                str4 = null;
                            } else {
                                IoUtils.closeQuietly(openRead);
                                return;
                            }
                        }
                    } catch (FileNotFoundException unused2) {
                        fileInputStream = openRead;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = openRead;
                    }
                } catch (IOException e9) {
                    e = e9;
                    fileInputStream = openRead;
                } catch (XmlPullParserException e10) {
                    e = e10;
                    str = str2;
                    fileInputStream = openRead;
                }
            } catch (FileNotFoundException unused3) {
                fileInputStream2 = null;
            } catch (IOException e11) {
                e = e11;
                fileInputStream2 = null;
            } catch (XmlPullParserException e12) {
                e = e12;
                str = "Failed reading Uri grants";
                fileInputStream2 = null;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream2 = null;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final UriPermission findOrCreateUriPermissionLocked(String str, String str2, int i, GrantUri grantUri) {
        ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.get(i);
        if (arrayMap == null) {
            arrayMap = Maps.newArrayMap();
            this.mGrantedUriPermissions.put(i, arrayMap);
        }
        UriPermission uriPermission = (UriPermission) arrayMap.get(grantUri);
        if (uriPermission != null) {
            return uriPermission;
        }
        UriPermission uriPermission2 = new UriPermission(str, str2, i, grantUri);
        arrayMap.put(grantUri, uriPermission2);
        return uriPermission2;
    }

    public final void grantUriPermissionUnchecked(int i, String str, GrantUri grantUri, int i2, UriPermissionOwner uriPermissionOwner) {
        UriPermission findOrCreateUriPermissionLocked;
        if (Intent.isAccessUriMode(i2)) {
            ProviderInfo providerInfo = getProviderInfo(grantUri.uri.getAuthority(), grantUri.sourceUserId, 268435456, 1000);
            if (providerInfo == null) {
                Slog.w("UriGrantsManagerService", "No content provider found for grant: " + grantUri.toSafeString());
                return;
            }
            synchronized (this.mLock) {
                findOrCreateUriPermissionLocked = findOrCreateUriPermissionLocked(providerInfo.packageName, str, i, grantUri);
            }
            findOrCreateUriPermissionLocked.grantModes(i2, uriPermissionOwner);
            this.mPmInternal.grantImplicitAccess(UserHandle.getUserId(i), null, UserHandle.getAppId(i), providerInfo.applicationInfo.uid, false, (i2 & 64) != 0);
        }
    }

    public final void grantUriPermissionUncheckedFromIntent(NeededUriGrants neededUriGrants, UriPermissionOwner uriPermissionOwner) {
        if (neededUriGrants == null) {
            return;
        }
        int size = neededUriGrants.uris.size();
        for (int i = 0; i < size; i++) {
            grantUriPermissionUnchecked(neededUriGrants.targetUid, neededUriGrants.targetPkg, (GrantUri) neededUriGrants.uris.valueAt(i), neededUriGrants.flags, uriPermissionOwner);
        }
    }

    public final void grantUriPermissionUnlocked(int i, String str, GrantUri grantUri, int i2, UriPermissionOwner uriPermissionOwner, int i3) {
        if (str == null) {
            throw new NullPointerException("targetPkg");
        }
        int checkGrantUriPermissionUnlocked = checkGrantUriPermissionUnlocked(i, str, grantUri, i2, this.mPmInternal.getPackageUid(str, 268435456L, i3));
        if (checkGrantUriPermissionUnlocked < 0) {
            return;
        }
        grantUriPermissionUnchecked(checkGrantUriPermissionUnlocked, str, grantUri, i2, uriPermissionOwner);
    }

    public final void revokeUriPermission(String str, int i, GrantUri grantUri, int i2) {
        ProviderInfo providerInfo = getProviderInfo(grantUri.uri.getAuthority(), grantUri.sourceUserId, 786432, i);
        if (providerInfo == null) {
            Slog.w("UriGrantsManagerService", "No content provider found for permission revoke: " + grantUri.toSafeString());
            return;
        }
        boolean checkHoldingPermissionsUnlocked = checkHoldingPermissionsUnlocked(providerInfo, grantUri, i, i2);
        synchronized (this.mLock) {
            revokeUriPermissionLocked(str, i, grantUri, i2, checkHoldingPermissionsUnlocked);
        }
    }

    public final void revokeUriPermissionLocked(String str, int i, GrantUri grantUri, int i2, boolean z) {
        if (!z) {
            ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.get(i);
            if (arrayMap != null) {
                boolean z2 = false;
                for (int size = arrayMap.size() - 1; size >= 0; size--) {
                    UriPermission uriPermission = (UriPermission) arrayMap.valueAt(size);
                    if (str == null || str.equals(uriPermission.targetPkg)) {
                        GrantUri grantUri2 = uriPermission.uri;
                        if (grantUri2.sourceUserId == grantUri.sourceUserId && grantUri2.uri.isPathPrefixMatch(grantUri.uri)) {
                            z2 |= uriPermission.revokeModes(i2 | 64, false);
                            if (uriPermission.modeFlags == 0) {
                                arrayMap.removeAt(size);
                            }
                        }
                    }
                }
                if (arrayMap.isEmpty()) {
                    this.mGrantedUriPermissions.remove(i);
                }
                if (z2) {
                    schedulePersistUriGrants();
                    return;
                }
                return;
            }
            return;
        }
        boolean z3 = false;
        for (int size2 = this.mGrantedUriPermissions.size() - 1; size2 >= 0; size2--) {
            this.mGrantedUriPermissions.keyAt(size2);
            ArrayMap arrayMap2 = (ArrayMap) this.mGrantedUriPermissions.valueAt(size2);
            for (int size3 = arrayMap2.size() - 1; size3 >= 0; size3--) {
                UriPermission uriPermission2 = (UriPermission) arrayMap2.valueAt(size3);
                if (str == null || str.equals(uriPermission2.targetPkg)) {
                    GrantUri grantUri3 = uriPermission2.uri;
                    if (grantUri3.sourceUserId == grantUri.sourceUserId && grantUri3.uri.isPathPrefixMatch(grantUri.uri)) {
                        z3 |= uriPermission2.revokeModes(i2 | 64, str == null);
                        if (uriPermission2.modeFlags == 0) {
                            arrayMap2.removeAt(size3);
                        }
                    }
                }
            }
            if (arrayMap2.isEmpty()) {
                this.mGrantedUriPermissions.removeAt(size2);
            }
        }
        if (z3) {
            schedulePersistUriGrants();
        }
    }

    public final boolean checkHoldingPermissionsUnlocked(ProviderInfo providerInfo, GrantUri grantUri, int i, int i2) {
        if (UserHandle.getUserId(i) == grantUri.sourceUserId || ActivityManager.checkComponentPermission("android.permission.INTERACT_ACROSS_USERS", i, -1, true) == 0) {
            return checkHoldingPermissionsInternalUnlocked(providerInfo, grantUri, i, i2, true);
        }
        return false;
    }

    public final boolean checkHoldingPermissionsInternalUnlocked(ProviderInfo providerInfo, GrantUri grantUri, int i, int i2, boolean z) {
        int userId;
        String writePermission;
        String readPermission;
        String str;
        String str2;
        if (Thread.holdsLock(this.mLock)) {
            throw new IllegalStateException("Must never hold local mLock");
        }
        if (providerInfo.applicationInfo.uid == i) {
            return true;
        }
        if (!providerInfo.exported) {
            return false;
        }
        boolean z2 = (i2 & 1) == 0;
        boolean z3 = (i2 & 2) == 0;
        if (!z2 && (str2 = providerInfo.readPermission) != null && z && checkUidPermission(str2, i) == 0) {
            z2 = true;
        }
        if (!z3 && (str = providerInfo.writePermission) != null && z && checkUidPermission(str, i) == 0) {
            z3 = true;
        }
        boolean z4 = providerInfo.readPermission == null;
        boolean z5 = providerInfo.writePermission == null;
        PathPermission[] pathPermissionArr = providerInfo.pathPermissions;
        if (pathPermissionArr != null) {
            String path = grantUri.uri.getPath();
            int length = pathPermissionArr.length;
            while (length > 0 && (!z2 || !z3)) {
                length--;
                PathPermission pathPermission = pathPermissionArr[length];
                if (pathPermission.match(path)) {
                    if (!z2 && (readPermission = pathPermission.getReadPermission()) != null) {
                        if (z && checkUidPermission(readPermission, i) == 0) {
                            z2 = true;
                        } else {
                            z4 = false;
                        }
                    }
                    if (!z3 && (writePermission = pathPermission.getWritePermission()) != null) {
                        if (z && checkUidPermission(writePermission, i) == 0) {
                            z3 = true;
                        } else {
                            z5 = false;
                        }
                    }
                }
            }
        }
        if (z4) {
            z2 = true;
        }
        if (z5) {
            z3 = true;
        }
        return z2 && z3 && (!providerInfo.forceUriPermissions || ((userId = UserHandle.getUserId(providerInfo.applicationInfo.uid)) == UserHandle.getUserId(i) && this.mAmInternal.checkContentProviderUriPermission(grantUri.uri, userId, i, i2) == 0));
    }

    public final void removeUriPermissionIfNeededLocked(UriPermission uriPermission) {
        ArrayMap arrayMap;
        if (uriPermission.modeFlags == 0 && (arrayMap = (ArrayMap) this.mGrantedUriPermissions.get(uriPermission.targetUid)) != null) {
            arrayMap.remove(uriPermission.uri);
            if (arrayMap.isEmpty()) {
                this.mGrantedUriPermissions.remove(uriPermission.targetUid);
            }
        }
    }

    public final UriPermission findUriPermissionLocked(int i, GrantUri grantUri) {
        ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.get(i);
        if (arrayMap != null) {
            return (UriPermission) arrayMap.get(grantUri);
        }
        return null;
    }

    public final void schedulePersistUriGrants() {
        if (this.mH.hasMessages(1)) {
            return;
        }
        H h = this.mH;
        h.sendMessageDelayed(h.obtainMessage(1), 10000L);
    }

    public final void enforceNotIsolatedCaller(String str) {
        if (UserHandle.isIsolated(Binder.getCallingUid())) {
            throw new SecurityException("Isolated process not allowed to call " + str);
        }
    }

    public final ProviderInfo getProviderInfo(String str, int i, int i2, int i3) {
        return this.mPmInternal.resolveContentProvider(str, i2 | IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES, i, i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x0135, code lost:
    
        if (r1 != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00e5, code lost:
    
        if (checkHoldingPermissionsUnlocked(r12, r19, r8, r20) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00e7, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0138, code lost:
    
        r1 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int checkGrantUriPermissionUnlocked(int r17, java.lang.String r18, com.android.server.uri.GrantUri r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.uri.UriGrantsManagerService.checkGrantUriPermissionUnlocked(int, java.lang.String, com.android.server.uri.GrantUri, int, int):int");
    }

    public final int checkGrantUriPermissionUnlocked(int i, String str, Uri uri, int i2, int i3) {
        return checkGrantUriPermissionUnlocked(i, str, new GrantUri(i3, uri, i2), i2, -1);
    }

    public final boolean checkUriPermissionLocked(GrantUri grantUri, int i, int i2) {
        int i3 = (i2 & 64) != 0 ? 3 : 1;
        if (i == 0) {
            return true;
        }
        ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.get(i);
        if (arrayMap == null) {
            return false;
        }
        UriPermission uriPermission = (UriPermission) arrayMap.get(grantUri);
        if (uriPermission != null && uriPermission.getStrength(i2) >= i3) {
            return true;
        }
        int size = arrayMap.size();
        for (int i4 = 0; i4 < size; i4++) {
            UriPermission uriPermission2 = (UriPermission) arrayMap.valueAt(i4);
            GrantUri grantUri2 = uriPermission2.uri;
            if (grantUri2.prefix && grantUri.uri.isPathPrefixMatch(grantUri2.uri) && uriPermission2.getStrength(i2) >= i3) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.server.uri.UriMetricsHelper.PersistentUriGrantsProvider
    public ArrayList providePersistentUriGrants() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            int size = this.mGrantedUriPermissions.size();
            for (int i = 0; i < size; i++) {
                ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.valueAt(i);
                int size2 = arrayMap.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    UriPermission uriPermission = (UriPermission) arrayMap.valueAt(i2);
                    if (uriPermission.persistedModeFlags != 0) {
                        arrayList.add(uriPermission);
                    }
                }
            }
        }
        return arrayList;
    }

    public final void writeGrantedUriPermissions() {
        int i;
        FileOutputStream startWrite;
        long uptimeMillis = SystemClock.uptimeMillis();
        ArrayList newArrayList = Lists.newArrayList();
        synchronized (this.mLock) {
            int size = this.mGrantedUriPermissions.size();
            i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                ArrayMap arrayMap = (ArrayMap) this.mGrantedUriPermissions.valueAt(i2);
                int size2 = arrayMap.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    UriPermission uriPermission = (UriPermission) arrayMap.valueAt(i3);
                    if (uriPermission.persistedModeFlags != 0) {
                        i++;
                        newArrayList.add(uriPermission.snapshot());
                    }
                }
            }
        }
        FileOutputStream fileOutputStream = null;
        try {
            startWrite = this.mGrantFile.startWrite(uptimeMillis);
        } catch (IOException unused) {
        }
        try {
            TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(startWrite);
            resolveSerializer.startDocument((String) null, Boolean.TRUE);
            resolveSerializer.startTag((String) null, "uri-grants");
            Iterator it = newArrayList.iterator();
            while (it.hasNext()) {
                UriPermission.Snapshot snapshot = (UriPermission.Snapshot) it.next();
                resolveSerializer.startTag((String) null, "uri-grant");
                resolveSerializer.attributeInt((String) null, "sourceUserId", snapshot.uri.sourceUserId);
                resolveSerializer.attributeInt((String) null, "targetUserId", snapshot.targetUserId);
                resolveSerializer.attributeInterned((String) null, "sourcePkg", snapshot.sourcePkg);
                resolveSerializer.attributeInterned((String) null, "targetPkg", snapshot.targetPkg);
                resolveSerializer.attribute((String) null, "uri", String.valueOf(snapshot.uri.uri));
                XmlUtils.writeBooleanAttribute(resolveSerializer, "prefix", snapshot.uri.prefix);
                resolveSerializer.attributeInt((String) null, "modeFlags", snapshot.persistedModeFlags);
                resolveSerializer.attributeLong((String) null, "createdTime", snapshot.persistedCreateTime);
                resolveSerializer.endTag((String) null, "uri-grant");
            }
            resolveSerializer.endTag((String) null, "uri-grants");
            resolveSerializer.endDocument();
            this.mGrantFile.finishWrite(startWrite);
        } catch (IOException unused2) {
            fileOutputStream = startWrite;
            if (fileOutputStream != null) {
                this.mGrantFile.failWrite(fileOutputStream);
            }
            this.mMetricsHelper.reportPersistentUriFlushed(i);
        }
        this.mMetricsHelper.reportPersistentUriFlushed(i);
    }

    /* loaded from: classes3.dex */
    public final class H extends Handler {
        public H(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            UriGrantsManagerService.this.writeGrantedUriPermissions();
        }
    }

    /* loaded from: classes3.dex */
    public final class LocalService implements UriGrantsManagerInternal {
        public LocalService() {
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void removeUriPermissionIfNeeded(UriPermission uriPermission) {
            synchronized (UriGrantsManagerService.this.mLock) {
                UriGrantsManagerService.this.removeUriPermissionIfNeededLocked(uriPermission);
            }
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void revokeUriPermission(String str, int i, GrantUri grantUri, int i2) {
            UriGrantsManagerService.this.revokeUriPermission(str, i, grantUri, i2);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public boolean checkUriPermission(GrantUri grantUri, int i, int i2) {
            boolean checkUriPermissionLocked;
            synchronized (UriGrantsManagerService.this.mLock) {
                checkUriPermissionLocked = UriGrantsManagerService.this.checkUriPermissionLocked(grantUri, i, i2);
            }
            return checkUriPermissionLocked;
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public int checkGrantUriPermission(int i, String str, Uri uri, int i2, int i3) {
            UriGrantsManagerService.this.enforceNotIsolatedCaller("checkGrantUriPermission");
            return UriGrantsManagerService.this.checkGrantUriPermissionUnlocked(i, str, uri, i2, i3);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public NeededUriGrants checkGrantUriPermissionFromIntent(Intent intent, int i, String str, int i2) {
            return UriGrantsManagerService.this.checkGrantUriPermissionFromIntentUnlocked(i, str, intent, intent != null ? intent.getFlags() : 0, null, i2);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void grantUriPermissionUncheckedFromIntent(NeededUriGrants neededUriGrants, UriPermissionOwner uriPermissionOwner) {
            UriGrantsManagerService.this.grantUriPermissionUncheckedFromIntent(neededUriGrants, uriPermissionOwner);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void onSystemReady() {
            synchronized (UriGrantsManagerService.this.mLock) {
                UriGrantsManagerService.this.readGrantedUriPermissionsLocked();
            }
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public IBinder newUriPermissionOwner(String str) {
            UriGrantsManagerService.this.enforceNotIsolatedCaller("newUriPermissionOwner");
            return new UriPermissionOwner(this, str).getExternalToken();
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void removeUriPermissionsForPackage(String str, int i, boolean z, boolean z2) {
            synchronized (UriGrantsManagerService.this.mLock) {
                UriGrantsManagerService.this.removeUriPermissionsForPackageLocked(str, i, z, z2);
            }
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void revokeUriPermissionFromOwner(IBinder iBinder, Uri uri, int i, int i2) {
            revokeUriPermissionFromOwner(iBinder, uri, i, i2, null, -1);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void revokeUriPermissionFromOwner(IBinder iBinder, Uri uri, int i, int i2, String str, int i3) {
            UriPermissionOwner fromExternalToken = UriPermissionOwner.fromExternalToken(iBinder);
            if (fromExternalToken == null) {
                throw new IllegalArgumentException("Unknown owner: " + iBinder);
            }
            fromExternalToken.removeUriPermission(uri == null ? null : new GrantUri(i2, uri, i), i, str, i3);
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public boolean checkAuthorityGrants(int i, ProviderInfo providerInfo, int i2, boolean z) {
            boolean checkAuthorityGrantsLocked;
            synchronized (UriGrantsManagerService.this.mLock) {
                checkAuthorityGrantsLocked = UriGrantsManagerService.this.checkAuthorityGrantsLocked(i, providerInfo, i2, z);
            }
            return checkAuthorityGrantsLocked;
        }

        @Override // com.android.server.uri.UriGrantsManagerInternal
        public void dump(PrintWriter printWriter, boolean z, String str) {
            synchronized (UriGrantsManagerService.this.mLock) {
                int i = 0;
                if (UriGrantsManagerService.this.mGrantedUriPermissions.size() > 0) {
                    int packageUid = str != null ? UriGrantsManagerService.this.mPmInternal.getPackageUid(str, 4194304L, 0) : -2;
                    int i2 = 0;
                    boolean z2 = false;
                    boolean z3 = false;
                    while (i < UriGrantsManagerService.this.mGrantedUriPermissions.size()) {
                        int keyAt = UriGrantsManagerService.this.mGrantedUriPermissions.keyAt(i);
                        if (packageUid < -1 || UserHandle.getAppId(keyAt) == packageUid) {
                            ArrayMap arrayMap = (ArrayMap) UriGrantsManagerService.this.mGrantedUriPermissions.valueAt(i);
                            if (!z2) {
                                if (z3) {
                                    printWriter.println();
                                }
                                printWriter.println("  Granted Uri Permissions:");
                                z2 = true;
                                i2 = 1;
                                z3 = true;
                            }
                            printWriter.print("  * UID ");
                            printWriter.print(keyAt);
                            printWriter.println(" holds:");
                            for (UriPermission uriPermission : arrayMap.values()) {
                                printWriter.print("    ");
                                printWriter.println(uriPermission);
                                if (z) {
                                    uriPermission.dump(printWriter, "      ");
                                }
                            }
                        }
                        i++;
                    }
                    i = i2;
                }
                if (i == 0) {
                    printWriter.println("  (nothing)");
                }
            }
        }
    }
}
