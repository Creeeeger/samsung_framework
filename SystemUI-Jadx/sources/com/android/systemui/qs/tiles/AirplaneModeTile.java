package com.android.systemui.qs.tiles;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.os.UserManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.sysprop.TelephonyProperties;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.Operator;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qp.SubscreenQsPanelController;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.SettingObserver;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.connectivity.NetworkController;
import com.android.systemui.statusbar.connectivity.NetworkControllerImpl;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.settings.GlobalSettings;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import dagger.Lazy;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AirplaneModeTile extends SQSTileImpl {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean mAirplaneTileModeChanged;
    public SystemUIDialog mAlertDialog;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final QSTileImpl.AnimationIcon mDisable;
    public final DisplayLifecycle mDisplayLifecycle;
    public final QSTileImpl.AnimationIcon mEnable;
    public final AnonymousClass2 mFoldStateChangedListener;
    public boolean mIsWiFiOnlyDevice;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public boolean mListening;
    public final NetworkController mNetworkController;
    public final AnonymousClass5 mReceiver;
    public final AnonymousClass1 mSetting;
    public final SettingsHelper mSettingsHelper;
    public final QSTile.BooleanState mStateBeforeClick;
    public SubscreenAirplaneModeTileReceiver mSubscreenAirplaneModeTileReceiver;
    public final Context mSubscreenContext;
    public final SubscreenQsPanelController mSubscreenQsPanelController;
    public final UserManager mUserManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SubscreenAirplaneModeTileReceiver extends BroadcastReceiver {
        public SubscreenAirplaneModeTileReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("AIRPLANE_MODE_CHANGE")) {
                AirplaneModeTile.this.handleClick(null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.qs.tiles.AirplaneModeTile$1] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.android.systemui.qs.tiles.AirplaneModeTile$2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.android.systemui.qs.tiles.AirplaneModeTile$5] */
    public AirplaneModeTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, BroadcastDispatcher broadcastDispatcher, NetworkController networkController, SettingsHelper settingsHelper, KeyguardUpdateMonitor keyguardUpdateMonitor, Lazy lazy, GlobalSettings globalSettings, KeyguardStateController keyguardStateController, UserTracker userTracker, PanelInteractor panelInteractor, DisplayLifecycle displayLifecycle) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        this.mStateBeforeClick = new QSTile.BooleanState();
        new ArrayList();
        this.mEnable = new QSTileImpl.AnimationIcon(R.drawable.quick_panel_icon_airplane_mode_on, R.drawable.quick_panel_icon_airplane_mode_on_016);
        this.mDisable = new QSTileImpl.AnimationIcon(R.drawable.quick_panel_icon_airplane_mode_off, R.drawable.quick_panel_icon_airplane_mode_on_016);
        this.mAirplaneTileModeChanged = false;
        this.mSubscreenQsPanelController = null;
        ?? r4 = new DisplayLifecycle.Observer() { // from class: com.android.systemui.qs.tiles.AirplaneModeTile.2
            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public final void onFolderStateChanged(boolean z) {
                if (!QpRune.QUICK_PANEL_SUBSCREEN) {
                    AirplaneModeTile airplaneModeTile = AirplaneModeTile.this;
                    if (z) {
                        airplaneModeTile.mSubscreenQsPanelController.getInstance(3).registerReceiver(false);
                    } else {
                        airplaneModeTile.mSubscreenQsPanelController.getInstance(3).unRegisterReceiver(false);
                    }
                }
            }
        };
        this.mFoldStateChangedListener = r4;
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.systemui.qs.tiles.AirplaneModeTile.5
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                Log.d("AirplaneModeTile", "onReceive " + intent.getAction());
                Object obj = null;
                if ("android.intent.action.AIRPLANE_MODE".equals(intent.getAction())) {
                    AirplaneModeTile airplaneModeTile = AirplaneModeTile.this;
                    if (airplaneModeTile.mAirplaneTileModeChanged) {
                        if (!DeviceType.isWiFiOnlyDevice()) {
                            int i = AirplaneModeTile.$r8$clinit;
                            obj = SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING;
                        }
                        airplaneModeTile.refreshState(obj);
                        AirplaneModeTile.this.mAirplaneTileModeChanged = false;
                        return;
                    }
                }
                if ("android.intent.action.SERVICE_STATE".equals(intent.getAction())) {
                    AirplaneModeTile.this.refreshState(null);
                }
            }
        };
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardStateController = keyguardStateController;
        this.mNetworkController = networkController;
        this.mSettingsHelper = settingsHelper;
        this.mIsWiFiOnlyDevice = DeviceType.isWiFiOnlyDevice();
        this.mBroadcastDispatcher = broadcastDispatcher;
        if (QpRune.QUICK_SETTINGS_SUBSCREEN) {
            this.mDisplayLifecycle = displayLifecycle;
            this.mSubscreenQsPanelController = (SubscreenQsPanelController) Dependency.get(SubscreenQsPanelController.class);
            ((SubscreenQsPanelController) Dependency.get(SubscreenQsPanelController.class)).getClass();
            this.mSubscreenContext = SubscreenQsPanelController.mContext;
            displayLifecycle.addObserver(r4);
        } else {
            this.mFoldStateChangedListener = null;
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN && this.mSubscreenAirplaneModeTileReceiver == null && broadcastDispatcher != null) {
            SubscreenAirplaneModeTileReceiver subscreenAirplaneModeTileReceiver = new SubscreenAirplaneModeTileReceiver();
            this.mSubscreenAirplaneModeTileReceiver = subscreenAirplaneModeTileReceiver;
            broadcastDispatcher.registerReceiver(subscreenAirplaneModeTileReceiver, new IntentFilter("AIRPLANE_MODE_CHANGE"), null, UserHandle.ALL, 2, "com.samsung.systemui.permission.AIRPLANE_STATE_CHANGE");
        }
        this.mSetting = new SettingObserver(globalSettings, ((SQSTileImpl) this).mHandler, "airplane_mode_on", ((UserTrackerImpl) userTracker).getUserId()) { // from class: com.android.systemui.qs.tiles.AirplaneModeTile.1
            @Override // com.android.systemui.qs.SettingObserver
            public final void handleValueChanged(int i, boolean z) {
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("handleValueChanged, value = ", i, ",mSetting.getValue() = ");
                m.append(getValue());
                Log.d("AirplaneModeTile", m.toString());
                AirplaneModeTile.this.handleRefreshState(Integer.valueOf(i));
            }
        };
        this.mUserManager = (UserManager) this.mContext.getSystemService("user");
    }

    public final Context getContext() {
        DisplayLifecycle displayLifecycle;
        if (QpRune.QUICK_PANEL_SUBSCREEN && (displayLifecycle = this.mDisplayLifecycle) != null && !displayLifecycle.mIsFolderOpened) {
            return this.mSubscreenContext;
        }
        return this.mContext;
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final DetailAdapter getDetailAdapter() {
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isAirplaneModeTileBlocked()) {
            showItPolicyToast();
            return null;
        }
        return new Intent("android.settings.AIRPLANE_MODE_SETTINGS");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 112;
    }

    public final int getStringID(int i) {
        if (i != R.string.airplane_mode_show_popup_summary && i != R.string.quick_settings_flight_mode_detail_summary) {
            if (i == R.string.airplane_mode_show_popup_title) {
                if (Operator.isUSAQsTileBranding()) {
                    return R.string.airplane_mode_show_popup_title_vzw;
                }
                return i;
            }
            if (i == R.string.ok) {
                if (Operator.QUICK_IS_ATT_BRANDING || Operator.QUICK_IS_SPR_BRANDING || Operator.QUICK_IS_TMB_BRANDING) {
                    return R.string.quick_settings_enable;
                }
                return i;
            }
            return i;
        }
        if (DeviceType.isTablet() && DeviceType.isWiFiOnlyDevice()) {
            return R.string.airplane_mode_show_popup_message_wifi;
        }
        if (DeviceType.isTablet() && !DeviceState.isVoiceCapable(this.mContext)) {
            return R.string.airplane_mode_show_popup_message_lte_without_call_feature_tablet;
        }
        if (Operator.QUICK_IS_CHM_BRANDING) {
            return R.string.airplane_mode_show_popup_message_cmcc;
        }
        if (Operator.isUSAQsTileBranding()) {
            return R.string.airplane_mode_show_popup_message;
        }
        return i;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.quick_settings_airplane_mode_label);
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x010c, code lost:
    
        if (android.provider.Settings.System.getInt(r4.getContentResolver(), "off_menu_setting", 0) == 1) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0102  */
    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleClick(final android.view.View r12) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.AirplaneModeTile.handleClick(android.view.View):void");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleDestroy() {
        SubscreenAirplaneModeTileReceiver subscreenAirplaneModeTileReceiver;
        BroadcastDispatcher broadcastDispatcher;
        super.handleDestroy();
        Log.d("AirplaneModeTile", "handleDestroy");
        try {
            this.mUiHandler.post(new Runnable() { // from class: com.android.systemui.qs.tiles.AirplaneModeTile.3
                @Override // java.lang.Runnable
                public final void run() {
                    DisplayLifecycle displayLifecycle;
                    AirplaneModeTile airplaneModeTile = AirplaneModeTile.this;
                    AnonymousClass2 anonymousClass2 = airplaneModeTile.mFoldStateChangedListener;
                    if (anonymousClass2 != null && (displayLifecycle = airplaneModeTile.mDisplayLifecycle) != null) {
                        displayLifecycle.removeObserver(anonymousClass2);
                    }
                }
            });
        } catch (Exception e) {
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("destroy exception:", Log.getStackTraceString(e), "AirplaneModeTile");
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN && (subscreenAirplaneModeTileReceiver = this.mSubscreenAirplaneModeTileReceiver) != null && (broadcastDispatcher = this.mBroadcastDispatcher) != null) {
            broadcastDispatcher.unregisterReceiver(subscreenAirplaneModeTileReceiver);
            this.mSubscreenAirplaneModeTileReceiver = null;
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSecondaryClick(View view) {
        showDetail(true);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        super.handleSetListening(z);
        if (this.mListening == z) {
            return;
        }
        this.mListening = z;
        AnonymousClass5 anonymousClass5 = this.mReceiver;
        BroadcastDispatcher broadcastDispatcher = this.mBroadcastDispatcher;
        if (z) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            intentFilter.addAction("android.intent.action.SERVICE_STATE");
            broadcastDispatcher.registerReceiver(intentFilter, anonymousClass5);
        } else {
            broadcastDispatcher.unregisterReceiver(anonymousClass5);
        }
        setListening(z);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        boolean z;
        QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
        checkIfRestrictionEnforcedByAdminOnly(booleanState, "no_airplane_mode");
        if (obj == SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING) {
            z = true;
        } else {
            z = false;
        }
        Context context = this.mContext;
        boolean isNoSimState = DeviceState.isNoSimState(context);
        this.mIsWiFiOnlyDevice = DeviceType.isWiFiOnlyDevice();
        boolean isPowerOffServiceState = ((NetworkControllerImpl) this.mNetworkController).isPowerOffServiceState();
        StringBuilder sb = new StringBuilder(" handleUpdateState mIsWiFiOnlyDevice ");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, this.mIsWiFiOnlyDevice, " isNoSimState ", isNoSimState, " isNoSimState  isPowerOffServiceState ");
        sb.append(isPowerOffServiceState);
        sb.append(" mSetting.getValue() ");
        AnonymousClass1 anonymousClass1 = this.mSetting;
        sb.append(anonymousClass1.getValue());
        Log.d("AirplaneModeTile", sb.toString());
        if (z) {
            booleanState.value = ((QSTile.BooleanState) this.mState).value;
            booleanState.icon = QSTileImpl.ResourceIcon.get(R.drawable.quick_panel_icon_airplane_mode_dim);
            booleanState.state = 0;
            StringBuilder m = RowView$$ExternalSyntheticOutline0.m(" handleUpdateState:  isTransient  ", z, " state.value ");
            m.append(booleanState.value);
            m.append(" state.state ");
            RecyclerView$$ExternalSyntheticOutline0.m(m, booleanState.state, "AirplaneModeTile");
        } else {
            if (anonymousClass1.getValue() == 1 && (this.mIsWiFiOnlyDevice || isNoSimState || isPowerOffServiceState)) {
                booleanState.value = true;
                booleanState.icon = this.mEnable;
                booleanState.state = 2;
            } else if (anonymousClass1.getValue() == 0 && (this.mIsWiFiOnlyDevice || isNoSimState || !isPowerOffServiceState)) {
                booleanState.value = false;
                booleanState.icon = this.mDisable;
                booleanState.state = 1;
            } else {
                Log.d("AirplaneModeTile", "Tile.STATE_UNAVAILABLE");
                booleanState.value = ((QSTile.BooleanState) this.mState).value;
                booleanState.icon = QSTileImpl.ResourceIcon.get(R.drawable.quick_panel_icon_airplane_mode_dim);
                booleanState.state = 0;
            }
            StringBuilder sb2 = new StringBuilder(" handleUpdateState:  value = ");
            sb2.append(booleanState.value);
            sb2.append(", state = ");
            RecyclerView$$ExternalSyntheticOutline0.m(sb2, booleanState.state, "AirplaneModeTile");
        }
        booleanState.dualTarget = true;
        booleanState.label = context.getString(R.string.quick_settings_airplane_mode_label);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final boolean isAvailable() {
        if (!this.mUserManager.getUserInfo(ActivityManager.getCurrentUser()).isRestricted()) {
            if (!this.mHost.shouldBeHiddenByKnox(this.mTileSpec)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }

    public final void setEnabled(boolean z) {
        if (((Boolean) TelephonyProperties.in_ecm_mode().orElse(Boolean.FALSE)).booleanValue()) {
            Intent intent = new Intent("android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS", (Uri) null);
            intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
            this.mActivityStarter.postStartActivityDismissingKeyguard(intent, 0);
        } else {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setEnabled :", z, "AirplaneModeTile");
            this.mAirplaneTileModeChanged = true;
            this.mSettingsHelper.setAirplaneMode(z);
            Intent intent2 = new Intent("android.intent.action.AIRPLANE_MODE");
            intent2.putExtra("state", z);
            this.mContext.sendBroadcastAsUser(intent2, UserHandle.ALL);
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
