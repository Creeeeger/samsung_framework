package com.android.systemui.qs;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SemSystemProperties;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierViewController$$ExternalSyntheticOutline0;
import com.android.systemui.BootAnimationFinishedCache;
import com.android.systemui.BootAnimationFinishedCacheImpl;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.Operator;
import com.android.systemui.Prefs;
import com.android.systemui.ProtoDumpable;
import com.android.systemui.R;
import com.android.systemui.ScRune;
import com.android.systemui.dump.nano.SystemUIProtoDump;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.indexsearch.Searchable;
import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorCallback;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.plugins.PluginManager;
import com.android.systemui.plugins.qs.QSFactory;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.qs.QSTileView;
import com.android.systemui.qs.QSBackupRestoreManager;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.external.CustomTile;
import com.android.systemui.qs.external.CustomTileStatePersister;
import com.android.systemui.qs.external.TileLifecycleManager;
import com.android.systemui.qs.external.TileLifecycleManager$$ExternalSyntheticLambda1;
import com.android.systemui.qs.external.TileServiceKey;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.nano.QsTileState;
import com.android.systemui.qs.pipeline.data.repository.CustomTileAddedRepository;
import com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor;
import com.android.systemui.settings.UserFileManager;
import com.android.systemui.settings.UserFileManagerImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.QsResetSettingsManager;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.systemui.util.settings.SecureSettings;
import com.android.systemui.util.settings.SecureSettingsImpl;
import com.samsung.android.feature.SemCarrierFeature;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.knox.SemPersonaManager;
import com.sec.ims.settings.ImsProfile;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSTileHost implements QSHost, TunerService.Tunable, PluginListener, ProtoDumpable, PanelInteractor, CustomTileAddedRepository {
    public static final boolean DEBUG = Log.isLoggable("QSTileHost", 3);
    public static final boolean LOGGING_DEBUG = Log.isLoggable("SA_QUICK_SETTINGS", 3);
    static final String TILES = "tiles_prefs";
    public SecAutoTileManager mAutoTiles;
    public String mBnRRemovedTileList;
    public String mBnRTileList;
    public String mBottomBarTileList;
    public String mBrightnessBarTileList;
    public final Optional mCentralSurfacesOptional;
    public HashMap mComponentNameTable;
    public final Context mContext;
    public int mCurrentUser;
    public final CustomTileStatePersister mCustomTileStatePersister;
    public final AnonymousClass2 mDemoResetSettingsApplier;
    public final SharedPreferences.Editor mEditor;
    public final FeatureFlags mFeatureFlags;
    public final Handler mHandler;
    public final ArrayList mHiddenTilesByKnoxInTopBottomBar;
    public boolean mIsQQSosUpdating;
    public boolean mIsRestoring;
    public List mKnoxBlockedQsTileList;
    public final AnonymousClass4 mKnoxStateCallback;
    public KnoxStateMonitor mKnoxStateMonitor;
    public List mKnoxUnavailableQsTileList;
    public final Executor mMainExecutor;
    public final PluginManager mPluginManager;
    public final SecQQSTileHost mQQSTileHost;
    public final QSLogger mQSLogger;
    public final SecQSTileInstanceManager mQSTileInstanceManager;
    public final ArrayList mQsFactories;
    public final AnonymousClass1 mResetSettingsApplier;
    public final SecQSPanelResourcePicker mResourcePicker;
    public ArrayList mSearchAllowTileList;
    public final ArrayList mSearchables;
    public final SecureSettings mSecureSettings;
    public final SecSubScreenQSTileHost mSubScreenTileHost;
    public boolean mTileIsRemovedByApi;
    public HashMap mTileNameTable;
    public final Object mTileUsingByBar;
    public final Object mTileUsingByPanel;
    public boolean mTilesListDirty;
    public final TilesMap mTilesMap;
    public String mTopBarTileList;
    public final TunerService mTunerService;
    public Context mUserContext;
    public final UserFileManager mUserFileManager;
    public final UserManager mUserManager;
    public final UserTracker mUserTracker;
    public int mSEPVersionOfBnRData = 0;
    public final LinkedHashMap mTiles = new LinkedHashMap();
    public final ArrayList mTileSpecs = new ArrayList();
    public final List mCallbacks = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.qs.QSTileHost$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 extends KnoxStateMonitorCallback {
        public AnonymousClass4() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
        @Override // com.android.systemui.knox.KnoxStateMonitorCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onUpdateQuickPanelButtons() {
            /*
                r7 = this;
                com.android.systemui.qs.QSTileHost r7 = com.android.systemui.qs.QSTileHost.this
                com.android.systemui.knox.KnoxStateMonitor r0 = r7.mKnoxStateMonitor
                com.android.systemui.knox.KnoxStateMonitorImpl r0 = (com.android.systemui.knox.KnoxStateMonitorImpl) r0
                com.android.systemui.knox.CustomSdkMonitor r0 = r0.mCustomSdkMonitor
                r1 = 0
                r2 = 1
                if (r0 == 0) goto L19
                int r0 = r0.mKnoxCustomQuickPanelButtons
                r3 = 4
                r0 = r0 & r3
                if (r0 == r3) goto L14
                r0 = r1
                goto L15
            L14:
                r0 = r2
            L15:
                if (r0 == 0) goto L19
                r0 = r2
                goto L1a
            L19:
                r0 = r1
            L1a:
                java.lang.String r3 = ","
                if (r0 != 0) goto L47
                java.lang.String r0 = r7.mBrightnessBarTileList
                boolean r0 = r0.isEmpty()
                if (r0 != 0) goto L6d
                java.lang.String r0 = r7.mBrightnessBarTileList
                java.lang.String r4 = ""
                r7.mBrightnessBarTileList = r4
                java.lang.String[] r0 = r0.split(r3)
                int r3 = r0.length
            L31:
                if (r1 >= r3) goto L43
                r4 = r0[r1]
                com.android.systemui.qs.QSTileHost$$ExternalSyntheticLambda4 r5 = new com.android.systemui.qs.QSTileHost$$ExternalSyntheticLambda4
                r6 = -1
                r5.<init>(r7, r4, r6, r2)
                java.util.concurrent.Executor r4 = r7.mMainExecutor
                r4.execute(r5)
                int r1 = r1 + 1
                goto L31
            L43:
                r7.refreshTileList()
                goto L6d
            L47:
                java.lang.String r0 = r7.mBrightnessBarTileList
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto L6d
                android.content.Context r0 = r7.mContext
                android.content.res.Resources r0 = r0.getResources()
                r2 = 2131955458(0x7f130f02, float:1.9547444E38)
                java.lang.String r0 = r0.getString(r2)
                r7.mBrightnessBarTileList = r0
                java.lang.String[] r0 = r0.split(r3)
                int r2 = r0.length
            L63:
                if (r1 >= r2) goto L6d
                r3 = r0[r1]
                r7.removeTile(r3)
                int r1 = r1 + 1
                goto L63
            L6d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.QSTileHost.AnonymousClass4.onUpdateQuickPanelButtons():void");
        }

        @Override // com.android.systemui.knox.KnoxStateMonitorCallback
        public final void onUpdateQuickPanelItems() {
            QSTileHost qSTileHost = QSTileHost.this;
            qSTileHost.mKnoxBlockedQsTileList = ((KnoxStateMonitorImpl) qSTileHost.mKnoxStateMonitor).getQuickPanelItems();
            Log.d("QSTileHost", "onUpdateQuickPanelItems : " + qSTileHost.mKnoxBlockedQsTileList);
            if (qSTileHost.mComponentNameTable == null) {
                qSTileHost.makeCustomTileComponentNameTable();
            }
            qSTileHost.updateHiddenBarTilesListByKnox();
            qSTileHost.refreshTileList();
        }

        @Override // com.android.systemui.knox.KnoxStateMonitorCallback
        public final void onUpdateQuickPanelUnavailableButtons() {
            QSTileHost qSTileHost = QSTileHost.this;
            qSTileHost.mKnoxUnavailableQsTileList = ((KnoxStateMonitorImpl) qSTileHost.mKnoxStateMonitor).getQuickPanelUnavailableButtons();
            Log.d("QSTileHost", "onUpdateQuickPanelItems : " + qSTileHost.mKnoxUnavailableQsTileList);
            if (qSTileHost.mComponentNameTable == null) {
                qSTileHost.makeCustomTileComponentNameTable();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TilesMap {
        public static final HashMap mTilesMap = new HashMap();
        public static TilesMap sInstance = null;
        public static final int SID_TILE_STATE = 1;

        public TilesMap(Context context) {
            Log.d("SystemUIAnalytics", "TilesMap");
            String[] stringArray = context.getResources().getStringArray(R.array.tile_ids);
            ArrayList arrayList = new ArrayList();
            for (String str : stringArray) {
                arrayList.add(str);
                if (arrayList.size() == 3) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add((String) arrayList.get(1));
                    arrayList2.add((String) arrayList.get(2));
                    mTilesMap.put((String) arrayList.get(0), arrayList2);
                    arrayList.clear();
                }
            }
        }

        public static String getId(int i, String str) {
            List list;
            if (SID_TILE_STATE < i || i < 0) {
                return null;
            }
            if (sInstance == null) {
                list = null;
            } else {
                list = (List) mTilesMap.get(str);
            }
            if (list == null) {
                return null;
            }
            return (String) list.get(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.android.systemui.qs.QSTileHost$1, com.android.systemui.util.QsResetSettingsManager$ResetSettingsApplier] */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.android.systemui.util.QsResetSettingsManager$DemoResetSettingsApplier, com.android.systemui.qs.QSTileHost$2] */
    public QSTileHost(Context context, QSFactory qSFactory, final Executor executor, PluginManager pluginManager, TunerService tunerService, final Provider provider, Optional<CentralSurfaces> optional, QSLogger qSLogger, UserTracker userTracker, SecureSettings secureSettings, CustomTileStatePersister customTileStatePersister, TileLifecycleManager.Factory factory, UserFileManager userFileManager, FeatureFlags featureFlags, BootAnimationFinishedCache bootAnimationFinishedCache) {
        ArrayList arrayList = new ArrayList();
        this.mQsFactories = arrayList;
        this.mHandler = new Handler();
        this.mSearchables = new ArrayList();
        this.mIsQQSosUpdating = false;
        this.mHiddenTilesByKnoxInTopBottomBar = new ArrayList();
        this.mTilesListDirty = true;
        this.mTileUsingByBar = new Object();
        this.mTileUsingByPanel = new Object();
        ?? r12 = new QsResetSettingsManager.ResetSettingsApplier() { // from class: com.android.systemui.qs.QSTileHost.1
            @Override // com.android.systemui.util.QsResetSettingsManager.ResetSettingsApplier
            public final void applyResetSetting() {
                QSTileHost qSTileHost = QSTileHost.this;
                qSTileHost.resetTileList();
                Settings.Global.putInt(qSTileHost.mContext.getContentResolver(), "swipe_directly_to_quick_setting", 0);
            }
        };
        this.mResetSettingsApplier = r12;
        ?? r13 = new QsResetSettingsManager.DemoResetSettingsApplier() { // from class: com.android.systemui.qs.QSTileHost.2
            @Override // com.android.systemui.util.QsResetSettingsManager.DemoResetSettingsApplier
            public final void applyDemoResetSetting() {
                Settings.Global.putInt(QSTileHost.this.mContext.getContentResolver(), "swipe_directly_to_quick_setting", 0);
            }
        };
        this.mDemoResetSettingsApplier = r13;
        this.mKnoxStateCallback = new AnonymousClass4();
        this.mContext = context;
        this.mUserContext = context;
        this.mTunerService = tunerService;
        this.mPluginManager = pluginManager;
        this.mQSLogger = qSLogger;
        this.mMainExecutor = executor;
        this.mUserFileManager = userFileManager;
        this.mFeatureFlags = featureFlags;
        this.mCentralSurfacesOptional = optional;
        arrayList.add(qSFactory);
        pluginManager.addPluginListener((PluginListener) this, QSFactory.class, true);
        this.mUserTracker = userTracker;
        this.mSecureSettings = secureSettings;
        this.mCustomTileStatePersister = customTileStatePersister;
        SecQSPanelResourcePicker secQSPanelResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
        this.mResourcePicker = secQSPanelResourcePicker;
        this.mUserManager = (UserManager) context.getSystemService("user");
        if (!Process.myUserHandle().equals(UserHandle.SYSTEM)) {
            Log.e("QSTileHost", "OPS not initialized for non-primary user, just return");
            return;
        }
        secQSPanelResourcePicker.getClass();
        this.mTopBarTileList = SecQSPanelResourcePicker.getTopBarTileList(context);
        this.mBrightnessBarTileList = context.getResources().getString(R.string.sec_brightness_bar_tiles_default);
        this.mBottomBarTileList = SecQSPanelResourcePicker.getBottomBarTileList(context);
        this.mQSTileInstanceManager = new SecQSTileInstanceManager(context, this, userTracker, qSLogger);
        this.mQQSTileHost = new SecQQSTileHost(context, this, userTracker, bootAnimationFinishedCache, qSLogger);
        if (ScRune.QUICK_MANAGE_SUBSCREEN_TILE_LIST) {
            this.mSubScreenTileHost = new SecSubScreenQSTileHost(context, this, userTracker, bootAnimationFinishedCache, qSLogger);
        }
        if (TilesMap.sInstance == null) {
            TilesMap.sInstance = new TilesMap(context);
        }
        this.mTilesMap = TilesMap.sInstance;
        this.mEditor = context.getSharedPreferences("quick_pref", 0).edit();
        ((BootAnimationFinishedCacheImpl) bootAnimationFinishedCache).addListener(new BootAnimationFinishedCache.BootAnimationFinishedListener() { // from class: com.android.systemui.qs.QSTileHost$$ExternalSyntheticLambda1
            @Override // com.android.systemui.BootAnimationFinishedCache.BootAnimationFinishedListener
            public final void onBootAnimationFinished() {
                QSTileHost qSTileHost = QSTileHost.this;
                qSTileHost.getClass();
                executor.execute(new QSTileHost$$ExternalSyntheticLambda7(qSTileHost, provider, 0));
            }
        });
        ((QsResetSettingsManager) Dependency.get(QsResetSettingsManager.class)).registerApplier(r12);
        ((QsResetSettingsManager) Dependency.get(QsResetSettingsManager.class)).registerDemoApplier(r13);
        ((QSBackupRestoreManager) Dependency.get(QSBackupRestoreManager.class)).addCallback("TileList", new QSBackupRestoreManager.Callback() { // from class: com.android.systemui.qs.QSTileHost.3
            @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
            public final boolean isValidDB() {
                return true;
            }

            @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
            public final String onBackup(boolean z) {
                String changeOldOSTileListToNewOsTileList;
                String str;
                boolean z2;
                StringBuilder sb = new StringBuilder("TAG::sep_version::");
                QSTileHost qSTileHost = QSTileHost.this;
                if (z) {
                    Context context2 = qSTileHost.mContext;
                    changeOldOSTileListToNewOsTileList = Settings.Secure.getString(context2.getContentResolver(), "sysui_qs_tiles");
                    if (changeOldOSTileListToNewOsTileList.isEmpty()) {
                        changeOldOSTileListToNewOsTileList = " ";
                    }
                    str = Settings.Secure.getString(context2.getContentResolver(), "sysui_removed_qs_tiles");
                    z2 = Prefs.getBoolean(context2, "QsHasEditedQuickTileList", false);
                } else {
                    changeOldOSTileListToNewOsTileList = qSTileHost.changeOldOSTileListToNewOsTileList(qSTileHost.getDefaultTileList());
                    str = "";
                    z2 = false;
                }
                sb.append(Build.VERSION.SEM_PLATFORM_INT);
                sb.append("::TAG::has_edited::");
                sb.append(z2);
                sb.append("::TAG::removed_tile_list::");
                sb.append(str);
                sb.append("::TAG::tile_list::");
                sb.append(changeOldOSTileListToNewOsTileList);
                StringBuilder sb2 = new StringBuilder("::TAG::qqs_has_edited::");
                Context context3 = qSTileHost.mQQSTileHost.mContext;
                String string = Settings.Secure.getString(context3.getContentResolver(), "sysui_quick_qs_tiles");
                sb2.append(Prefs.getBoolean(context3, "QQsHasEditedQuickTileList", false));
                sb2.append("::TAG::qqs_tile_list::");
                sb2.append(string);
                sb.append(sb2.toString());
                return sb.toString();
            }

            @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
            public final void onRestore(String str) {
                String str2;
                QSTileHost qSTileHost = QSTileHost.this;
                qSTileHost.getClass();
                String[] split = str.split("::");
                int i = 1;
                String str3 = "";
                if (split.length > 1) {
                    boolean equals = split[0].equals("tile_list");
                    Context context2 = qSTileHost.mContext;
                    if (equals) {
                        String str4 = split[1];
                        if (str4 == null) {
                            Log.w("QSTileHost", "restoredTileList is null");
                            return;
                        }
                        qSTileHost.mBnRTileList = str4;
                        String str5 = "";
                        for (String str6 : qSTileHost.changeOldOSTileListToNewOsTileList(str4).split(",")) {
                            if (str6.startsWith("custom(")) {
                                if (qSTileHost.isComponentAvailable(CustomTile.getComponentFromSpec(str6))) {
                                    str5 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str5, str6, ",");
                                }
                            } else {
                                str5 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str5, str6, ",");
                            }
                        }
                        String str7 = qSTileHost.mBnRRemovedTileList;
                        if (str7 != null && !str7.isEmpty() && !"null".equals(qSTileHost.mBnRRemovedTileList)) {
                            str3 = qSTileHost.changeOldOSTileListToNewOsTileList(qSTileHost.mBnRRemovedTileList);
                            str2 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str5, ",", str3);
                        } else {
                            str2 = str5;
                        }
                        String stringForUser = Settings.Secure.getStringForUser(context2.getContentResolver(), "sysui_qs_tiles", ActivityManager.getCurrentUser());
                        ArrayList arrayList2 = new ArrayList();
                        for (String str8 : stringForUser.split(",")) {
                            arrayList2.add(str8);
                        }
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            String str9 = (String) it.next();
                            if (!str2.contains(str9)) {
                                str5 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str5, str9, ",");
                            }
                        }
                        String stringForUser2 = Settings.Secure.getStringForUser(context2.getContentResolver(), "sysui_removed_qs_tiles", ActivityManager.getCurrentUser());
                        if (stringForUser2 != null) {
                            ArrayList arrayList3 = new ArrayList();
                            for (String str10 : stringForUser2.split(",")) {
                                if (!str10.trim().isEmpty()) {
                                    arrayList3.add(str10);
                                }
                            }
                            Iterator it2 = arrayList3.iterator();
                            while (it2.hasNext()) {
                                String str11 = (String) it2.next();
                                if (!str2.contains(str11)) {
                                    if (str3.isEmpty()) {
                                        str3 = str11;
                                    } else {
                                        str3 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str3, ",", str11);
                                    }
                                }
                            }
                        }
                        int i2 = qSTileHost.mSEPVersionOfBnRData;
                        if (i2 < Build.VERSION.SEM_PLATFORM_INT && i2 < 150000) {
                            qSTileHost.mMainExecutor.execute(new QSTileHost$$ExternalSyntheticLambda6(qSTileHost, str5, i));
                        }
                        qSTileHost.mSEPVersionOfBnRData = 0;
                        qSTileHost.mIsRestoring = true;
                        Log.d("QSTileHost", "bnrRemovedTileList  " + str3);
                        Log.d("QSTileHost", "bnrTileList  " + str5);
                        ContentResolver contentResolver = context2.getContentResolver();
                        UserTrackerImpl userTrackerImpl = (UserTrackerImpl) qSTileHost.mUserTracker;
                        Settings.Secure.putStringForUser(contentResolver, "sysui_removed_qs_tiles", str3, userTrackerImpl.getUserId());
                        Settings.Secure.putStringForUser(context2.getContentResolver(), "sysui_qs_tiles", str5, userTrackerImpl.getUserId());
                        return;
                    }
                    if (split[0].equals("removed_tile_list")) {
                        qSTileHost.mBnRRemovedTileList = split[1];
                        return;
                    }
                    boolean equals2 = split[0].equals("qqs_tile_list");
                    SecQQSTileHost secQQSTileHost = qSTileHost.mQQSTileHost;
                    if (equals2) {
                        secQQSTileHost.setRestoreData(split[0], split[1]);
                        return;
                    }
                    if (split[0].equals("sep_version")) {
                        String str12 = split[1];
                        MotionLayout$$ExternalSyntheticOutline0.m("setRestoreData : sepVersion = ", str12, "QSTileHost");
                        if (str12 != null) {
                            qSTileHost.mSEPVersionOfBnRData = Integer.valueOf(str12).intValue();
                            return;
                        }
                        return;
                    }
                    if (split[0].equals("has_edited")) {
                        boolean booleanValue = Boolean.valueOf(split[1]).booleanValue();
                        Log.d("QSTileHost", "setRestoreData : hasEdited = " + booleanValue);
                        Prefs.putBoolean(context2, "QsHasEditedQuickTileList", booleanValue);
                        return;
                    }
                    if (split[0].equals("qqs_has_edited")) {
                        secQQSTileHost.setRestoreData(split[0], split[1]);
                        return;
                    }
                    return;
                }
                if (split[0].equals("removed_tile_list")) {
                    qSTileHost.mBnRRemovedTileList = "";
                }
            }
        });
    }

    @Override // com.android.systemui.qs.QSHost
    public final void addCallback(QSHost.Callback callback) {
        this.mCallbacks.add(callback);
    }

    @Override // com.android.systemui.qs.QSHost
    public final void addTile(ComponentName componentName) {
        if (componentName != null) {
            Context context = this.mContext;
            List loadTileSpecs = loadTileSpecs(context, Settings.Secure.getStringForUser(context.getContentResolver(), "sysui_qs_tiles", ((UserTrackerImpl) this.mUserTracker).getUserId()));
            ArrayList arrayList = new ArrayList(loadTileSpecs);
            arrayList.add(0, CustomTile.toSpec(componentName));
            changeTilesByUser(loadTileSpecs, arrayList);
        }
    }

    public final String changeOldOSTileListToNewOsTileList(String str) {
        if (str == null) {
            return null;
        }
        String str2 = "";
        for (String str3 : str.split(",")) {
            String trim = str3.trim();
            if (!trim.isEmpty()) {
                str2 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str2, changeOldOSTileNameToNewName(trim), ",");
            }
        }
        return str2;
    }

    public final String changeOldOSTileNameToNewName(String str) {
        Locale locale = Locale.US;
        if ("WIFIHOTSPOT".equals(str.toUpperCase(locale))) {
            return "Hotspot";
        }
        if ("AUTOROTATE".equals(str.toUpperCase(locale))) {
            return "RotationLock";
        }
        if ("TORCHLIGHT".equals(str.toUpperCase(locale))) {
            return "Flashlight";
        }
        if (!"SILENTMODE".equals(str.toUpperCase(locale)) && !"SOUNDMODE".equals(str.toUpperCase(locale))) {
            if (!"DND".equals(str.toUpperCase(locale)) && !"DORMANTMODE".equals(str.toUpperCase(locale))) {
                if ("WORK".equals(str.toUpperCase(locale))) {
                    return "WorkMode";
                }
                if (!"NIGHTMODE".equals(str.toUpperCase(locale)) && !str.equals(getCustomTileSpecFromTileName("NightMode"))) {
                    if (str.contains("com.samsung.accessibility/.vision.viewclear.extradim.ReduceBrightnessTileService")) {
                        return "ReduceBrightColors";
                    }
                    if (str.contains("com.samsung.accessibility/.vision.viewclear.HighContrastFontTileService")) {
                        return "HighContrastFont";
                    }
                    if (str.contains("com.samsung.accessibility/.vision.viewclear.ColorInversionTileService")) {
                        return "ColorInversion";
                    }
                    if (str.contains("com.samsung.accessibility/.vision.color.ColorLensTileService")) {
                        return "ColorLens";
                    }
                    if (str.contains("com.samsung.accessibility/.vision.color.ColorAdjustmentTileService")) {
                        return "ColorAdjustment";
                    }
                    if (str.contains("com.samsung.accessibility/.vision.color.AccessibilityColorCorrectionTileService")) {
                        return "ColorCorrection";
                    }
                    if (str.contains("com.samsung.android.bixby.interpreter/.interpretation.view.InterpreterQuickTileService")) {
                        return "custom(com.samsung.android.app.interpreter/.interpretation.view.InterpreterQuickTileService)";
                    }
                    return str;
                }
                return "UiModeNight";
            }
            return "Dnd";
        }
        return "SoundMode";
    }

    public final void changeTileSpecs(Predicate predicate) {
        List loadTileSpecs;
        if (!this.mTilesListDirty) {
            loadTileSpecs = new ArrayList(this.mTileSpecs);
        } else {
            loadTileSpecs = loadTileSpecs(this.mContext, ((SecureSettingsImpl) this.mSecureSettings).getStringForUser(((UserTrackerImpl) this.mUserTracker).getUserId(), "sysui_qs_tiles"));
        }
        if (predicate.test(loadTileSpecs)) {
            this.mTilesListDirty = true;
            if (loadTileSpecs.isEmpty()) {
                loadTileSpecs.add("empty");
            }
            saveTilesToSettings(loadTileSpecs);
        }
    }

    @Override // com.android.systemui.qs.QSHost
    public final void changeTilesByUser(List list, List list2) {
        ArrayList arrayList = new ArrayList(list);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            String str = (String) arrayList.get(i);
            if (str.startsWith("custom(")) {
                if (this.mTileIsRemovedByApi && "WifiCalling".equals(getCustomTileNameFromSpec(str))) {
                    this.mTileIsRemovedByApi = false;
                } else if (!list2.contains(str)) {
                    QSTile requestTileUsing = this.mQSTileInstanceManager.requestTileUsing(this.mTileUsingByPanel, str);
                    if (requestTileUsing != null) {
                        TileLifecycleManager tileLifecycleManager = ((CustomTile) requestTileUsing).mServiceManager.mStateManager;
                        tileLifecycleManager.onStopListening();
                        tileLifecycleManager.onTileRemoved();
                        ((ExecutorImpl) tileLifecycleManager.mExecutor).execute(new TileLifecycleManager$$ExternalSyntheticLambda1(tileLifecycleManager, 2));
                        ComponentName componentFromSpec = CustomTile.getComponentFromSpec(str);
                        this.mCustomTileStatePersister.sharedPreferences.edit().remove(new TileServiceKey(componentFromSpec, this.mCurrentUser).string).apply();
                        setTileAdded(componentFromSpec, false, this.mCurrentUser);
                    }
                }
            }
        }
        if (list2.isEmpty()) {
            list2.add("empty");
        }
        if (DEBUG) {
            Log.d("QSTileHost", "saveCurrentTiles " + list2);
        }
        this.mTilesListDirty = true;
        saveTilesToSettings(list2);
    }

    @Override // com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor
    public final void collapsePanels() {
        this.mCentralSurfacesOptional.ifPresent(new QSTileHost$$ExternalSyntheticLambda0(1));
    }

    public final QSTile createTile(String str) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.mQsFactories;
            if (i < arrayList.size()) {
                QSTile createTile = ((QSFactory) arrayList.get(i)).createTile(str);
                if (createTile != null) {
                    return createTile;
                }
                i++;
            } else {
                return null;
            }
        }
    }

    @Override // com.android.systemui.qs.QSHost
    public final QSTileView createTileView(Context context, QSTile qSTile, boolean z) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.mQsFactories;
            if (i < arrayList.size()) {
                QSTileView createTileView = ((QSFactory) arrayList.get(i)).createTileView(context, qSTile, z);
                if (createTileView != null) {
                    return createTileView;
                }
                i++;
            } else {
                throw new RuntimeException("Default factory didn't create view for " + qSTile.getTileSpec());
            }
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(final PrintWriter printWriter, final String[] strArr) {
        printWriter.println("QSTileHost:");
        this.mTiles.values().stream().filter(new QSTileHost$$ExternalSyntheticLambda10(1)).forEach(new Consumer() { // from class: com.android.systemui.qs.QSTileHost$$ExternalSyntheticLambda11
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Dumpable) ((QSTile) obj)).dump(printWriter, strArr);
            }
        });
        if (this.mAutoTiles != null) {
            printWriter.println("  mRemovedTileListByAppIntent : " + this.mAutoTiles.mRemovedTileListByAppIntent);
        }
        printWriter.println("  mBnRTileList : " + this.mBnRTileList);
        printWriter.println("  mBnRRemovedTileList : " + this.mBnRRemovedTileList);
        printWriter.println("  mSearchables : ");
        Iterator it = this.mSearchables.iterator();
        while (it.hasNext()) {
            printWriter.print(((Searchable) it.next()).getSearchTitle() + ", ");
        }
        printWriter.println();
        if (ScRune.QUICK_MANAGE_SUBSCREEN_TILE_LIST) {
            SecSubScreenQSTileHost secSubScreenQSTileHost = this.mSubScreenTileHost;
            secSubScreenQSTileHost.getClass();
            printWriter.println("SecSubScreenQSTileHost:");
            secSubScreenQSTileHost.mTiles.values().stream().filter(new SecSubScreenQSTileHost$$ExternalSyntheticLambda4()).forEach(new Consumer() { // from class: com.android.systemui.qs.SecSubScreenQSTileHost$$ExternalSyntheticLambda5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((Dumpable) ((QSTile) obj)).dump(printWriter, strArr);
                }
            });
            printWriter.println("  mTileUsingBySubScreen : " + secSubScreenQSTileHost.mTileUsingBySubScreen);
        }
        SecQQSTileHost secQQSTileHost = this.mQQSTileHost;
        secQQSTileHost.getClass();
        printWriter.println("SecQQSTileHost:");
        KeyboardUI$$ExternalSyntheticOutline0.m(new StringBuilder("  mBnRQQSTileList : "), secQQSTileHost.mBnRQQSTileList, printWriter);
        secQQSTileHost.mTiles.values().stream().filter(new SecQQSTileHost$$ExternalSyntheticLambda4()).forEach(new Consumer() { // from class: com.android.systemui.qs.SecQQSTileHost$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Dumpable) ((QSTile) obj)).dump(printWriter, strArr);
            }
        });
        printWriter.println("  mTileUsingByQQS : " + secQQSTileHost.mTileUsingByQQS);
        printWriter.println("  mTileUsingByBar : " + this.mTileUsingByBar);
        printWriter.println("  mTileUsingByPanel : " + this.mTileUsingByPanel);
        SecQSTileInstanceManager secQSTileInstanceManager = this.mQSTileInstanceManager;
        secQSTileInstanceManager.getClass();
        printWriter.println("SecQSTileInstanceManager:");
        printWriter.println("  mTileInstances : " + secQSTileInstanceManager.mTileInstances);
        printWriter.println("  mTileUsingHosts : " + secQSTileInstanceManager.mTileUsingHosts);
    }

    @Override // com.android.systemui.ProtoDumpable
    public final void dumpProto(SystemUIProtoDump systemUIProtoDump) {
        final int i = 0;
        final int i2 = 1;
        systemUIProtoDump.tiles = (QsTileState[]) ((List) this.mTiles.values().stream().map(new Function() { // from class: com.android.systemui.qs.QSTileHost$$ExternalSyntheticLambda9
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i) {
                    case 0:
                        return ((QSTile) obj).getState();
                    default:
                        return TileStateToProtoKt.toProto((QSTile.State) obj);
                }
            }
        }).map(new Function() { // from class: com.android.systemui.qs.QSTileHost$$ExternalSyntheticLambda9
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i2) {
                    case 0:
                        return ((QSTile) obj).getState();
                    default:
                        return TileStateToProtoKt.toProto((QSTile.State) obj);
                }
            }
        }).filter(new QSTileHost$$ExternalSyntheticLambda10(0)).collect(Collectors.toList())).toArray(new QsTileState[0]);
    }

    @Override // com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor
    public final void forceCollapsePanels() {
        this.mCentralSurfacesOptional.ifPresent(new QSTileHost$$ExternalSyntheticLambda0(0));
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00e2  */
    @Override // com.android.systemui.qs.QSHost
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.ArrayList getBarTilesByType(int r18, android.content.Context r19) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.QSTileHost.getBarTilesByType(int, android.content.Context):java.util.ArrayList");
    }

    @Override // com.android.systemui.qs.QSHost
    public final Context getContext() {
        return this.mContext;
    }

    @Override // com.android.systemui.qs.QSHost
    public final String getCustomTileNameFromSpec(String str) {
        if (this.mTileNameTable == null) {
            makeCustomTileNameTable();
        }
        if (str.contains("com.sec.android.app.wfdbroker/.AllShareCastTile")) {
            return "AllShareCast";
        }
        String str2 = (String) this.mTileNameTable.get(CustomTile.getComponentFromSpec(str).flattenToShortString());
        if ("com.samsung.android.sm_cn".equals(Operator.smartManagerPackageName)) {
            if ("BatteryModeCHN".equals(str2)) {
                return "BatteryMode";
            }
            if ("PowerShareCHN".equals(str2)) {
                return "PowerShare";
            }
            return str2;
        }
        return str2;
    }

    public final String getCustomTileSpecFromTileName(String str) {
        if (this.mComponentNameTable == null) {
            makeCustomTileComponentNameTable();
        }
        if ("com.samsung.android.sm_cn".equals(Operator.smartManagerPackageName)) {
            if ("BatteryMode".equals(str)) {
                str = "BatteryModeCHN";
            } else if ("PowerShare".equals(str)) {
                str = "PowerShareCHN";
            }
        }
        String str2 = (String) this.mComponentNameTable.get(str);
        if (str2 != null) {
            return PathParser$$ExternalSyntheticOutline0.m("custom(", str2, ")");
        }
        return null;
    }

    public final String getDefaultTileList() {
        String supportedAllTileList = getSupportedAllTileList();
        ArrayList arrayList = new ArrayList();
        for (String str : supportedAllTileList.split(",")) {
            if (!isBarTile(str)) {
                arrayList.add(str);
            }
        }
        Log.d("QSTileHost", "getDefaultTileList result : " + arrayList);
        return TextUtils.join(",", arrayList);
    }

    @Override // com.android.systemui.qs.QSHost
    public final SecQQSTileHost getQQSTileHost() {
        return this.mQQSTileHost;
    }

    public final String getSupportedAllTileList() {
        String string;
        Resources resources = this.mContext.getResources();
        String string2 = resources.getString(R.string.sec_quick_settings_tiles_default);
        boolean z = Operator.QUICK_IS_VZW_BRANDING;
        if ("true".equals(SemSystemProperties.get("mdc.singlesku")) && "true".equals(SemSystemProperties.get("mdc.unified"))) {
            string = SemCarrierFeature.getInstance().getString(0, "CarrierFeature_SystemUI_ConfigDefQuickSettingItem", string2, false);
        } else {
            string = SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigDefQuickSettingItem", string2);
        }
        String changeOldOSTileListToNewOsTileList = changeOldOSTileListToNewOsTileList(string);
        String string3 = resources.getString(R.string.quick_settings_auto_adding_tiles);
        String string4 = SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigRemoveQuickSettingItem", "");
        ArrayList arrayList = new ArrayList();
        for (String str : string4.split(",")) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                arrayList.add(trim);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : changeOldOSTileListToNewOsTileList.split(",")) {
            String trim2 = str2.trim();
            if (!trim2.isEmpty() && !arrayList.contains(trim2)) {
                if ("Bluetooth".equals(trim2) && arrayList2.contains("SoundMode")) {
                    arrayList2.add(arrayList2.indexOf("SoundMode"), trim2);
                } else {
                    arrayList2.add(trim2);
                }
                if ("Dnd".equals(trim2) && DeviceType.isTablet()) {
                    for (String str3 : resources.getString(R.string.quick_settings_additional_default_tiles_tablet).split(",")) {
                        String trim3 = str3.trim();
                        if (!trim3.isEmpty() && !arrayList.contains(trim3)) {
                            arrayList2.add(trim3);
                        }
                    }
                }
            }
        }
        String[] split = string3.split(",");
        for (String str4 : split) {
            if (!str4.isEmpty()) {
                int indexOf = str4.indexOf(":");
                String substring = str4.substring(0, indexOf);
                int intValue = Integer.valueOf(str4.substring(indexOf + 1, str4.length())).intValue();
                if (!arrayList2.contains(substring) && !arrayList.contains(substring) && (!"CameraSharing".equals(substring) || DeviceType.isTablet())) {
                    if (intValue >= 0 && intValue <= arrayList2.size()) {
                        arrayList2.add(intValue, substring);
                    } else {
                        arrayList2.add(substring);
                    }
                    Log.d("QSTileHost", "getSupportedAllTileList : tileName = " + substring + ", tileIndex = " + intValue);
                }
            }
        }
        Log.d("QSTileHost", "getSupportedAllTileList result : " + arrayList2);
        return TextUtils.join(",", arrayList2);
    }

    @Override // com.android.systemui.qs.QSHost
    public final Collection getTiles() {
        return this.mTiles.values();
    }

    @Override // com.android.systemui.qs.QSHost
    public final Context getUserContext() {
        return this.mUserContext;
    }

    @Override // com.android.systemui.qs.QSHost
    public final int getUserId() {
        return this.mCurrentUser;
    }

    @Override // com.android.systemui.qs.QSHost
    public final int indexOf(String str) {
        return this.mTileSpecs.indexOf(str);
    }

    public final void initTunerServiceAndAutoTile(Provider provider) {
        this.mTunerService.addTunable(this, "sysui_qs_tiles");
        this.mAutoTiles = (SecAutoTileManager) provider.get();
        KnoxStateMonitor knoxStateMonitor = (KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class);
        this.mKnoxStateMonitor = knoxStateMonitor;
        AnonymousClass4 anonymousClass4 = this.mKnoxStateCallback;
        ((KnoxStateMonitorImpl) knoxStateMonitor).registerCallback(anonymousClass4);
        anonymousClass4.onUpdateQuickPanelButtons();
        this.mKnoxBlockedQsTileList = ((KnoxStateMonitorImpl) this.mKnoxStateMonitor).getQuickPanelItems();
        this.mKnoxUnavailableQsTileList = ((KnoxStateMonitorImpl) this.mKnoxStateMonitor).getQuickPanelUnavailableButtons();
        Log.d("QSTileHost", "QSTileHost : mKnoxBlockedQsTileList = " + this.mKnoxBlockedQsTileList + ", mKnoxUnavailableQsTileList = " + this.mKnoxUnavailableQsTileList);
        List list = this.mKnoxBlockedQsTileList;
        if (list != null && !list.isEmpty()) {
            if (this.mComponentNameTable == null) {
                makeCustomTileComponentNameTable();
            }
            updateHiddenBarTilesListByKnox();
            refreshTileList();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:165:? A[RETURN, SYNTHETIC] */
    @Override // com.android.systemui.qs.QSHost
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isAvailableCustomTile(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 776
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.QSTileHost.isAvailableCustomTile(java.lang.String):boolean");
    }

    @Override // com.android.systemui.qs.QSHost
    public final boolean isAvailableForSearch(String str, boolean z) {
        String str2;
        if (this.mSearchAllowTileList == null) {
            this.mSearchAllowTileList = new ArrayList();
            for (String str3 : this.mContext.getResources().getString(R.string.quick_settings_search_allow_list).split(",")) {
                String trim = str3.trim();
                if (!trim.isEmpty()) {
                    this.mSearchAllowTileList.add(trim);
                }
            }
        }
        ArrayList arrayList = this.mSearchAllowTileList;
        if (str.startsWith("custom(")) {
            str2 = getCustomTileNameFromSpec(str);
        } else {
            str2 = str;
        }
        if (!arrayList.contains(str2) || shouldBeHiddenByKnox(str)) {
            return false;
        }
        if (str.startsWith("custom(") && !isDefaultCustomTile(CustomTile.getComponentFromSpec(str)) && !z) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.qs.QSHost
    public final boolean isBarTile(String str) {
        if (str == null || (str.startsWith("custom(") && (str = getCustomTileNameFromSpec(str)) == null)) {
            return false;
        }
        if (!this.mTopBarTileList.contains(str) && !this.mBrightnessBarTileList.contains(str) && !this.mBottomBarTileList.contains(str)) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.qs.QSHost
    public final boolean isBrightnessBarTile(String str) {
        if (str.startsWith("custom(")) {
            str = getCustomTileNameFromSpec(str);
        }
        if (str != null && this.mBrightnessBarTileList.contains(str)) {
            return true;
        }
        return false;
    }

    public final boolean isComponentAvailable(ComponentName componentName) {
        try {
            ServiceInfo serviceInfo = this.mContext.getPackageManager().getServiceInfo(componentName, 0);
            if (DEBUG && serviceInfo == null) {
                Log.d("QSTileHost", "Can't find component " + componentName);
            }
            if (serviceInfo == null) {
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public final boolean isDefaultCustomTile(ComponentName componentName) {
        return this.mContext.getResources().getString(R.string.quick_settings_custom_tile_component_names).contains(componentName.flattenToShortString());
    }

    @Override // com.android.systemui.qs.QSHost
    public final boolean isLargeBarTile(String str) {
        if (str.startsWith("custom(")) {
            str = getCustomTileNameFromSpec(str);
        }
        if (str != null) {
            if (this.mTopBarTileList.contains(str) || this.mBottomBarTileList.contains(str)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean isPackageAvailable(String str) {
        try {
            this.mContext.getPackageManager().getPackageInfoAsUser(str, 0, ((UserTrackerImpl) this.mUserTracker).getUserId());
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            if (DEBUG) {
                Log.d("QSTileHost", "Package not available: " + str, e);
            } else {
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Package not available: ", str, "QSTileHost");
            }
            return false;
        }
    }

    public final boolean isRemovedTile(String str) {
        String stringForUser = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "sysui_removed_qs_tiles", ((UserTrackerImpl) this.mUserTracker).getUserId());
        if (stringForUser != null) {
            for (String str2 : stringForUser.split(",")) {
                if (str2.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean isSystemTile(String str) {
        String changeOldOSTileNameToNewName = changeOldOSTileNameToNewName(str);
        int i = 0;
        while (true) {
            ArrayList arrayList = this.mQsFactories;
            if (i >= arrayList.size()) {
                return false;
            }
            if (((QSFactory) arrayList.get(i)).isSystemTile(changeOldOSTileNameToNewName)) {
                return true;
            }
            i++;
        }
    }

    @Override // com.android.systemui.qs.pipeline.data.repository.CustomTileAddedRepository
    public final boolean isTileAdded(int i, ComponentName componentName) {
        return ((UserFileManagerImpl) this.mUserFileManager).getSharedPreferences(i, TILES).getBoolean(componentName.flattenToString(), false);
    }

    @Override // com.android.systemui.qs.QSHost
    public final boolean isUnsupportedTile(String str) {
        for (String str2 : this.mContext.getResources().getString(R.string.quick_settings_unsupported_tiles).split(",")) {
            if (str2.equals(str)) {
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("isUnsupportedTile ", str, "QSTileHost");
                return true;
            }
        }
        return false;
    }

    public final List loadTileSpecs(Context context, String str) {
        boolean z;
        boolean z2;
        boolean z3;
        SecAutoTileManager secAutoTileManager;
        boolean z4;
        context.getResources();
        Point point = DeviceState.sDisplaySize;
        String string = Prefs.getString(context, "FingerprintVersion", "unknown");
        String string2 = Prefs.getString(context, "CSCVersion", "unknown");
        String string3 = Prefs.getString(context, "SalesCode", "unknown");
        String str2 = SystemProperties.get("ro.build.fingerprint", "unknown");
        String str3 = SystemProperties.get("ril.official_cscver", "unknown");
        String str4 = SystemProperties.get("ro.csc.sales_code", "unknown");
        if (string.equals(str2) && string2.equals(str3) && string3.equals(str4)) {
            z = false;
        } else {
            Log.d("DeviceState", "isFotaUpdate!!");
            Prefs.putString(context, "FingerprintVersion", str2);
            Prefs.putString(context, "CSCVersion", str3);
            Prefs.putString(context, "SalesCode", str4);
            z = true;
        }
        boolean z5 = DEBUG;
        if (str != null && !TextUtils.isEmpty(str) && !z && !this.mIsRestoring) {
            if (z5) {
                Log.d("QSTileHost", "Loaded tile specs from setting: ".concat(str));
            }
            ArrayList arrayList = new ArrayList();
            ArraySet arraySet = new ArraySet();
            boolean z6 = false;
            for (String str5 : str.split(",")) {
                String trim = str5.trim();
                if (!trim.isEmpty() && !isBarTile(trim)) {
                    if (trim.equals("default")) {
                        if (!z6) {
                            Iterator it = ((ArrayList) QSHost.getDefaultSpecs(context.getResources())).iterator();
                            while (it.hasNext()) {
                                String str6 = (String) it.next();
                                if (!arraySet.contains(str6)) {
                                    arrayList.add(str6);
                                    arraySet.add(str6);
                                }
                            }
                            z6 = true;
                        }
                    } else if (!arraySet.contains(trim)) {
                        arrayList.add(trim);
                        arraySet.add(trim);
                    }
                }
            }
            if (!arrayList.contains(ImsProfile.PDN_INTERNET)) {
                if (arrayList.contains(ImsProfile.PDN_WIFI)) {
                    arrayList.set(arrayList.indexOf(ImsProfile.PDN_WIFI), ImsProfile.PDN_INTERNET);
                    arrayList.remove("cell");
                } else if (arrayList.contains("cell")) {
                    arrayList.set(arrayList.indexOf("cell"), ImsProfile.PDN_INTERNET);
                }
            } else {
                arrayList.remove(ImsProfile.PDN_WIFI);
                arrayList.remove("cell");
            }
            return arrayList;
        }
        if (!z && !this.mIsRestoring) {
            z2 = false;
        } else {
            z2 = true;
        }
        ArrayList arrayList2 = new ArrayList();
        String defaultTileList = getDefaultTileList();
        Context context2 = this.mContext;
        ContentResolver contentResolver = context2.getContentResolver();
        UserTrackerImpl userTrackerImpl = (UserTrackerImpl) this.mUserTracker;
        String stringForUser = Settings.Secure.getStringForUser(contentResolver, "sysui_removed_qs_tiles", userTrackerImpl.getUserId());
        String changeOldOSTileListToNewOsTileList = changeOldOSTileListToNewOsTileList(str);
        Settings.Secure.putStringForUser(context2.getContentResolver(), "sysui_removed_qs_tiles", changeOldOSTileListToNewOsTileList(stringForUser), userTrackerImpl.getUserId());
        if (z5) {
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Loaded tile specs from csc: ", defaultTileList, "QSTileHost");
        }
        if ("".equals(defaultTileList)) {
            arrayList2 = null;
        } else {
            if (z2) {
                if (changeOldOSTileListToNewOsTileList != null) {
                    ArrayList arrayList3 = new ArrayList();
                    makeCustomTileNameTable();
                    String[] split = changeOldOSTileListToNewOsTileList.split(",");
                    int length = split.length;
                    int i = 0;
                    while (i < length) {
                        String str7 = split[i];
                        String[] strArr = split;
                        if (str7.startsWith("custom(") && isDefaultCustomTile(CustomTile.getComponentFromSpec(str7))) {
                            str7 = getCustomTileNameFromSpec(str7);
                        }
                        if (str7 != null) {
                            arrayList3.add(str7);
                        }
                        i++;
                        split = strArr;
                    }
                    changeOldOSTileListToNewOsTileList = TextUtils.join(",", arrayList3);
                }
                Log.d("QSTileHost", "getRecalculatedTileListForFota ");
                if (changeOldOSTileListToNewOsTileList != null) {
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    String[] split2 = changeOldOSTileListToNewOsTileList.split(",");
                    int length2 = split2.length;
                    int i2 = 0;
                    while (i2 < length2) {
                        String[] strArr2 = split2;
                        String trim2 = split2[i2].trim();
                        if (!trim2.isEmpty() && !isUnsupportedTile(trim2) && !isBarTile(trim2)) {
                            arrayList4.add(trim2);
                        }
                        i2++;
                        split2 = strArr2;
                    }
                    Log.d("QSTileHost", "oldLists : " + arrayList4);
                    for (String str8 : defaultTileList.split(",")) {
                        String trim3 = str8.trim();
                        if (!trim3.isEmpty()) {
                            arrayList5.add(trim3);
                        }
                    }
                    Log.d("QSTileHost", "newLists : " + arrayList5);
                    for (int i3 = 0; i3 < arrayList5.size(); i3++) {
                        if (!arrayList4.contains(arrayList5.get(i3))) {
                            int indexOf = arrayList5.indexOf(arrayList5.get(i3));
                            if (arrayList4.size() < indexOf) {
                                arrayList4.add((String) arrayList5.get(i3));
                            } else {
                                arrayList4.add(indexOf, (String) arrayList5.get(i3));
                            }
                            StringBuilder sb = new StringBuilder();
                            sb.append(i3);
                            sb.append(" add : ");
                            ExifInterface$$ExternalSyntheticOutline0.m(sb, (String) arrayList5.get(i3), "QSTileHost");
                        }
                    }
                    defaultTileList = "";
                    for (int i4 = 0; i4 < arrayList4.size(); i4++) {
                        defaultTileList = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(ArrayLinkedVariables$$ExternalSyntheticOutline0.m(defaultTileList), (String) arrayList4.get(i4), ",");
                    }
                }
            }
            Log.d("QSTileHost", "loadTileSpecsFromCscFeature : loadedTileList = " + defaultTileList);
            makeCustomTileComponentNameTable();
            String[] split3 = defaultTileList.split(",");
            for (String str9 : split3) {
                if (!isBarTile(str9)) {
                    if (isSystemTile(str9)) {
                        if (!isRemovedTile(str9)) {
                            arrayList2.add(str9);
                        }
                    } else if (isAvailableCustomTile(str9)) {
                        String customTileSpecFromTileName = getCustomTileSpecFromTileName(str9);
                        if (customTileSpecFromTileName != null) {
                            if ((!SemPersonaManager.isDoEnabled(this.mCurrentUser) || isComponentAvailable(CustomTile.getComponentFromSpec(customTileSpecFromTileName))) && !isRemovedTile(customTileSpecFromTileName) && ((secAutoTileManager = this.mAutoTiles) == null || !secAutoTileManager.isRemovedTileByAppIntent(customTileSpecFromTileName))) {
                                arrayList2.add(customTileSpecFromTileName);
                            }
                        } else if (z2) {
                            if (str9.startsWith("custom(") && !isDefaultCustomTile(CustomTile.getComponentFromSpec(str9))) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                arrayList2.add(str9);
                            }
                        }
                    }
                }
            }
            Log.d("QSTileHost", "loadTileSpecsFromCscFeature : tiles = " + arrayList2);
            Settings.Secure.putStringForUser(context2.getContentResolver(), "sysui_qs_tiles", TextUtils.join(",", arrayList2), userTrackerImpl.getUserId());
        }
        this.mIsRestoring = false;
        if (z) {
            if (this.mIsQQSosUpdating) {
                z4 = Prefs.getBoolean(context2, "QsHasEditedQuickTileList", false);
            } else {
                z4 = Prefs.getBoolean(context2, "QQsHasEditedQuickTileList", false);
            }
            KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(new StringBuilder("isQQSosUpdating="), this.mIsQQSosUpdating, " hasEdited=", z4, "QSTileHost");
            boolean z7 = !z4;
            SecQQSTileHost secQQSTileHost = this.mQQSTileHost;
            secQQSTileHost.getClass();
            ArrayList arrayList6 = new ArrayList();
            Iterator it2 = secQQSTileHost.mTileSpecs.iterator();
            while (it2.hasNext()) {
                String str10 = (String) it2.next();
                QSTileHost qSTileHost = secQQSTileHost.mQSTileHost;
                if (qSTileHost.isSystemTile(str10)) {
                    if (z7 && "Bluetooth".equals(str10) && arrayList6.contains("SoundMode")) {
                        arrayList6.add(arrayList6.indexOf("SoundMode"), str10);
                    } else {
                        arrayList6.add(str10);
                    }
                } else if (str10.startsWith("custom(")) {
                    String customTileNameFromSpec = qSTileHost.getCustomTileNameFromSpec(str10);
                    if (customTileNameFromSpec != null) {
                        if (qSTileHost.isAvailableCustomTile(customTileNameFromSpec)) {
                            arrayList6.add(str10);
                        }
                    } else {
                        arrayList6.add(str10);
                    }
                }
            }
            secQQSTileHost.changeTiles(arrayList6);
            this.mIsQQSosUpdating = false;
        }
        return arrayList2;
    }

    public final void makeCustomTileComponentNameTable() {
        String string = this.mContext.getResources().getString(R.string.quick_settings_custom_tile_component_names);
        this.mComponentNameTable = new HashMap();
        for (String str : string.split(",")) {
            int indexOf = str.indexOf(":");
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(indexOf + 1, str.length());
            this.mComponentNameTable.put(substring, substring2);
            Log.d("QSTileHost", "make table : customTileName = " + substring + ", componentName = " + substring2);
        }
    }

    public final void makeCustomTileNameTable() {
        String string = this.mContext.getResources().getString(R.string.quick_settings_custom_tile_component_names);
        this.mTileNameTable = new HashMap();
        for (String str : string.split(",")) {
            int indexOf = str.indexOf(":");
            this.mTileNameTable.put(str.substring(indexOf + 1, str.length()), str.substring(0, indexOf));
        }
    }

    @Override // com.android.systemui.plugins.PluginListener
    public final void onPluginConnected(Plugin plugin, Context context) {
        this.mQsFactories.add(0, (QSFactory) plugin);
        String value = this.mTunerService.getValue("sysui_qs_tiles");
        onTuningChanged("sysui_qs_tiles", "");
        onTuningChanged("sysui_qs_tiles", value);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public final void onPluginDisconnected(Plugin plugin) {
        this.mQsFactories.remove((QSFactory) plugin);
        String value = this.mTunerService.getValue("sysui_qs_tiles");
        onTuningChanged("sysui_qs_tiles", "");
        onTuningChanged("sysui_qs_tiles", value);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:57|(2:59|(3:77|(6:79|(1:81)|82|(1:86)|87|88)(2:89|90)|71))(1:91)|(1:64)|65|66|67|(2:69|70)(1:72)|71|55) */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0244, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0245, code lost:
    
        android.util.Log.w("QSTileHost", "Error creating tile for spec: " + r15, r0);
     */
    @Override // com.android.systemui.tuner.TunerService.Tunable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onTuningChanged(java.lang.String r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 744
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.QSTileHost.onTuningChanged(java.lang.String, java.lang.String):void");
    }

    public final void refreshTileList() {
        Log.d("QSTileHost", "refreshTileList");
        if (this.mAutoTiles == null) {
            return;
        }
        Context context = this.mContext;
        ContentResolver contentResolver = context.getContentResolver();
        UserTracker userTracker = this.mUserTracker;
        List<String> loadTileSpecs = loadTileSpecs(context, Settings.Secure.getStringForUser(contentResolver, "sysui_qs_tiles", ((UserTrackerImpl) userTracker).getUserId()));
        int userId = ((UserTrackerImpl) userTracker).getUserId();
        LinkedHashMap linkedHashMap = this.mTiles;
        linkedHashMap.entrySet().stream().filter(new QSTileHost$$ExternalSyntheticLambda2(loadTileSpecs, 1)).forEach(new QSTileHost$$ExternalSyntheticLambda3(this, 1));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (String str : loadTileSpecs) {
            QSTile qSTile = (QSTile) linkedHashMap.get(str);
            boolean z = DEBUG;
            Object obj = this.mTileUsingByPanel;
            SecQSTileInstanceManager secQSTileInstanceManager = this.mQSTileInstanceManager;
            if (qSTile != null && (!(qSTile instanceof CustomTile) || ((CustomTile) qSTile).mUser == userId)) {
                if (qSTile.isAvailable()) {
                    if (z) {
                        Log.d("QSTileHost", "Adding " + qSTile);
                    }
                    qSTile.removeCallbacks();
                    linkedHashMap2.put(str, qSTile);
                } else {
                    secQSTileInstanceManager.releaseTileUsing(obj, qSTile.getTileSpec());
                }
            } else {
                if (z) {
                    MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Creating tile: ", str, "QSTileHost");
                }
                try {
                    QSTile requestTileUsing = secQSTileInstanceManager.requestTileUsing(obj, str);
                    if (requestTileUsing != null) {
                        requestTileUsing.setTileSpec(str);
                        if (requestTileUsing.isAvailable()) {
                            linkedHashMap2.put(str, requestTileUsing);
                        } else {
                            secQSTileInstanceManager.releaseTileUsing(obj, requestTileUsing.getTileSpec());
                        }
                    }
                } catch (Throwable th) {
                    Log.w("QSTileHost", "Error creating tile for spec: " + str, th);
                }
            }
        }
        ArrayList arrayList = this.mTileSpecs;
        arrayList.clear();
        arrayList.addAll(loadTileSpecs);
        linkedHashMap.clear();
        linkedHashMap.putAll(linkedHashMap2);
        this.mQQSTileHost.refreshTileList();
        int i = 0;
        while (true) {
            List list = this.mCallbacks;
            if (i < list.size()) {
                ((QSHost.Callback) list.get(i)).onTilesChanged();
                i++;
            } else {
                updateSearchableTiles();
                return;
            }
        }
    }

    @Override // com.android.systemui.qs.QSHost
    public final void removeCallback(QSHost.Callback callback) {
        ((ArrayList) this.mCallbacks).remove(callback);
    }

    @Override // com.android.systemui.qs.QSHost
    public final void removeTile(String str) {
        int i = 0;
        if (str.startsWith("custom(")) {
            setTileAdded(CustomTile.getComponentFromSpec(str), false, this.mCurrentUser);
        }
        this.mMainExecutor.execute(new QSTileHost$$ExternalSyntheticLambda6(this, str, i));
    }

    @Override // com.android.systemui.qs.QSHost
    public final void removeTileByUser(ComponentName componentName) {
        this.mMainExecutor.execute(new QSTileHost$$ExternalSyntheticLambda7(this, componentName, 2));
    }

    @Override // com.android.systemui.qs.QSHost
    public final void removeTiles(Collection collection) {
        this.mMainExecutor.execute(new QSTileHost$$ExternalSyntheticLambda7(this, collection, 1));
    }

    public final void resetTileList() {
        Context context = this.mContext;
        ContentResolver contentResolver = context.getContentResolver();
        UserTracker userTracker = this.mUserTracker;
        List loadTileSpecs = loadTileSpecs(context, Settings.Secure.getStringForUser(contentResolver, "sysui_qs_tiles", ((UserTrackerImpl) userTracker).getUserId()));
        Settings.Secure.putStringForUser(context.getContentResolver(), "sysui_removed_qs_tiles", "", ((UserTrackerImpl) userTracker).getUserId());
        changeTilesByUser(loadTileSpecs, loadTileSpecs(context, ""));
        SecQQSTileHost secQQSTileHost = this.mQQSTileHost;
        Settings.Secure.putStringForUser(secQQSTileHost.mContext.getContentResolver(), "sysui_quick_qs_tiles", "", ((UserTrackerImpl) secQQSTileHost.mUserTracker).getUserId());
        if (ScRune.QUICK_MANAGE_SUBSCREEN_TILE_LIST) {
            SecSubScreenQSTileHost secSubScreenQSTileHost = this.mSubScreenTileHost;
            Settings.Secure.putStringForUser(secSubScreenQSTileHost.mContext.getContentResolver(), "sysui_sub_qs_tiles", "", ((UserTrackerImpl) secSubScreenQSTileHost.mUserTracker).getUserId());
        }
    }

    public final void saveTilesToSettings(List list) {
        String join = TextUtils.join(",", list);
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        SecureSettingsImpl secureSettingsImpl = (SecureSettingsImpl) this.mSecureSettings;
        Settings.Secure.putStringForUser(secureSettingsImpl.mContentResolver, "sysui_qs_tiles", join, null, false, secureSettingsImpl.getRealUserHandle(userId), true);
    }

    @Override // com.android.systemui.qs.QSHost
    public final void sendTileStatusLog(int i, String str) {
        new Handler((Looper) Dependency.get(Dependency.BG_LOOPER)).post(new QSTileHost$$ExternalSyntheticLambda4(this, str, i, 0));
    }

    @Override // com.android.systemui.qs.pipeline.data.repository.CustomTileAddedRepository
    public final void setTileAdded(ComponentName componentName, boolean z, int i) {
        ((UserFileManagerImpl) this.mUserFileManager).getSharedPreferences(i, TILES).edit().putBoolean(componentName.flattenToString(), z).apply();
    }

    @Override // com.android.systemui.qs.QSHost
    public final boolean shouldBeHiddenByKnox(String str) {
        String changeOldOSTileNameToNewName;
        List<String> list = this.mKnoxBlockedQsTileList;
        if (list == null) {
            return false;
        }
        for (String str2 : list) {
            if (!isSystemTile(str2)) {
                changeOldOSTileNameToNewName = getCustomTileSpecFromTileName(str2);
            } else {
                changeOldOSTileNameToNewName = changeOldOSTileNameToNewName(str2);
            }
            if (changeOldOSTileNameToNewName != null && changeOldOSTileNameToNewName.equals(str)) {
                Log.d("QSTileHost", "shouldBeHiddenByKnox : tileName = ".concat(changeOldOSTileNameToNewName));
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.qs.QSHost
    public final boolean shouldUnavailableByKnox(String str) {
        String changeOldOSTileNameToNewName;
        List<String> list = this.mKnoxUnavailableQsTileList;
        if (list == null) {
            return false;
        }
        for (String str2 : list) {
            if (!isSystemTile(str2)) {
                changeOldOSTileNameToNewName = getCustomTileSpecFromTileName(str2);
            } else {
                changeOldOSTileNameToNewName = changeOldOSTileNameToNewName(str2);
            }
            if (changeOldOSTileNameToNewName != null && changeOldOSTileNameToNewName.equals(str)) {
                Log.d("QSTileHost", "shouldUnavailableByKnox : tileName = ".concat(changeOldOSTileNameToNewName));
                return true;
            }
        }
        return false;
    }

    public final void updateHiddenBarTilesListByKnox() {
        ArrayList arrayList = this.mHiddenTilesByKnoxInTopBottomBar;
        arrayList.clear();
        for (String str : this.mTopBarTileList.split(",")) {
            if (this.mKnoxBlockedQsTileList.contains(str)) {
                arrayList.add(str);
            }
        }
        for (String str2 : this.mBottomBarTileList.split(",")) {
            if (this.mKnoxBlockedQsTileList.contains(str2)) {
                arrayList.add(str2);
            }
        }
        for (String str3 : this.mBrightnessBarTileList.split(",")) {
            if (this.mKnoxBlockedQsTileList.contains(str3)) {
                arrayList.add(str3);
            }
        }
    }

    public final void updateSearchableTiles() {
        Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "sysui_removed_qs_tiles", ActivityManager.getCurrentUser());
        final ArrayList arrayList = new ArrayList(this.mTileSpecs);
        Handler handler = new Handler((Looper) Dependency.get(Dependency.BG_LOOPER));
        final Handler handler2 = new Handler((Looper) Dependency.get(Dependency.MAIN_LOOPER));
        final HashMap hashMap = new HashMap();
        handler.post(new Runnable() { // from class: com.android.systemui.qs.QSTileHost$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                Searchable searchable;
                QSTileHost qSTileHost = QSTileHost.this;
                List<String> list = arrayList;
                HashMap hashMap2 = hashMap;
                Handler handler3 = handler2;
                qSTileHost.getClass();
                for (String str : list) {
                    QSTile qSTile = (QSTile) qSTileHost.mTiles.get(str);
                    if (qSTile != null && (qSTile instanceof CustomTile)) {
                        z = ((CustomTile) qSTile).mIsSecCustomTile;
                    } else {
                        z = false;
                    }
                    if (qSTileHost.isAvailableForSearch(str, z) && (searchable = (Searchable) qSTile) != null && hashMap2.get(str) == null) {
                        hashMap2.put(str, searchable);
                    }
                }
                ArrayList arrayList2 = qSTileHost.mSearchables;
                arrayList2.clear();
                arrayList2.addAll(hashMap2.values());
                handler3.post(new QSTileHost$$ExternalSyntheticLambda5(qSTileHost, 1));
            }
        });
    }

    @Override // com.android.systemui.qs.QSHost
    public final void addTile(ComponentName componentName, boolean z) {
        this.mMainExecutor.execute(new QSTileHost$$ExternalSyntheticLambda4(this, CustomTile.toSpec(componentName), z ? -1 : 0, 1));
    }
}
