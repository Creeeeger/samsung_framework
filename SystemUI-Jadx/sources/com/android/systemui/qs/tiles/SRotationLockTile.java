package com.android.systemui.qs.tiles;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.hardware.SensorPrivacyManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardCarrierViewController$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.pluginlock.PluginLockMediator;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.QSBackupRestoreManager;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QSTileHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.SecQSSwitchPreference;
import com.android.systemui.qs.SettingObserver;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.statusbar.policy.BatteryController;
import com.android.systemui.statusbar.policy.BatteryControllerImpl;
import com.android.systemui.statusbar.policy.RotationLockController;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.QsResetSettingsManager;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.systemui.util.settings.SecureSettings;
import com.sec.ims.gls.GlsIntent;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SRotationLockTile extends SQSTileImpl implements BatteryController.BatteryStateChangeCallback, QsResetSettingsManager.DemoResetSettingsApplier {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final QSTileImpl.AnimationIcon mAutoToLandscape;
    public final QSTileImpl.AnimationIcon mAutoToPortrait;
    public final BatteryController mBatteryController;
    public final AnonymousClass4 mCallback;
    public final RotationLockController mController;
    public final RotationLockDetailAdapter mDetailAdapter;
    public final QSTileImpl.AnimationIcon mLandscapeToAuto;
    public final PluginLockMediator mPluginLockMediator;
    public final QSTileImpl.AnimationIcon mPortraitToAuto;
    public final SensorPrivacyManager mPrivacyManager;
    public final Resources mResources;
    public final SharedPreferences.Editor mRotationLockTilePrefEditor;
    public boolean mRotationLocked;
    public final SRotationLockTile$$ExternalSyntheticLambda0 mSensorPrivacyChangedListener;
    public final AnonymousClass2 mSetting;
    public final AnonymousClass1 mSettingsCallback;
    public final SettingsHelper mSettingsHelper;
    public final QSTile.BooleanState mStateBeforeClick;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RotationLockDetailAdapter implements DetailAdapter {
        public static final /* synthetic */ int $r8$clinit = 0;
        public View mButtonOnNavigationBarOption;
        public SwitchCompat mButtonOnNavigationBarSwitch;
        public TextView mButtonOnNavigationBarTitle;
        public SecQSSwitchPreference mCallScreenOption;
        public SecQSSwitchPreference mHomeScreenOption;
        public SecQSSwitchPreference mLockScreenOption;
        public SwitchCompat mLockSwitch;
        public TextView mLockTitle;

        public /* synthetic */ RotationLockDetailAdapter(SRotationLockTile sRotationLockTile, int i) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0111  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0130  */
        @Override // com.android.systemui.plugins.qs.DetailAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final android.view.View createDetailView(android.content.Context r17, android.view.View r18, android.view.ViewGroup r19) {
            /*
                Method dump skipped, instructions count: 579
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.SRotationLockTile.RotationLockDetailAdapter.createDetailView(android.content.Context, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final int getMetricsCategory() {
            return 123;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Intent getSettingsIntent() {
            return null;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final CharSequence getTitle() {
            int i = SRotationLockTile.$r8$clinit;
            return SRotationLockTile.this.mContext.getString(R.string.quick_settings_rotation_lock_auto_rotate);
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Boolean getToggleState() {
            int i = SRotationLockTile.$r8$clinit;
            return Boolean.valueOf(((QSTile.BooleanState) SRotationLockTile.this.mState).value);
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final void setToggleState(boolean z) {
            boolean isRotationLockTileBlocked = ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isRotationLockTileBlocked();
            SRotationLockTile sRotationLockTile = SRotationLockTile.this;
            if (isRotationLockTileBlocked) {
                int i = SRotationLockTile.$r8$clinit;
                sRotationLockTile.showItPolicyToast();
                return;
            }
            sRotationLockTile.fireToggleStateChanged(z);
            sRotationLockTile.mController.setRotationLocked(!z);
            SystemUIAnalytics.sendEventCDLog(SystemUIAnalytics.sCurrentScreenID, "QPDE1008", GlsIntent.Extras.EXTRA_LOCATION, "auto rotate");
            if (QpRune.QUICK_TILE_ROTATION_MANUAL) {
                updateButtonOnNavigationBarOption(!z);
            }
        }

        public final void updateButtonOnNavigationBarOption(boolean z) {
            if (this.mButtonOnNavigationBarOption != null && this.mButtonOnNavigationBarSwitch != null) {
                if (BasicRune.NAVBAR_ENABLED_HARD_KEY) {
                    NavBarStateManager navStateManager = ((NavBarStoreImpl) ((NavBarStore) Dependency.get(NavBarStore.class))).getNavStateManager(0);
                    if (!navStateManager.isGestureMode() && !navStateManager.isTaskBarEnabled(false)) {
                        z = false;
                    }
                }
                if (z) {
                    this.mButtonOnNavigationBarSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.systemui.qs.tiles.SRotationLockTile.RotationLockDetailAdapter.14
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                            Context context;
                            int i;
                            Settings.Global.putInt(SRotationLockTile.this.mSettingsHelper.mContext.getContentResolver(), "navigation_bar_rotate_suggestion_enabled", z2 ? 1 : 0);
                            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPDE1009");
                            SRotationLockTile.this.mRotationLockTilePrefEditor.putBoolean("QPDS1009", z2);
                            SRotationLockTile.this.mRotationLockTilePrefEditor.commit();
                            RotationLockDetailAdapter rotationLockDetailAdapter = RotationLockDetailAdapter.this;
                            SwitchCompat switchCompat = rotationLockDetailAdapter.mButtonOnNavigationBarSwitch;
                            SRotationLockTile sRotationLockTile = SRotationLockTile.this;
                            if (z2) {
                                context = sRotationLockTile.mContext;
                                i = R.string.switch_bar_on;
                            } else {
                                context = sRotationLockTile.mContext;
                                i = R.string.switch_bar_off;
                            }
                            switchCompat.announceForAccessibility(context.getString(i));
                        }
                    });
                    this.mButtonOnNavigationBarOption.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.tiles.SRotationLockTile.RotationLockDetailAdapter.15
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            RotationLockDetailAdapter.this.mButtonOnNavigationBarSwitch.setChecked(!r0.isChecked());
                        }
                    });
                    this.mButtonOnNavigationBarSwitch.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.tiles.SRotationLockTile.RotationLockDetailAdapter.16
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            RotationLockDetailAdapter.this.mButtonOnNavigationBarSwitch.setChecked(((SwitchCompat) view).isChecked());
                        }
                    });
                    this.mButtonOnNavigationBarOption.setClickable(true);
                    this.mButtonOnNavigationBarOption.findViewById(R.id.title).setAlpha(1.0f);
                } else {
                    this.mButtonOnNavigationBarSwitch.setOnCheckedChangeListener(null);
                    this.mButtonOnNavigationBarOption.setOnClickListener(null);
                    this.mButtonOnNavigationBarOption.setClickable(false);
                    this.mButtonOnNavigationBarOption.findViewById(R.id.title).setAlpha(0.4f);
                }
                this.mButtonOnNavigationBarSwitch.setEnabled(z);
            }
        }

        private RotationLockDetailAdapter() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.android.systemui.util.SettingsHelper$OnChangedCallback, com.android.systemui.qs.tiles.SRotationLockTile$1] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, com.android.systemui.qs.tiles.SRotationLockTile$4] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.qs.tiles.SRotationLockTile$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.systemui.qs.tiles.SRotationLockTile$2] */
    public SRotationLockTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, Resources resources, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, SettingsHelper settingsHelper, RotationLockController rotationLockController, SensorPrivacyManager sensorPrivacyManager, BatteryController batteryController, SecureSettings secureSettings, PluginLockMediator pluginLockMediator) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        QSTileImpl.ResourceIcon.get(android.R.drawable.item_background);
        this.mAutoToPortrait = new QSTileImpl.AnimationIcon(R.drawable.quick_panel_icon_rotation_lock_auto_to_portrait, R.drawable.quick_panel_icon_rotation_lock_auto_to_portrait_010);
        this.mPortraitToAuto = new QSTileImpl.AnimationIcon(R.drawable.quick_panel_icon_rotation_lock_portrait_to_auto, R.drawable.quick_panel_icon_rotation_lock_portrait_to_auto_010);
        this.mAutoToLandscape = new QSTileImpl.AnimationIcon(R.drawable.quick_panel_icon_rotation_lock_auto_to_landscape, R.drawable.quick_panel_icon_rotation_lock_auto_to_landscape_010);
        this.mLandscapeToAuto = new QSTileImpl.AnimationIcon(R.drawable.quick_panel_icon_rotation_lock_landscape_to_auto, R.drawable.quick_panel_icon_rotation_lock_landscape_to_auto_010);
        this.mStateBeforeClick = new QSTile.BooleanState();
        Uri[] uriArr = {Settings.System.getUriFor("accelerometer_rotation")};
        ?? r1 = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.qs.tiles.SRotationLockTile.1
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                if (uri != null && uri.equals(Settings.System.getUriFor("accelerometer_rotation"))) {
                    Log.d("SRotationLockTile", " OnChangedCallback : ");
                    SRotationLockTile.this.refreshState(null);
                }
            }
        };
        this.mSettingsCallback = r1;
        ?? r2 = new RotationLockController.RotationLockControllerCallback() { // from class: com.android.systemui.qs.tiles.SRotationLockTile.4
            @Override // com.android.systemui.statusbar.policy.RotationLockController.RotationLockControllerCallback
            public final void onRotationLockStateChanged(boolean z) {
                Boolean valueOf = Boolean.valueOf(z);
                int i = SRotationLockTile.$r8$clinit;
                SRotationLockTile.this.refreshState(valueOf);
            }
        };
        this.mCallback = r2;
        this.mSensorPrivacyChangedListener = new SensorPrivacyManager.OnSensorPrivacyChangedListener() { // from class: com.android.systemui.qs.tiles.SRotationLockTile$$ExternalSyntheticLambda0
            public final void onSensorPrivacyChanged(int i, boolean z) {
                SRotationLockTile.this.refreshState(null);
            }
        };
        this.mController = rotationLockController;
        rotationLockController.getClass();
        rotationLockController.observe(((QSTileImpl) this).mLifecycle, r2);
        this.mPrivacyManager = sensorPrivacyManager;
        this.mBatteryController = batteryController;
        this.mDetailAdapter = new RotationLockDetailAdapter(this, 0);
        this.mSettingsHelper = settingsHelper;
        this.mResources = resources;
        this.mSetting = new SettingObserver(secureSettings, ((SQSTileImpl) this).mHandler, "camera_autorotate", qSHost.getUserContext().getUserId()) { // from class: com.android.systemui.qs.tiles.SRotationLockTile.2
            @Override // com.android.systemui.qs.SettingObserver
            public final void handleValueChanged(int i, boolean z) {
                SRotationLockTile sRotationLockTile = SRotationLockTile.this;
                int i2 = SRotationLockTile.$r8$clinit;
                sRotationLockTile.handleRefreshState(null);
            }
        };
        batteryController.observe(((QSTileImpl) this).mLifecycle, this);
        this.mPluginLockMediator = pluginLockMediator;
        settingsHelper.registerCallback(r1, uriArr);
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("quick_pref", 0);
        if (sharedPreferences != null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            this.mRotationLockTilePrefEditor = edit;
            if (QpRune.QUICK_TILE_ROTATION_MANUAL) {
                edit.putBoolean("QPDS1009", settingsHelper.isNavigationBarRotateSuggestionEnabled());
            }
            edit.putBoolean("QPDS1010", settingsHelper.isHomeScreenRotationAllowed());
            edit.putBoolean("QPDS1011", settingsHelper.isLockScreenRotationAllowed());
            edit.putBoolean("QPDS1012", settingsHelper.isCallScreenRotationAllowed());
            edit.commit();
        }
        if (!QpRune.QUICK_TABLET) {
            ((QSBackupRestoreManager) Dependency.get(QSBackupRestoreManager.class)).addCallback("AutoRotate", new QSBackupRestoreManager.Callback() { // from class: com.android.systemui.qs.tiles.SRotationLockTile.3
                @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
                public final boolean isValidDB() {
                    SRotationLockTile.this.getClass();
                    return true;
                }

                @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
                public final String onBackup(boolean z) {
                    String str;
                    String str2;
                    String str3;
                    String str4;
                    int i = SRotationLockTile.$r8$clinit;
                    StringBuilder sb = new StringBuilder("TAG::autorotate_rotationlock::");
                    SRotationLockTile sRotationLockTile = SRotationLockTile.this;
                    if (z) {
                        str = "" + sRotationLockTile.mController.isRotationLocked();
                        StringBuilder sb2 = new StringBuilder("");
                        SettingsHelper settingsHelper2 = sRotationLockTile.mSettingsHelper;
                        sb2.append(settingsHelper2.isHomeScreenRotationAllowed());
                        str3 = sb2.toString();
                        str4 = "" + settingsHelper2.isLockScreenRotationAllowed();
                        str2 = "" + settingsHelper2.isCallScreenRotationAllowed();
                    } else {
                        sRotationLockTile.getClass();
                        str = null;
                        str2 = null;
                        str3 = null;
                        str4 = null;
                    }
                    AppOpItem$$ExternalSyntheticOutline0.m(sb, str, "::TAG::autorotate_homescreen::", str3, "::TAG::autorotate_lockscreen::");
                    sb.append(str4);
                    sb.append("::TAG::autorotate_voicecallscreen::");
                    sb.append(str2);
                    Log.d("SRotationLockTile", "getBackupData: " + sb.toString());
                    return sb.toString();
                }

                @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
                public final void onRestore(String str) {
                    int i = SRotationLockTile.$r8$clinit;
                    SRotationLockTile sRotationLockTile = SRotationLockTile.this;
                    sRotationLockTile.getClass();
                    String[] split = str.split("::");
                    Log.d("SRotationLockTile", "restoreData: ".concat(str));
                    if (split.length > 1) {
                        if (split[0].equals("autorotate_rotationlock")) {
                            String str2 = split[1];
                            if (str2 == null) {
                                Log.w("SRotationLockTile", "restoredRotationLock is null");
                                return;
                            }
                            sRotationLockTile.mController.setRotationLocked(str2.equals("true"));
                        }
                        boolean equals = split[0].equals("autorotate_homescreen");
                        SettingsHelper settingsHelper2 = sRotationLockTile.mSettingsHelper;
                        if (equals) {
                            String str3 = split[1];
                            if (str3 == null) {
                                Log.w("SRotationLockTile", "restoredHomeScreenSetting is null");
                                return;
                            } else {
                                Settings.Global.putInt(settingsHelper2.mContext.getContentResolver(), "sehome_portrait_mode_only", !str3.equals("true") ? 1 : 0);
                            }
                        }
                        if (split[0].equals("autorotate_lockscreen")) {
                            String str4 = split[1];
                            if (str4 == null) {
                                Log.w("SRotationLockTile", "restoredLockScreenSetting is null");
                                return;
                            }
                            boolean equals2 = str4.equals("true");
                            Context context = settingsHelper2.mContext;
                            if (DeviceState.shouldEnableKeyguardScreenRotation(context)) {
                                Settings.System.putIntForUser(context.getContentResolver(), "lock_screen_allow_rotation", equals2 ? 1 : 0, -2);
                                settingsHelper2.mItemLists.get("lock_screen_allow_rotation").mIntValue = equals2 ? 1 : 0;
                            }
                        }
                        if (split[0].equals("autorotate_voicecallscreen")) {
                            String str5 = split[1];
                            if (str5 == null) {
                                Log.w("SRotationLockTile", "restoredCallScreenRotateSetting is null");
                            } else {
                                Settings.Global.putInt(settingsHelper2.mContext.getContentResolver(), "call_auto_rotation", str5.equals("true") ? 1 : 0);
                            }
                        }
                    }
                }
            });
        }
    }

    public static boolean isCurrentOrientationLockPortrait(RotationLockController rotationLockController, Resources resources) {
        int rotationLockOrientation = rotationLockController.getRotationLockOrientation();
        if (rotationLockOrientation == 0) {
            if (resources.getConfiguration().orientation != 2) {
                return true;
            }
            return false;
        }
        if (rotationLockOrientation != 2) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.util.QsResetSettingsManager.DemoResetSettingsApplier
    public final void applyDemoResetSetting() {
        Settings.System.putInt(this.mContext.getContentResolver(), "accelerometer_rotation", 1);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final void destroy() {
        super.destroy();
        this.mSettingsHelper.unregisterCallback(this.mSettingsCallback);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final DetailAdapter getDetailAdapter() {
        return this.mDetailAdapter;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 123;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.indexsearch.Searchable
    public final ArrayList getSearchWords() {
        ArrayList arrayList = new ArrayList();
        Context context = this.mContext;
        arrayList.add(context.getString(R.string.sec_quick_settings_rotation_unlocked_label).trim().toLowerCase().replaceAll("\\n", " "));
        arrayList.add(context.getString(R.string.sec_quick_settings_rotation_locked_portrait_label).trim().toLowerCase());
        arrayList.add(context.getString(R.string.sec_quick_settings_rotation_locked_landscape_label).trim().toLowerCase());
        return arrayList;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return ((QSTile.BooleanState) this.mState).label;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.SQSTile
    public final String getTileMapKey() {
        return super.getTileMapKey();
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(View view) {
        Log.d("SRotationLockTile", " handleClick is called:++++ ");
        if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isRotationLockTileBlocked()) {
            showItPolicyToast();
            return;
        }
        if (((QSTile.BooleanState) this.mState).state == 0) {
            return;
        }
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("handleClick "), ((QSTile.BooleanState) this.mState).state, "SRotationLockTile");
        boolean z = this.mRotationLocked;
        this.mController.setRotationLocked(!z);
        ((QSTile.BooleanState) this.mState).copyTo(this.mStateBeforeClick);
        refreshState(Boolean.valueOf(z));
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleDestroy() {
        super.handleDestroy();
        setListening(false);
        this.mPrivacyManager.removeSensorPrivacyListener(2, this.mSensorPrivacyChangedListener);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleInitialize() {
        this.mPrivacyManager.addSensorPrivacyListener(2, this.mSensorPrivacyChangedListener);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSecondaryClick(View view) {
        Log.d("SRotationLockTile", " handleSecondaryClick is called:++++ ");
        if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isRotationLockTileBlocked()) {
            showItPolicyToast();
        } else {
            showDetail(true);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        super.handleSetListening(z);
        setListening(z);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        QSTileImpl.AnimationIcon animationIcon;
        int i;
        int i2;
        int i3;
        QSTileImpl.AnimationIcon animationIcon2;
        boolean z;
        QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
        RotationLockController rotationLockController = this.mController;
        boolean isRotationLocked = rotationLockController.isRotationLocked();
        boolean z2 = ((BatteryControllerImpl) this.mBatteryController).mPowerSave;
        int i4 = 2;
        boolean isSensorPrivacyEnabled = this.mPrivacyManager.isSensorPrivacyEnabled(2);
        Context context = this.mContext;
        if (!z2 && !isSensorPrivacyEnabled) {
            PackageManager packageManager = context.getPackageManager();
            String rotationResolverPackageName = packageManager.getRotationResolverPackageName();
            if (rotationResolverPackageName != null && packageManager.checkPermission("android.permission.CAMERA", rotationResolverPackageName) == 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                rotationLockController.isCameraRotationEnabled();
            }
        }
        booleanState.value = !isRotationLocked;
        booleanState.dualTarget = true;
        boolean isCurrentOrientationLockPortrait = isCurrentOrientationLockPortrait(rotationLockController, this.mResources);
        if (isRotationLocked) {
            if (isCurrentOrientationLockPortrait) {
                i = R.string.sec_quick_settings_rotation_locked_portrait_label;
            } else {
                i = R.string.sec_quick_settings_rotation_locked_landscape_label;
            }
            if (isCurrentOrientationLockPortrait) {
                animationIcon2 = this.mAutoToPortrait;
            } else {
                animationIcon2 = this.mAutoToLandscape;
            }
            booleanState.icon = animationIcon2;
        } else {
            if (isCurrentOrientationLockPortrait) {
                animationIcon = this.mPortraitToAuto;
            } else {
                animationIcon = this.mLandscapeToAuto;
            }
            booleanState.icon = animationIcon;
            i = R.string.sec_quick_settings_rotation_unlocked_label;
        }
        booleanState.label = context.getString(i);
        if (!booleanState.value) {
            i4 = 1;
        }
        booleanState.state = i4;
        StringBuffer stringBuffer = new StringBuffer();
        if (booleanState.value) {
            i2 = R.string.accessibility_desc_on;
        } else {
            i2 = R.string.accessibility_desc_off;
        }
        String string = context.getString(i2);
        stringBuffer.append(context.getString(R.string.sec_quick_settings_rotation_unlocked_label));
        stringBuffer.append(",");
        if (!booleanState.value) {
            if (isCurrentOrientationLockPortrait) {
                i3 = R.string.sec_accessibility_rotation_set_portrait;
            } else {
                i3 = R.string.sec_accessibility_rotation_set_landscape;
            }
            stringBuffer.append(context.getString(i3));
            stringBuffer.append(",");
        }
        stringBuffer.append(string);
        booleanState.contentDescription = stringBuffer.toString();
        this.mRotationLocked = isRotationLocked;
        StringBuilder sb = new StringBuilder(" mRotationLocked: ");
        sb.append(this.mRotationLocked);
        sb.append(" handleUpdateState: ");
        KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(sb, booleanState.value, " orientation = ", isCurrentOrientationLockPortrait, "SRotationLockTile");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUserSwitch(int i) {
        setUserId(i);
        handleRefreshState(null);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }

    @Override // com.android.systemui.statusbar.policy.BatteryController.BatteryStateChangeCallback
    public final void onPowerSaveChanged(boolean z) {
        refreshState(null);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.SQSTile
    public final void sendTileStatusLog() {
        String str;
        String tileMapKey = super.getTileMapKey();
        int i = QSTileHost.TilesMap.SID_TILE_STATE;
        this.mTilesMap.getClass();
        String id = QSTileHost.TilesMap.getId(i, tileMapKey);
        boolean isCurrentOrientationLockPortrait = isCurrentOrientationLockPortrait(this.mController, this.mContext.getResources());
        if (id != null) {
            if (getTileMapValue() == 1) {
                str = "On";
            } else if (isCurrentOrientationLockPortrait) {
                str = "portrait";
            } else {
                str = "landscape";
            }
            SharedPreferences.Editor editor = this.mRotationLockTilePrefEditor;
            editor.putString(id, str);
            editor.commit();
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl
    public final boolean shouldAnnouncementBeDelayed() {
        if (this.mStateBeforeClick.value == ((QSTile.BooleanState) this.mState).value) {
            return true;
        }
        return false;
    }
}
