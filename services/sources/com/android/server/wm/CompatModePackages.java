package com.android.server.wm;

import android.app.AppGlobals;
import android.app.GameManagerInternal;
import android.app.compat.CompatChanges;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.Xml;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.LocalServices;
import com.android.server.display.DisplayPowerController2;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public final class CompatModePackages {
    public final AtomicFile mFile;
    public GameManagerInternal mGameManager;
    public final CompatHandler mHandler;
    public final HashMap mPackages = new HashMap();
    public final ActivityTaskManagerService mService;

    /* loaded from: classes3.dex */
    public final class CompatHandler extends Handler {
        public CompatHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 300) {
                return;
            }
            CompatModePackages.this.saveCompatModes();
        }
    }

    public CompatModePackages(ActivityTaskManagerService activityTaskManagerService, File file, Handler handler) {
        String attributeValue;
        this.mService = activityTaskManagerService;
        AtomicFile atomicFile = new AtomicFile(new File(file, "packages-compat.xml"), "compat-mode");
        this.mFile = atomicFile;
        this.mHandler = new CompatHandler(handler.getLooper());
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    FileInputStream openRead = atomicFile.openRead();
                    try {
                        TypedXmlPullParser resolvePullParser = Xml.resolvePullParser(openRead);
                        int eventType = resolvePullParser.getEventType();
                        while (eventType != 2 && eventType != 1) {
                            eventType = resolvePullParser.next();
                        }
                        if (eventType == 1) {
                            if (openRead != null) {
                                try {
                                    openRead.close();
                                    return;
                                } catch (IOException unused) {
                                    return;
                                }
                            }
                            return;
                        }
                        if ("compat-packages".equals(resolvePullParser.getName())) {
                            int next = resolvePullParser.next();
                            do {
                                if (next == 2) {
                                    String name = resolvePullParser.getName();
                                    if (resolvePullParser.getDepth() == 2 && "pkg".equals(name) && (attributeValue = resolvePullParser.getAttributeValue((String) null, "name")) != null) {
                                        this.mPackages.put(attributeValue, Integer.valueOf(resolvePullParser.getAttributeInt((String) null, "mode", 0)));
                                    }
                                }
                                next = resolvePullParser.next();
                            } while (next != 1);
                        }
                        if (openRead != null) {
                            openRead.close();
                        }
                    } catch (IOException e) {
                        e = e;
                        fileInputStream = openRead;
                        if (fileInputStream != null) {
                            Slog.w("ActivityTaskManager", "Error reading compat-packages", e);
                        }
                        if (fileInputStream == null) {
                            return;
                        }
                        fileInputStream.close();
                    } catch (XmlPullParserException e2) {
                        e = e2;
                        fileInputStream = openRead;
                        Slog.w("ActivityTaskManager", "Error reading compat-packages", e);
                        if (fileInputStream == null) {
                            return;
                        }
                        fileInputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = openRead;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                } catch (XmlPullParserException e4) {
                    e = e4;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused3) {
        }
    }

    public HashMap getPackages() {
        return this.mPackages;
    }

    public final int getPackageFlags(String str) {
        Integer num = (Integer) this.mPackages.get(str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public void handlePackageDataClearedLocked(String str) {
        removePackage(str);
    }

    public void handlePackageUninstalledLocked(String str) {
        removePackage(str);
    }

    public final void removePackage(String str) {
        if (this.mPackages.containsKey(str)) {
            this.mPackages.remove(str);
            scheduleWrite();
        }
    }

    public void handlePackageAddedLocked(String str, boolean z) {
        ApplicationInfo applicationInfo;
        boolean z2 = false;
        try {
            applicationInfo = AppGlobals.getPackageManager().getApplicationInfo(str, 0L, 0);
        } catch (RemoteException unused) {
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            return;
        }
        CompatibilityInfo compatibilityInfoForPackageLocked = compatibilityInfoForPackageLocked(applicationInfo);
        if (!compatibilityInfoForPackageLocked.alwaysSupportsScreen() && !compatibilityInfoForPackageLocked.neverSupportsScreen()) {
            z2 = true;
        }
        if (z && !z2 && this.mPackages.containsKey(str)) {
            this.mPackages.remove(str);
            scheduleWrite();
        }
    }

    public final void scheduleWrite() {
        this.mHandler.removeMessages(300);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(300), 10000L);
    }

    public CompatibilityInfo compatibilityInfoForPackageLocked(ApplicationInfo applicationInfo) {
        boolean packageCompatModeEnabledLocked = getPackageCompatModeEnabledLocked(applicationInfo);
        float compatScale = getCompatScale(applicationInfo.packageName, applicationInfo.uid);
        Configuration globalConfiguration = this.mService.getGlobalConfiguration();
        return new CompatibilityInfo(applicationInfo, globalConfiguration.screenLayout, globalConfiguration.smallestScreenWidthDp, packageCompatModeEnabledLocked, compatScale);
    }

    public float getCompatScale(String str, int i) {
        UserHandle userHandleForUid = UserHandle.getUserHandleForUid(i);
        if (this.mGameManager == null) {
            this.mGameManager = (GameManagerInternal) LocalServices.getService(GameManagerInternal.class);
        }
        if (this.mGameManager != null) {
            float resolutionScalingFactor = this.mGameManager.getResolutionScalingFactor(str, userHandleForUid.getIdentifier());
            if (resolutionScalingFactor > DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
                return 1.0f / resolutionScalingFactor;
            }
        }
        boolean isChangeEnabled = CompatChanges.isChangeEnabled(168419799L, str, userHandleForUid);
        boolean isChangeEnabled2 = CompatChanges.isChangeEnabled(273564678L, str, userHandleForUid);
        if (isChangeEnabled || isChangeEnabled2) {
            float scalingFactor = getScalingFactor(str, userHandleForUid);
            if (scalingFactor != 1.0f) {
                return isChangeEnabled2 ? scalingFactor : 1.0f / scalingFactor;
            }
        }
        ActivityTaskManagerService activityTaskManagerService = this.mService;
        if (activityTaskManagerService.mHasLeanbackFeature) {
            Configuration globalConfiguration = activityTaskManagerService.getGlobalConfiguration();
            int i2 = (int) ((globalConfiguration.smallestScreenWidthDp * (globalConfiguration.densityDpi / 160.0f)) + 0.5f);
            if (i2 > 1080 && !CompatChanges.isChangeEnabled(157629738L, str, userHandleForUid)) {
                return i2 / 1080.0f;
            }
        }
        return 1.0f;
    }

    public static float getScalingFactor(String str, UserHandle userHandle) {
        if (CompatChanges.isChangeEnabled(182811243L, str, userHandle)) {
            return 0.9f;
        }
        if (CompatChanges.isChangeEnabled(189969734L, str, userHandle)) {
            return 0.85f;
        }
        if (CompatChanges.isChangeEnabled(176926753L, str, userHandle)) {
            return 0.8f;
        }
        if (CompatChanges.isChangeEnabled(189969779L, str, userHandle)) {
            return 0.75f;
        }
        if (CompatChanges.isChangeEnabled(176926829L, str, userHandle)) {
            return 0.7f;
        }
        if (CompatChanges.isChangeEnabled(189969744L, str, userHandle)) {
            return 0.65f;
        }
        if (CompatChanges.isChangeEnabled(176926771L, str, userHandle)) {
            return 0.6f;
        }
        if (CompatChanges.isChangeEnabled(189970036L, str, userHandle)) {
            return 0.55f;
        }
        if (CompatChanges.isChangeEnabled(176926741L, str, userHandle)) {
            return 0.5f;
        }
        if (CompatChanges.isChangeEnabled(189969782L, str, userHandle)) {
            return 0.45f;
        }
        if (CompatChanges.isChangeEnabled(189970038L, str, userHandle)) {
            return 0.4f;
        }
        if (CompatChanges.isChangeEnabled(189969749L, str, userHandle)) {
            return 0.35f;
        }
        return CompatChanges.isChangeEnabled(189970040L, str, userHandle) ? 0.3f : 1.0f;
    }

    public int computeCompatModeLocked(ApplicationInfo applicationInfo) {
        CompatibilityInfo compatibilityInfoForPackageLocked = compatibilityInfoForPackageLocked(applicationInfo);
        if (compatibilityInfoForPackageLocked.alwaysSupportsScreen()) {
            return -2;
        }
        if (compatibilityInfoForPackageLocked.neverSupportsScreen()) {
            return -1;
        }
        return getPackageCompatModeEnabledLocked(applicationInfo) ? 1 : 0;
    }

    public boolean getPackageAskCompatModeLocked(String str) {
        return (getPackageFlags(str) & 1) == 0;
    }

    public void setPackageAskCompatModeLocked(String str, boolean z) {
        setPackageFlagLocked(str, 1, z);
    }

    public final boolean getPackageCompatModeEnabledLocked(ApplicationInfo applicationInfo) {
        return (getPackageFlags(applicationInfo.packageName) & 2) != 0;
    }

    public final void setPackageFlagLocked(String str, int i, boolean z) {
        int packageFlags = getPackageFlags(str);
        int i2 = z ? (~i) & packageFlags : i | packageFlags;
        if (packageFlags != i2) {
            if (i2 != 0) {
                this.mPackages.put(str, Integer.valueOf(i2));
            } else {
                this.mPackages.remove(str);
            }
            scheduleWrite();
        }
    }

    public int getPackageScreenCompatModeLocked(String str) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = AppGlobals.getPackageManager().getApplicationInfo(str, 0L, 0);
        } catch (RemoteException unused) {
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            return -3;
        }
        return computeCompatModeLocked(applicationInfo);
    }

    public void setPackageScreenCompatModeLocked(String str, int i) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = AppGlobals.getPackageManager().getApplicationInfo(str, 0L, 0);
        } catch (RemoteException unused) {
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            Slog.w("ActivityTaskManager", "setPackageScreenCompatMode failed: unknown package " + str);
            return;
        }
        setPackageScreenCompatModeLocked(applicationInfo, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        if ((r1 & 2) == 0) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setPackageScreenCompatModeLocked(android.content.pm.ApplicationInfo r10, int r11) {
        /*
            r9 = this;
            java.lang.String r0 = r10.packageName
            int r1 = r9.getPackageFlags(r0)
            java.lang.String r2 = "ActivityTaskManager"
            r3 = 1
            r4 = 0
            if (r11 == 0) goto L31
            if (r11 == r3) goto L2f
            r5 = 2
            if (r11 == r5) goto L2b
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "Unknown screen compat mode req #"
            r9.append(r10)
            r9.append(r11)
            java.lang.String r10 = "; ignoring"
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            android.util.Slog.w(r2, r9)
            return
        L2b:
            r11 = r1 & 2
            if (r11 != 0) goto L31
        L2f:
            r11 = r3
            goto L32
        L31:
            r11 = r4
        L32:
            if (r11 == 0) goto L37
            r11 = r1 | 2
            goto L39
        L37:
            r11 = r1 & (-3)
        L39:
            android.content.res.CompatibilityInfo r5 = r9.compatibilityInfoForPackageLocked(r10)
            boolean r6 = r5.alwaysSupportsScreen()
            java.lang.String r7 = "Ignoring compat mode change of "
            if (r6 == 0) goto L5d
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r11.append(r7)
            r11.append(r0)
            java.lang.String r6 = "; compatibility never needed"
            r11.append(r6)
            java.lang.String r11 = r11.toString()
            android.util.Slog.w(r2, r11)
            r11 = r4
        L5d:
            boolean r5 = r5.neverSupportsScreen()
            if (r5 == 0) goto L7b
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r11.append(r7)
            r11.append(r0)
            java.lang.String r5 = "; compatibility always needed"
            r11.append(r5)
            java.lang.String r11 = r11.toString()
            android.util.Slog.w(r2, r11)
            r11 = r4
        L7b:
            if (r11 == r1) goto Lee
            if (r11 == 0) goto L89
            java.util.HashMap r1 = r9.mPackages
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            r1.put(r0, r11)
            goto L8e
        L89:
            java.util.HashMap r11 = r9.mPackages
            r11.remove(r0)
        L8e:
            android.content.res.CompatibilityInfo r10 = r9.compatibilityInfoForPackageLocked(r10)
            r9.scheduleWrite()
            com.android.server.wm.ActivityTaskManagerService r11 = r9.mService
            com.android.server.wm.Task r11 = r11.getTopDisplayFocusedRootTask()
            com.android.server.wm.ActivityRecord r1 = r11.restartPackage(r0)
            com.android.server.wm.ActivityTaskManagerService r9 = r9.mService
            com.android.server.wm.WindowProcessControllerMap r9 = r9.mProcessMap
            android.util.SparseArray r9 = r9.getPidMap()
            int r2 = r9.size()
            int r2 = r2 - r3
        Lac:
            if (r2 < 0) goto Le6
            java.lang.Object r3 = r9.valueAt(r2)
            com.android.server.wm.WindowProcessController r3 = (com.android.server.wm.WindowProcessController) r3
            boolean r5 = r3.containsPackage(r0)
            if (r5 != 0) goto Lbb
            goto Le3
        Lbb:
            boolean r5 = r3.hasThread()     // Catch: java.lang.Exception -> Le3
            if (r5 == 0) goto Le3
            boolean r5 = com.android.server.wm.ProtoLogCache.WM_DEBUG_CONFIGURATION_enabled     // Catch: java.lang.Exception -> Le3
            if (r5 == 0) goto Ldc
            java.lang.String r5 = r3.mName     // Catch: java.lang.Exception -> Le3
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Exception -> Le3
            java.lang.String r6 = java.lang.String.valueOf(r10)     // Catch: java.lang.Exception -> Le3
            com.android.internal.protolog.ProtoLogGroup r7 = com.android.internal.protolog.ProtoLogGroup.WM_DEBUG_CONFIGURATION     // Catch: java.lang.Exception -> Le3
            java.lang.Object[] r5 = new java.lang.Object[]{r5, r6}     // Catch: java.lang.Exception -> Le3
            r6 = 1337596507(0x4fba1a5b, float:6.2445788E9)
            r8 = 0
            com.android.internal.protolog.ProtoLogImpl.v(r7, r6, r4, r8, r5)     // Catch: java.lang.Exception -> Le3
        Ldc:
            android.app.IApplicationThread r3 = r3.getThread()     // Catch: java.lang.Exception -> Le3
            r3.updatePackageCompatibilityInfo(r0, r10)     // Catch: java.lang.Exception -> Le3
        Le3:
            int r2 = r2 + (-1)
            goto Lac
        Le6:
            if (r1 == 0) goto Lee
            r1.ensureActivityConfiguration(r4, r4)
            r11.ensureActivitiesVisible(r1, r4, r4)
        Lee:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.CompatModePackages.setPackageScreenCompatModeLocked(android.content.pm.ApplicationInfo, int):void");
    }

    public final void saveCompatModes() {
        HashMap hashMap;
        FileOutputStream fileOutputStream;
        IOException e;
        ApplicationInfo applicationInfo;
        WindowManagerGlobalLock windowManagerGlobalLock = this.mService.mGlobalLock;
        WindowManagerService.boostPriorityForLockedSection();
        synchronized (windowManagerGlobalLock) {
            try {
                hashMap = new HashMap(this.mPackages);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        try {
            fileOutputStream = this.mFile.startWrite();
            try {
                TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(fileOutputStream);
                resolveSerializer.startDocument((String) null, Boolean.TRUE);
                resolveSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                resolveSerializer.startTag((String) null, "compat-packages");
                IPackageManager packageManager = AppGlobals.getPackageManager();
                for (Map.Entry entry : hashMap.entrySet()) {
                    String str = (String) entry.getKey();
                    int intValue = ((Integer) entry.getValue()).intValue();
                    if (intValue != 0) {
                        try {
                            applicationInfo = packageManager.getApplicationInfo(str, 0L, 0);
                        } catch (RemoteException unused) {
                            applicationInfo = null;
                        }
                        if (applicationInfo != null) {
                            CompatibilityInfo compatibilityInfoForPackageLocked = compatibilityInfoForPackageLocked(applicationInfo);
                            if (!compatibilityInfoForPackageLocked.alwaysSupportsScreen() && !compatibilityInfoForPackageLocked.neverSupportsScreen()) {
                                resolveSerializer.startTag((String) null, "pkg");
                                resolveSerializer.attribute((String) null, "name", str);
                                resolveSerializer.attributeInt((String) null, "mode", intValue);
                                resolveSerializer.endTag((String) null, "pkg");
                            }
                        }
                    }
                }
                resolveSerializer.endTag((String) null, "compat-packages");
                resolveSerializer.endDocument();
                this.mFile.finishWrite(fileOutputStream);
            } catch (IOException e2) {
                e = e2;
                Slog.w("ActivityTaskManager", "Error writing compat packages", e);
                if (fileOutputStream != null) {
                    this.mFile.failWrite(fileOutputStream);
                }
            }
        } catch (IOException e3) {
            fileOutputStream = null;
            e = e3;
        }
    }
}
