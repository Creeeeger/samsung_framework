package com.samsung.android.localeoverlaymanager;

import android.app.LocaleManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.om.ISamsungOverlayCallback;
import android.content.om.OverlayInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.SemUserInfo;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Message;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.om.OverlayManagerService;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public class LocaleOverlayManager extends HandlerThread implements ExtractionCompleteCallback {
    public static final String TAG = LocaleOverlayManager.class.getSimpleName();
    public Context mContext;
    public OverlayChangeObserver mCurrentObserver;
    public Set mDeletedLocales;
    public OverlayHandler mHandler;
    public boolean mInProgress;
    public boolean mIsCleanupInProgress;
    public boolean mIsPackageUpdateTask;
    public Set mLocaleOverlayTargetApks;
    public OMSHelper mOverlayManager;
    public Set mReParseTargets;
    public int mRetryCount;
    public boolean mSendOverlayChangedBroadcast;
    public LocaleOverlayManagerWrapper mService;
    public int mToken;
    public String mUpdatedPackage;
    public Handler progressHandler;
    public Runnable progressResetRunnable;

    public LocaleOverlayManager(String str, LocaleOverlayManagerWrapper localeOverlayManagerWrapper) {
        super(str);
        this.mInProgress = false;
        this.progressResetRunnable = new Runnable() { // from class: com.samsung.android.localeoverlaymanager.LocaleOverlayManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LocaleOverlayManager.this.checkSanityAndCompleteTask();
            }
        };
        initOverlayManager();
        this.mService = localeOverlayManagerWrapper;
    }

    public final synchronized void initOverlayManager() {
        if (this.mOverlayManager == null) {
            this.mOverlayManager = new OMSHelper();
        }
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public void setObserver(OverlayChangeObserver overlayChangeObserver) {
        this.mCurrentObserver = overlayChangeObserver;
    }

    @Override // android.os.HandlerThread
    public void onLooperPrepared() {
        super.onLooperPrepared();
        this.mHandler = new OverlayHandler(getLooper());
        this.progressHandler = new Handler();
        Log.i(TAG, "Handler ready " + this.mHandler);
    }

    public void setPackageUpdateTask(boolean z) {
        this.mIsPackageUpdateTask = z;
    }

    public void setUpdatedPackage(String str) {
        this.mUpdatedPackage = str;
    }

    public void installLocalesForPackages(Set set) {
        installLocalesForPackages(set, null);
    }

    public void installLocalesForPackages(Set set, Set set2) {
        Log.i(TAG, "installLocalesForPackages() called with: packages = [" + set + "], processedLanguages = [" + set2 + "]");
        if (set != null) {
            if (set2 == null) {
                set2 = PreferenceUtils.getLocalesForAllUsers(this.mContext);
            }
            if (set2.isEmpty()) {
                handleTaskComplete();
                return;
            }
            ApkExtractionManager apkExtractionManager = ApkExtractionManager.getInstance();
            apkExtractionManager.setCallback(this);
            apkExtractionManager.extractLocaleApks(set, new HashSet(set2), this.mContext, true);
            Set set3 = this.mLocaleOverlayTargetApks;
            if (set3 == null || set3.isEmpty()) {
                return;
            }
            this.mLocaleOverlayTargetApks.addAll(set);
            return;
        }
        handleTaskComplete();
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    @Override // com.samsung.android.localeoverlaymanager.ExtractionCompleteCallback
    public void onExtractionComplete(Set set, boolean z) {
        LogWriter.logDebugInfoAndLogcat(TAG, "onExtractionComplete() called with: extractedLocales = [" + set + "], forceEnable = [" + z + "]");
        if (set == null || set.isEmpty()) {
            this.mSendOverlayChangedBroadcast = false;
            handleTaskComplete();
        } else {
            enableOverlays(new ArrayList(set), z);
        }
    }

    /* loaded from: classes2.dex */
    public class OverlayHandler extends Handler {
        public OverlayHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z;
            Log.i(LocaleOverlayManager.TAG, "handleMessage " + LocaleOverlayManager.this.mInProgress + " msg " + message);
            if (LocaleOverlayManager.this.mInProgress) {
                Message obtain = Message.obtain((Handler) null, message.what);
                obtain.obj = message.obj;
                obtain.setData(message.getData());
                sendMessageDelayed(obtain, 100L);
                return;
            }
            LocaleOverlayManager.this.mInProgress = true;
            LocaleOverlayManager.this.progressHandler.removeCallbacks(LocaleOverlayManager.this.progressResetRunnable);
            LocaleOverlayManager.this.progressHandler.postDelayed(LocaleOverlayManager.this.progressResetRunnable, 120000L);
            boolean z2 = false;
            switch (message.what) {
                case 1:
                    LocaleOverlayManager.this.mInProgress = false;
                    if (message.obj != null) {
                        handlePendingAction(message);
                        return;
                    }
                    return;
                case 2:
                    ArrayList<String> stringArrayList = message.getData().getStringArrayList("config_locale_list");
                    if (stringArrayList == null) {
                        Log.e(LocaleOverlayManager.TAG, "Locale list from config is null.");
                        LocaleOverlayManager.this.handleTaskComplete();
                        return;
                    }
                    Set localesForUser = PreferenceUtils.getLocalesForUser(Utils.getCurrentUserId());
                    Log.i(LocaleOverlayManager.TAG, "Locale list from config: " + stringArrayList + " old list: " + localesForUser);
                    HashSet hashSet = new HashSet(stringArrayList);
                    hashSet.removeAll(localesForUser);
                    Log.i(LocaleOverlayManager.TAG, "AddedLocales list from config - " + hashSet);
                    HashSet hashSet2 = new HashSet(localesForUser);
                    hashSet2.removeAll(stringArrayList);
                    Log.i(LocaleOverlayManager.TAG, "DeletedLocales list from config - " + hashSet2);
                    localesForUser.addAll(hashSet);
                    localesForUser.removeAll(hashSet2);
                    PreferenceUtils.setLocalesForUser(Utils.getCurrentUserId(), localesForUser);
                    if (hashSet2.isEmpty() && hashSet.isEmpty()) {
                        if (LocaleOverlayManager.this.ensureOverlaysEnabled(stringArrayList)) {
                            LocaleOverlayManager.this.handleTaskComplete();
                            return;
                        }
                        return;
                    } else {
                        PreferenceUtils.getPreferences(LocaleOverlayManager.this.mContext).edit().putBoolean("locale_in_progress", true).commit();
                        LocaleOverlayManager.this.installLocales(hashSet, hashSet2);
                        return;
                    }
                case 3:
                    Object obj = message.obj;
                    if (obj != null) {
                        Bundle bundle = (Bundle) obj;
                        LocaleOverlayManager.this.mToken = bundle.getInt(KnoxCustomManagerService.SPCM_KEY_TOKEN);
                        LocaleOverlayManager.this.mUpdatedPackage = bundle.getString("added_package");
                        Log.i(LocaleOverlayManager.TAG, "handleMessage: MESSAGE_PARSE_SINGLE_PACKAGE. PackageName = [" + LocaleOverlayManager.this.mUpdatedPackage + "]");
                        if (LocaleOverlayManager.this.mUpdatedPackage == null) {
                            LocaleOverlayManager.this.handleTaskComplete();
                            return;
                        }
                        PreferenceUtils.getPreferences(LocaleOverlayManager.this.mContext).edit().putString("app_in_progress", LocaleOverlayManager.this.mUpdatedPackage).commit();
                        LocaleOverlayManager.this.setPackageUpdateTask(true);
                        LocaleOverlayManager localeOverlayManager = LocaleOverlayManager.this;
                        if (localeOverlayManager.hasZippedOverlaysPackage(localeOverlayManager.mUpdatedPackage)) {
                            if (LocaleOverlayManager.this.mOverlayManager == null) {
                                LocaleOverlayManager.this.initOverlayManager();
                            }
                            if (LocaleOverlayManager.this.mOverlayManager != null) {
                                LocaleOverlayManager.this.mOverlayManager.updatePackageCache(LocaleOverlayManager.this.mUpdatedPackage, Utils.getCurrentUserId());
                            }
                            LocaleOverlayManager localeOverlayManager2 = LocaleOverlayManager.this;
                            localeOverlayManager2.installLocalesForPackages(Collections.singleton(localeOverlayManager2.mUpdatedPackage));
                            return;
                        }
                        Log.i(LocaleOverlayManager.TAG, "Package is not supported for Locale Overlays: " + LocaleOverlayManager.this.mUpdatedPackage);
                        LocaleOverlayManager localeOverlayManager3 = LocaleOverlayManager.this;
                        localeOverlayManager3.cleanLocaleOverlayForDisable(localeOverlayManager3.mUpdatedPackage);
                        return;
                    }
                    return;
                case 4:
                    Object obj2 = message.obj;
                    if (obj2 != null) {
                        Bundle bundle2 = (Bundle) obj2;
                        z2 = bundle2.getBoolean("safeMode");
                        z = bundle2.getBoolean("startCleanUpOverlay");
                    } else {
                        z = false;
                    }
                    init(z2, z);
                    return;
                case 5:
                    LocaleOverlayManager.this.handleTaskComplete();
                    return;
                case 6:
                    ArrayList arrayList = new ArrayList(Utils.getSystemLocales());
                    Log.i(LocaleOverlayManager.TAG, "handleMessage: MESSAGE_JOB_ENSUREOVERLAYS. Current locales = " + arrayList);
                    if (LocaleOverlayManager.this.ensureOverlaysEnabled(arrayList)) {
                        LocaleOverlayManager.this.handleTaskComplete();
                        return;
                    }
                    return;
                case 7:
                    Object obj3 = message.obj;
                    if (obj3 != null) {
                        Bundle bundle3 = (Bundle) obj3;
                        ArrayList<String> stringArrayList2 = bundle3.getStringArrayList("config_locale_list");
                        String string = bundle3.getString("perAppPackageName");
                        if (stringArrayList2 == null || string == null) {
                            Log.e(LocaleOverlayManager.TAG, "MESSAGE_PERAPP_SUPPORT: Ignored message. currentLocales = " + stringArrayList2 + ", packageName = " + string);
                            LocaleOverlayManager.this.handleTaskComplete();
                            return;
                        }
                        HashSet hashSet3 = new HashSet(stringArrayList2);
                        if (LocaleOverlayManager.this.hasZippedOverlaysPackage(string)) {
                            LocaleOverlayManager.this.installLocalesForPackages(Collections.singleton(string), hashSet3);
                            return;
                        }
                        Log.i(LocaleOverlayManager.TAG, "Package is not supported for Locale Overlays: " + string);
                        LocaleOverlayManager.this.cleanLocaleOverlayForDisable(string);
                        return;
                    }
                    return;
                default:
                    LocaleOverlayManager.this.mInProgress = false;
                    Log.i(LocaleOverlayManager.TAG, "handleMessage: Message not known - " + message);
                    return;
            }
        }

        public final void init(boolean z, boolean z2) {
            boolean updateOverlays;
            Log.i(LocaleOverlayManager.TAG, "init() called");
            LocaleOverlayManager.this.parseTargetApks();
            OnBootInitializer onBootInitializer = new OnBootInitializer(LocaleOverlayManager.this);
            LocaleOverlayManager.this.mIsCleanupInProgress = true;
            if (z2) {
                onBootInitializer.cleanupOverlayDir(LocaleOverlayManager.this.mContext);
                updateOverlays = false;
            } else {
                LocaleOverlayManager.this.progressHandler.removeCallbacks(LocaleOverlayManager.this.progressResetRunnable);
                LocaleOverlayManager.this.progressHandler.postDelayed(LocaleOverlayManager.this.progressResetRunnable, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
                updateOverlays = onBootInitializer.updateOverlays(LocaleOverlayManager.this.mLocaleOverlayTargetApks, LocaleOverlayManager.this.mContext, z);
                LocaleOverlayManager.this.cleanLocaleOverlayForDisable(null);
            }
            LocaleOverlayManager.this.mIsCleanupInProgress = false;
            if (updateOverlays) {
                return;
            }
            LocaleOverlayManager.this.handleTaskComplete();
        }

        public boolean hasAnyMessageOrCallbacks() {
            return hasMessages(1) || hasMessages(2) || hasMessages(7) || hasMessages(3) || hasMessages(4) || hasMessages(5) || hasMessages(6);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x008a, code lost:
        
            if (r0.equals("com.samsung.android.localeoverlaymanager.action.JOB_SCHEDULED") == false) goto L8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void handlePendingAction(android.os.Message r9) {
            /*
                r8 = this;
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager r0 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.this
                r1 = 0
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager.m14460$$Nest$fputmRetryCount(r0, r1)
                java.lang.Object r9 = r9.obj
                android.os.Bundle r9 = (android.os.Bundle) r9
                java.lang.String r0 = "pending_action"
                java.lang.String r0 = r9.getString(r0)
                java.lang.String r2 = "userId"
                int r2 = r9.getInt(r2, r1)
                com.samsung.android.localeoverlaymanager.Utils.setCurrentUserId(r2)
                java.lang.String r2 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.m14469$$Nest$sfgetTAG()
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                java.lang.String r4 = "MESSAGE_PENDING_ACTION --"
                r3.append(r4)
                r3.append(r0)
                java.lang.String r3 = r3.toString()
                com.samsung.android.localeoverlaymanager.LogWriter.logDebugInfoAndLogcat(r2, r3)
                if (r0 != 0) goto L3f
                java.lang.String r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.m14469$$Nest$sfgetTAG()
                java.lang.String r9 = "handlePendingAction: Pending action is null"
                android.util.Log.e(r8, r9)
                return
            L3f:
                int r2 = r0.hashCode()
                r3 = 5
                r4 = 4
                r5 = 3
                r6 = 2
                r7 = -1
                switch(r2) {
                    case -1704170454: goto L84;
                    case -1060850397: goto L79;
                    case -803721550: goto L6e;
                    case -19011148: goto L63;
                    case 85817670: goto L58;
                    case 2141912828: goto L4d;
                    default: goto L4b;
                }
            L4b:
                r1 = r7
                goto L8d
            L4d:
                java.lang.String r1 = "com.samsung.android.localeoverlaymanager.action.SETUP_COMPLETE"
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L56
                goto L4b
            L56:
                r1 = r3
                goto L8d
            L58:
                java.lang.String r1 = "com.samsung.android.localeoverlaymanager.action.PACKAGE_ADDED"
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L61
                goto L4b
            L61:
                r1 = r4
                goto L8d
            L63:
                java.lang.String r1 = "android.intent.action.LOCALE_CHANGED"
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L6c
                goto L4b
            L6c:
                r1 = r5
                goto L8d
            L6e:
                java.lang.String r1 = "com.samsung.android.localeoverlaymanager.action.MSG_HANDLE_PER_APP_LOCALE"
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L77
                goto L4b
            L77:
                r1 = r6
                goto L8d
            L79:
                java.lang.String r1 = "init_on_boot"
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L82
                goto L4b
            L82:
                r1 = 1
                goto L8d
            L84:
                java.lang.String r2 = "com.samsung.android.localeoverlaymanager.action.JOB_SCHEDULED"
                boolean r0 = r0.equals(r2)
                if (r0 != 0) goto L8d
                goto L4b
            L8d:
                r0 = 0
                switch(r1) {
                    case 0: goto Ld8;
                    case 1: goto Lca;
                    case 2: goto Lbb;
                    case 3: goto Laa;
                    case 4: goto L9c;
                    case 5: goto L92;
                    default: goto L91;
                }
            L91:
                goto Le2
            L92:
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.this
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager$OverlayHandler r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.m14451$$Nest$fgetmHandler(r8)
                r8.sendEmptyMessage(r3)
                goto Le2
            L9c:
                android.os.Message r9 = android.os.Message.obtain(r0, r5, r9)
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.this
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager$OverlayHandler r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.m14451$$Nest$fgetmHandler(r8)
                r8.sendMessage(r9)
                goto Le2
            Laa:
                android.os.Message r0 = android.os.Message.obtain(r0, r6)
                r0.setData(r9)
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.this
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager$OverlayHandler r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.m14451$$Nest$fgetmHandler(r8)
                r8.sendMessage(r0)
                goto Le2
            Lbb:
                r1 = 7
                android.os.Message r9 = android.os.Message.obtain(r0, r1, r9)
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.this
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager$OverlayHandler r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.m14451$$Nest$fgetmHandler(r8)
                r8.sendMessage(r9)
                goto Le2
            Lca:
                android.os.Message r9 = android.os.Message.obtain(r0, r4, r9)
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.this
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager$OverlayHandler r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.m14451$$Nest$fgetmHandler(r8)
                r8.sendMessage(r9)
                goto Le2
            Ld8:
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.this
                com.samsung.android.localeoverlaymanager.LocaleOverlayManager$OverlayHandler r8 = com.samsung.android.localeoverlaymanager.LocaleOverlayManager.m14451$$Nest$fgetmHandler(r8)
                r9 = 6
                r8.sendEmptyMessage(r9)
            Le2:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.localeoverlaymanager.LocaleOverlayManager.OverlayHandler.handlePendingAction(android.os.Message):void");
        }
    }

    public boolean ensureOverlaysEnabled(ArrayList arrayList) {
        Map localeOverlaysMap;
        String str;
        if (this.mOverlayManager == null) {
            initOverlayManager();
        }
        if (this.mOverlayManager == null) {
            Log.e(TAG, "ensureOverlaysEnabled() called. mOverlayManager is null!");
            return true;
        }
        HashSet<String> hashSet = new HashSet();
        if (this.mIsPackageUpdateTask && this.mUpdatedPackage != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                hashSet.add(this.mUpdatedPackage + "." + ((String) it.next()));
            }
            List localeOverlayInfosForTarget = this.mOverlayManager.getLocaleOverlayInfosForTarget(this.mUpdatedPackage);
            localeOverlaysMap = new HashMap();
            localeOverlaysMap.put(this.mUpdatedPackage, localeOverlayInfosForTarget);
        } else {
            Set set = this.mLocaleOverlayTargetApks;
            if (set == null || set.isEmpty()) {
                parseTargetApks();
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                Iterator it3 = this.mLocaleOverlayTargetApks.iterator();
                while (it3.hasNext()) {
                    hashSet.add(((String) it3.next()) + "." + str2);
                }
            }
            localeOverlaysMap = this.mOverlayManager.getLocaleOverlaysMap(Utils.getCurrentUserId());
        }
        Log.i(TAG, "ensureOverlaysEnabled: overlayList - " + localeOverlaysMap);
        for (Map.Entry entry : localeOverlaysMap.entrySet()) {
            try {
                str = this.mContext.createPackageContext((String) entry.getKey(), 0).getPackageResourcePath();
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(TAG, "ensureOverlaysEnabled - NameNotFoundException: " + e.getMessage());
                str = null;
            }
            for (OverlayInfo overlayInfo : (List) entry.getValue()) {
                String targetPath = this.mOverlayManager.getTargetPath(overlayInfo.baseCodePath);
                if ((targetPath != null && targetPath.equals(str)) && overlayInfo.isEnabled()) {
                    hashSet.remove(overlayInfo.packageName);
                }
            }
        }
        Log.i(TAG, "ensureOverlaysEnabled: toAddPackageList = [" + hashSet + "], observer = [" + this.mCurrentObserver + "]");
        if (hashSet.isEmpty()) {
            return true;
        }
        this.mReParseTargets = new HashSet();
        this.mSendOverlayChangedBroadcast = true;
        HashSet hashSet2 = new HashSet();
        for (String str3 : hashSet) {
            this.mReParseTargets.add(str3.substring(0, str3.lastIndexOf(46)));
            hashSet2.add(str3.substring(str3.lastIndexOf(46) + 1));
        }
        Log.i(TAG, "ensureOverlaysEnabled: mReParseTargets = [" + this.mReParseTargets + "], reParseLocales = [" + hashSet2 + "]");
        ApkExtractionManager apkExtractionManager = ApkExtractionManager.getInstance();
        apkExtractionManager.setCallback(this);
        apkExtractionManager.extractLocaleApks(this.mReParseTargets, hashSet2, this.mContext, true);
        return false;
    }

    public final boolean hasZippedOverlaysPackage(String str) {
        Bundle bundle;
        boolean z = false;
        try {
            ApplicationInfo applicationInfo = this.mContext.getPackageManager().getApplicationInfo(str, 128);
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                if (bundle.getBoolean("com.samsung.android.hasZippedOverlays")) {
                    z = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.i(TAG, "hasZippedOverlaysPackage PackageManager.NameNotFoundException: " + e.getMessage());
        }
        Log.i(TAG, "hasZippedOverlaysPackage: " + str + " -- " + z);
        return z;
    }

    public final void cleanLocaleOverlayForDisable(String str) {
        List list;
        if (this.mOverlayManager == null) {
            initOverlayManager();
        }
        Log.i(TAG, "cleanLocaleOverlayForDisable: " + this.mOverlayManager + ", packageName : " + str);
        if (this.mOverlayManager != null) {
            if (TextUtils.isEmpty(str)) {
                list = this.mOverlayManager.getDisabledOverlaysPackages(this.mLocaleOverlayTargetApks, this.mContext);
            } else {
                List localeOverlayInfosForTarget = this.mOverlayManager.getLocaleOverlayInfosForTarget(str);
                ArrayList arrayList = new ArrayList();
                Iterator it = localeOverlayInfosForTarget.iterator();
                while (it.hasNext()) {
                    arrayList.add(((OverlayInfo) it.next()).packageName);
                }
                list = arrayList;
            }
            String str2 = TAG;
            Log.i(str2, "cleanLocaleOverlayForDisable() overlayPackages:" + list);
            if (list == null || list.isEmpty()) {
                if (str != null) {
                    handleTaskComplete();
                    return;
                }
                return;
            } else {
                this.mOverlayManager.applySamsungConfigChangeOverlays(list, null, 0, null);
                Utils.deleteDisabledLocaleOverlays(list);
                Log.i(str2, "cleanLocaleOverlayForDisable done for --" + list.size());
            }
        }
        if (str != null) {
            handleTaskComplete();
        }
    }

    public void installLocales(Set set, Set set2) {
        boolean z;
        String str = TAG;
        Log.i(str, "installLocales() called with: addedLocales = [" + set + "], deletedLocales = [" + set2 + "]");
        Set set3 = this.mLocaleOverlayTargetApks;
        if (set3 == null || set3.isEmpty()) {
            parseTargetApks();
        }
        if (this.mLocaleOverlayTargetApks.isEmpty()) {
            Log.e(str, "installLocales: No Locale Target apks");
            handleTaskComplete();
            return;
        }
        if (set == null || set.isEmpty()) {
            z = true;
        } else {
            ApkExtractionManager apkExtractionManager = ApkExtractionManager.getInstance();
            apkExtractionManager.setCallback(this);
            apkExtractionManager.extractLocaleApks(this.mLocaleOverlayTargetApks, set, this.mContext);
            z = false;
        }
        if (set2 == null || set2.isEmpty()) {
            return;
        }
        this.mDeletedLocales = new HashSet(set2);
        disableLocales(set2, z);
    }

    public final void disableLocales(final Set set, boolean z) {
        if (this.mOverlayManager == null) {
            initOverlayManager();
        }
        final LocaleManager localeManager = (LocaleManager) this.mContext.getSystemService(LocaleManager.class);
        final ArrayList arrayList = new ArrayList();
        OMSHelper oMSHelper = this.mOverlayManager;
        if (oMSHelper != null) {
            oMSHelper.getLocaleOverlaysForUser(Utils.getCurrentUserId()).forEach(new Consumer() { // from class: com.samsung.android.localeoverlaymanager.LocaleOverlayManager$$ExternalSyntheticLambda2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    LocaleOverlayManager.lambda$disableLocales$0(localeManager, set, arrayList, (OverlayInfo) obj);
                }
            });
        }
        Log.i(TAG, "Disable locales  -> " + set + " packages -> " + arrayList + " OM -> " + this.mOverlayManager);
        ApplyObserver applyObserver = z ? new ApplyObserver(arrayList) : null;
        if (this.mOverlayManager != null && !arrayList.isEmpty()) {
            this.mOverlayManager.applySamsungConfigChangeOverlays(arrayList, null, Utils.getCurrentUserId(), applyObserver);
        } else if (z) {
            handleTaskComplete();
        }
    }

    public static /* synthetic */ void lambda$disableLocales$0(LocaleManager localeManager, Set set, List list, OverlayInfo overlayInfo) {
        if (new File(overlayInfo.baseCodePath).exists() && overlayInfo.isEnabled()) {
            String str = overlayInfo.packageName;
            String substring = str.substring(str.lastIndexOf(46) + 1);
            LocaleList applicationLocales = localeManager.getApplicationLocales(overlayInfo.targetPackageName);
            if (!set.contains(substring) || overlayInfo.packageName.startsWith("com.android.systemui") || Utils.getLocalesListAsSet(applicationLocales).contains(substring)) {
                return;
            }
            list.add(overlayInfo.packageName);
        }
    }

    public void disableUnRequiredLocaleOverlays(Set set) {
        Log.i(TAG, "disableUnRequiredLocaleOverlays() called");
        if (this.mOverlayManager == null) {
            initOverlayManager();
        }
        if (this.mOverlayManager != null) {
            Iterator it = ((UserManager) this.mContext.getSystemService("user")).semGetUsers().iterator();
            while (it.hasNext()) {
                int semGetIdentifier = ((SemUserInfo) it.next()).getUserHandle().semGetIdentifier();
                List unReqLocaleOverlaysForUser = this.mOverlayManager.getUnReqLocaleOverlaysForUser(semGetIdentifier, set);
                if (unReqLocaleOverlaysForUser != null && !unReqLocaleOverlaysForUser.isEmpty()) {
                    this.mOverlayManager.applySamsungConfigChangeOverlays(unReqLocaleOverlaysForUser, null, semGetIdentifier, null);
                }
            }
        }
    }

    public final void parseTargetApks() {
        this.mLocaleOverlayTargetApks = new HashSet();
        for (ApplicationInfo applicationInfo : this.mContext.getPackageManager().getInstalledApplicationsAsUser(128, Utils.getCurrentUserId())) {
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null && bundle.getBoolean("com.samsung.android.hasZippedOverlays")) {
                this.mLocaleOverlayTargetApks.add(applicationInfo.packageName);
            }
        }
    }

    public final void checkSanityAndCompleteTask() {
        int i = this.mRetryCount + 1;
        this.mRetryCount = i;
        if (i > 5) {
            LogWriter.logDebugInfoAndLogcat(TAG, "checkSanityAndCompleteTask: Max retries done!");
            handleTaskComplete();
            return;
        }
        ArrayList arrayList = new ArrayList(Utils.getSystemLocales());
        Set set = this.mDeletedLocales;
        if (set != null && !set.isEmpty()) {
            arrayList.removeAll(this.mDeletedLocales);
            this.mDeletedLocales = null;
        }
        if (ensureOverlaysEnabled(arrayList)) {
            Log.d(TAG, "checkSanityAndCompleteTask: Task completed successfully!.");
            handleTaskComplete();
        } else {
            Log.e(TAG, "checkSanityAndCompleteTask: Task did not complete successfully. Retry!");
        }
    }

    public final void handleTaskComplete() {
        String str = TAG;
        LogWriter.logDebugInfoAndLogcat(str, "handleTaskComplete -- callers: " + Debug.getCallers(2));
        Utils.setCurrentUserId(0);
        this.mRetryCount = 0;
        this.mService.setRequestInProgress(false);
        this.progressHandler.removeCallbacks(this.progressResetRunnable);
        SharedPreferences preferences = PreferenceUtils.getPreferences(this.mContext);
        OverlayHandler overlayHandler = this.mHandler;
        if (overlayHandler != null) {
            if (!overlayHandler.hasMessages(2) || !this.mHandler.hasMessages(7)) {
                preferences.edit().putBoolean("locale_in_progress", false).commit();
            }
            if (!this.mHandler.hasMessages(3)) {
                preferences.edit().putString("app_in_progress", "None").commit();
            }
        }
        if (this.mSendOverlayChangedBroadcast) {
            OverlayManagerService.broadcastActionOverlayChangedPublic(this.mReParseTargets, Utils.getCurrentUserId());
            this.mReParseTargets = null;
            this.mSendOverlayChangedBroadcast = false;
        }
        Log.i(str, "callbackObserver. mCurrentObserver: " + this.mCurrentObserver);
        OverlayChangeObserver overlayChangeObserver = this.mCurrentObserver;
        if (overlayChangeObserver != null) {
            overlayChangeObserver.onChangeCompleted(true, this.mToken);
        }
        this.mCurrentObserver = null;
        this.mInProgress = false;
        setPackageUpdateTask(false);
        setUpdatedPackage(null);
        LogWriter.syncLogFile();
        OverlayHandler overlayHandler2 = this.mHandler;
        if (overlayHandler2 == null || overlayHandler2.hasAnyMessageOrCallbacks()) {
            return;
        }
        this.mService.waitAndQuit();
    }

    public boolean isInProgress() {
        return this.mInProgress;
    }

    public boolean isCleanupInProgress() {
        return this.mIsCleanupInProgress;
    }

    public final void enableOverlays(List list, boolean z) {
        enableOverlays(list, z, Utils.getCurrentUserId());
    }

    public final void enableOverlays(List list, boolean z, int i) {
        if (this.mOverlayManager == null) {
            initOverlayManager();
        }
        String str = TAG;
        Log.i(str, "enableOverlays() called with: enableLocalePackages" + list + ", OverlayManger = [" + this.mOverlayManager + "]");
        OMSHelper oMSHelper = this.mOverlayManager;
        if (oMSHelper != null) {
            if (!this.mIsPackageUpdateTask && !z) {
                List localeOverlaysForUser = oMSHelper.getLocaleOverlaysForUser(i);
                final ArrayList arrayList = new ArrayList();
                localeOverlaysForUser.forEach(new Consumer() { // from class: com.samsung.android.localeoverlaymanager.LocaleOverlayManager$$ExternalSyntheticLambda1
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        LocaleOverlayManager.lambda$enableOverlays$1(arrayList, (OverlayInfo) obj);
                    }
                });
                list.removeAll(arrayList);
                Log.i(str, "enableOverlays(): Skipping = [" + arrayList + "], enabling = [" + list + "]");
            }
            if (list.isEmpty()) {
                handleTaskComplete();
                return;
            }
            LogWriter.logDebugInfoAndLogcat(str, "enableOverlays() called. enableLocalePackages = " + list);
            this.mOverlayManager.applySamsungConfigChangeOverlays(new ArrayList(), list, i, new ApplyObserver(list));
        }
    }

    public static /* synthetic */ void lambda$enableOverlays$1(List list, OverlayInfo overlayInfo) {
        if (new File(overlayInfo.baseCodePath).exists() && overlayInfo.isEnabled()) {
            list.add(overlayInfo.packageName);
        }
    }

    @Override // android.os.HandlerThread
    public boolean quit() {
        String str = TAG;
        Log.i(str, "quit() called");
        ApkExtractionManager.getInstance().release();
        this.mCurrentObserver = null;
        OverlayHandler overlayHandler = this.mHandler;
        if (overlayHandler != null && overlayHandler.hasAnyMessageOrCallbacks()) {
            Log.i(str, "quit() called :Remove pending message or callback ");
            this.mHandler.removeCallbacksAndMessages(null);
        } else {
            Log.i(str, "quit() called no pending messages to remove ");
        }
        return super.quitSafely();
    }

    /* loaded from: classes2.dex */
    public class ApplyObserver extends ISamsungOverlayCallback.Stub {
        public List mObservingPackages = new ArrayList();

        public ApplyObserver(List list) {
            if (list == null || list.isEmpty()) {
                LocaleOverlayManager.this.handleTaskComplete();
            } else {
                this.mObservingPackages.addAll(list);
            }
        }

        public synchronized void onOverlayStateChanged(String str, String str2, int i) {
            LogWriter.logDebugInfoAndLogcat(LocaleOverlayManager.TAG, "onOverlayStateChanged() called with: packageName = [" + str2 + "], enabled = [" + i + "] path = " + str);
            if (str2 == null || "".equals(str2)) {
                str2 = str.replace("/data/overlays/current_locale_apks/files/", "").replace(".apk", "");
            }
            this.mObservingPackages.remove(str2);
            if (this.mObservingPackages.isEmpty()) {
                LogWriter.logDebugInfoAndLogcat(LocaleOverlayManager.TAG, "onOverlayStateChanged(): Trying to call checkSanityAndCompleteTask");
                LocaleOverlayManager.this.checkSanityAndCompleteTask();
            }
        }
    }
}
