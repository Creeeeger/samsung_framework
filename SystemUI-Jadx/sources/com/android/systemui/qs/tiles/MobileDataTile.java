package com.android.systemui.qs.tiles;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.Looper;
import android.os.UserHandle;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.ServiceState;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.settingslib.net.DataUsageController;
import com.android.systemui.Dependency;
import com.android.systemui.Operator;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.SysUIToast;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.knox.EdmMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qp.SubscreenQsPanelController;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.qs.GlobalSetting;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.connectivity.NetworkController;
import com.android.systemui.statusbar.connectivity.NetworkControllerImpl;
import com.android.systemui.statusbar.connectivity.SignalCallback;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.telephony.TelephonyListenerManager;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIDialogUtils;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.sec.ims.presence.ServiceTuple;
import com.sec.ims.settings.ImsProfile;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileDataTile extends SQSTileImpl implements SignalCallback {
    public static final Intent DATA_SETTINGS = new Intent().setAction("android.settings.DATA_USAGE_SETTINGS");
    public static final Intent DATA_SETTINGS_UPSM = new Intent().setAction("com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS");
    public final ActivityStarter mActivityStarter;
    public final AnonymousClass2 mAirplaneSetting;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public CallAttributesListener mCallAttributesListener;
    public final NetworkController mController;
    public final DataUsageController mDataController;
    public final AnonymousClass5 mDataRoamingObserver;
    public final DisplayLifecycle mDisplayLifecycle;
    public boolean mIsVoLteCall;
    public boolean mIsVolteVideoCall;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public boolean mListening;
    public final PanelInteractor mPanelInteractor;
    public final AnonymousClass3 mPhoneStateListener;
    public final AnonymousClass4 mReceiver;
    public final AnonymousClass1 mSetting;
    public final SettingsHelper mSettingsHelper;
    public final Context mSubscreenContext;
    public SubscreenMobileDataTileReceiver mSubscreenMobileDataTileReceiver;
    public final SubscreenUtil mSubscreenUtil;
    public final TelephonyListenerManager mTelephonyListenerManager;
    public TelephonyManager mTelephonyManager;
    public final UserTracker mUserTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CallAttributesListener extends TelephonyCallback implements TelephonyCallback.CallAttributesListener, TelephonyCallback.ServiceStateListener {
        public /* synthetic */ CallAttributesListener(MobileDataTile mobileDataTile, int i) {
            this();
        }

        public final void onCallStatesChanged(List list) {
            boolean z;
            MobileDataTile mobileDataTile = MobileDataTile.this;
            Intent intent = MobileDataTile.DATA_SETTINGS;
            Log.e(mobileDataTile.TAG, "onCallStatesChanged: CallStateList = " + list);
            MobileDataTile mobileDataTile2 = MobileDataTile.this;
            TelephonyManager telephonyManager = mobileDataTile2.mTelephonyManager;
            if (telephonyManager != null) {
                if (!telephonyManager.hasCall(ServiceTuple.MEDIA_CAP_VIDEO) && (!MobileDataTile.this.mTelephonyManager.hasCall("volte") || MobileDataTile.this.mTelephonyManager.hasCall("epdg"))) {
                    z = false;
                } else {
                    z = true;
                }
                mobileDataTile2.mIsVoLteCall = z;
                MobileDataTile mobileDataTile3 = MobileDataTile.this;
                mobileDataTile3.mIsVolteVideoCall = mobileDataTile3.mTelephonyManager.hasCall(ServiceTuple.MEDIA_CAP_VIDEO);
                String str = MobileDataTile.this.TAG;
                StringBuilder sb = new StringBuilder("onCallAttributesChanged state changed : ");
                sb.append(list);
                sb.append(" isVOLteCall : ");
                sb.append(MobileDataTile.this.mIsVoLteCall);
                sb.append(" isVolteVideoCall : ");
                ActionBarContextView$$ExternalSyntheticOutline0.m(sb, MobileDataTile.this.mIsVolteVideoCall, str);
                MobileDataTile.this.refreshState(null);
            }
        }

        @Override // android.telephony.TelephonyCallback.ServiceStateListener
        public final void onServiceStateChanged(ServiceState serviceState) {
            boolean roaming = serviceState.getRoaming();
            MobileDataTile mobileDataTile = MobileDataTile.this;
            Intent intent = MobileDataTile.DATA_SETTINGS;
            Log.d(mobileDataTile.TAG, "service state changed : " + serviceState + ",isRoaming = " + roaming);
            MobileDataTile.this.refreshState(null);
        }

        private CallAttributesListener() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SubscreenMobileDataTileReceiver extends BroadcastReceiver {
        public SubscreenMobileDataTileReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("MOBILEDATA_STATE_CHANGE")) {
                MobileDataTile.this.handleClick(null);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.android.systemui.qs.tiles.MobileDataTile$3] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.qs.tiles.MobileDataTile$4] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.systemui.qs.tiles.MobileDataTile$5] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.android.systemui.qs.tiles.MobileDataTile$1] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.systemui.qs.tiles.MobileDataTile$2] */
    public MobileDataTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, NetworkController networkController, SettingsHelper settingsHelper, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardStateController keyguardStateController, BroadcastDispatcher broadcastDispatcher, PanelInteractor panelInteractor, UserTracker userTracker, DisplayLifecycle displayLifecycle, SubscreenUtil subscreenUtil) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        this.mPhoneStateListener = new TelephonyCallback.ActiveDataSubscriptionIdListener() { // from class: com.android.systemui.qs.tiles.MobileDataTile.3
            @Override // android.telephony.TelephonyCallback.ActiveDataSubscriptionIdListener
            public final void onActiveDataSubscriptionIdChanged(int i) {
                MobileDataTile mobileDataTile = MobileDataTile.this;
                Intent intent = MobileDataTile.DATA_SETTINGS;
                ListPopupWindow$$ExternalSyntheticOutline0.m("onActiveDataSubscriptionIdChanged,subId = ", i, mobileDataTile.TAG);
                MobileDataTile.this.refreshState(null);
            }
        };
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.systemui.qs.tiles.MobileDataTile.4
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                MobileDataTile mobileDataTile = MobileDataTile.this;
                Intent intent2 = MobileDataTile.DATA_SETTINGS;
                Log.d(mobileDataTile.TAG, "action:" + action);
                if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction())) {
                    intent.getIntExtra("displayId", -1);
                    return;
                }
                if ("android.intent.action.SIM_STATE_CHANGED".equals(intent.getAction())) {
                    String stringExtra = intent.getStringExtra(ImsProfile.SERVICE_SS);
                    if ("READY".equals(stringExtra) || "LOADED".equals(stringExtra) || "ABSENT".equals(stringExtra)) {
                        MobileDataTile.this.refreshState(null);
                    }
                }
            }
        };
        this.mDataRoamingObserver = new ContentObserver(new Handler()) { // from class: com.android.systemui.qs.tiles.MobileDataTile.5
            @Override // android.database.ContentObserver
            public final void onChange(boolean z) {
                MobileDataTile.this.refreshState(null);
            }
        };
        this.mSetting = new GlobalSetting(this.mContext, ((SQSTileImpl) this).mHandler, "mobile_data") { // from class: com.android.systemui.qs.tiles.MobileDataTile.1
            @Override // com.android.systemui.qs.GlobalSetting
            public final void handleValueChanged(int i) {
                MobileDataTile mobileDataTile = MobileDataTile.this;
                Intent intent = MobileDataTile.DATA_SETTINGS;
                String str = mobileDataTile.TAG;
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("mobile data has changed value : ", i, " is enabled : ");
                m.append(MobileDataTile.this.mDataController.isMobileDataEnabled());
                Log.d(str, m.toString());
                MobileDataTile.this.refreshState(null);
            }
        };
        this.mAirplaneSetting = new GlobalSetting(this.mContext, ((SQSTileImpl) this).mHandler, "airplane_mode_on") { // from class: com.android.systemui.qs.tiles.MobileDataTile.2
            @Override // com.android.systemui.qs.GlobalSetting
            public final void handleValueChanged(int i) {
                MobileDataTile mobileDataTile = MobileDataTile.this;
                Intent intent = MobileDataTile.DATA_SETTINGS;
                ListPopupWindow$$ExternalSyntheticOutline0.m("airplane mode  has changed value : ", i, mobileDataTile.TAG);
                MobileDataTile.this.refreshState(null);
            }
        };
        this.mController = networkController;
        NetworkControllerImpl networkControllerImpl = (NetworkControllerImpl) networkController;
        this.mDataController = networkControllerImpl.mDataUsageController;
        this.mTelephonyListenerManager = networkControllerImpl.mTelephonyListenerManager;
        this.mSettingsHelper = settingsHelper;
        this.mActivityStarter = activityStarter;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardStateController = keyguardStateController;
        this.mUserTracker = userTracker;
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mPanelInteractor = panelInteractor;
        this.mCallAttributesListener = new CallAttributesListener(this, 0);
        if (QpRune.QUICK_PANEL_SUBSCREEN) {
            this.mDisplayLifecycle = displayLifecycle;
            this.mSubscreenUtil = subscreenUtil;
            ((SubscreenQsPanelController) Dependency.get(SubscreenQsPanelController.class)).getClass();
            this.mSubscreenContext = SubscreenQsPanelController.mContext;
            if (this.mSubscreenMobileDataTileReceiver == null && broadcastDispatcher != null) {
                SubscreenMobileDataTileReceiver subscreenMobileDataTileReceiver = new SubscreenMobileDataTileReceiver();
                this.mSubscreenMobileDataTileReceiver = subscreenMobileDataTileReceiver;
                broadcastDispatcher.registerReceiver(subscreenMobileDataTileReceiver, new IntentFilter("MOBILEDATA_STATE_CHANGE"), null, UserHandle.ALL, 2, null);
            }
        }
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
        boolean z;
        if (!((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isMobileDataTileBlocked() && !((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isUserMobileDataRestricted()) {
            if (Operator.isKoreaQsTileBranding() && isNetworkRoaming()) {
                EdmMonitor edmMonitor = ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).mEdmMonitor;
                if (edmMonitor != null && edmMonitor.mRoamingAllowed) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    showItPolicyToast();
                    return null;
                }
            }
            Context context = this.mContext;
            if (SemEmergencyManager.isEmergencyMode(context)) {
                if (!this.mDataController.isMobileDataSupported()) {
                    showPopupDialog(context.getString(R.string.insert_sim_card), context.getString(R.string.insert_sim_card_message), android.R.string.ok, new MobileDataTile$$ExternalSyntheticLambda0(this, 9), 0, null, null);
                    return null;
                }
                return DATA_SETTINGS_UPSM;
            }
            if (isNetworkRoaming()) {
                Intent action = new Intent().setAction("com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS");
                action.putExtra("root_key", "T_GLOBAL_ROAMING");
                action.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                return action;
            }
            return DATA_SETTINGS;
        }
        showItPolicyToast();
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 115;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.quick_settings_mobile_data_label);
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x011c, code lost:
    
        if (r7 != false) goto L64;
     */
    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleClick(final android.view.View r13) {
        /*
            Method dump skipped, instructions count: 901
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.MobileDataTile.handleClick(android.view.View):void");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleDestroy() {
        SubscreenMobileDataTileReceiver subscreenMobileDataTileReceiver;
        BroadcastDispatcher broadcastDispatcher;
        super.handleDestroy();
        this.mCallAttributesListener = null;
        if (QpRune.QUICK_PANEL_SUBSCREEN && (subscreenMobileDataTileReceiver = this.mSubscreenMobileDataTileReceiver) != null && (broadcastDispatcher = this.mBroadcastDispatcher) != null) {
            broadcastDispatcher.unregisterReceiver(subscreenMobileDataTileReceiver);
            this.mSubscreenMobileDataTileReceiver = null;
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSecondaryClick(View view) {
        int value = getValue();
        boolean z = false;
        Context context = this.mContext;
        if (value == 1) {
            if (QpRune.QUICK_PANEL_SUBSCREEN) {
                context = getContext();
            }
            SysUIToast.makeText(R.string.mobile_data_show_toast_airplane_mode, context, 0).show();
            return;
        }
        if (!((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isMobileDataTileBlocked() && !((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isUserMobileDataRestricted()) {
            if (!this.mDataController.isMobileDataSupported()) {
                showPopupDialog(context.getString(R.string.insert_sim_card), context.getString(R.string.insert_sim_card_message), android.R.string.ok, new MobileDataTile$$ExternalSyntheticLambda0(this, 0), 0, null, null);
                return;
            }
            if (Operator.isKoreaQsTileBranding() && isNetworkRoaming()) {
                EdmMonitor edmMonitor = ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).mEdmMonitor;
                if (edmMonitor != null && edmMonitor.mRoamingAllowed) {
                    z = true;
                }
                if (!z) {
                    showItPolicyToast();
                    return;
                }
            }
            showDetail(true);
            return;
        }
        showItPolicyToast();
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        TelephonyManager telephonyManager;
        if (this.mListening == z) {
            return;
        }
        this.mListening = z;
        AnonymousClass5 anonymousClass5 = this.mDataRoamingObserver;
        AnonymousClass4 anonymousClass4 = this.mReceiver;
        BroadcastDispatcher broadcastDispatcher = this.mBroadcastDispatcher;
        AnonymousClass3 anonymousClass3 = this.mPhoneStateListener;
        String str = this.TAG;
        TelephonyListenerManager telephonyListenerManager = this.mTelephonyListenerManager;
        NetworkController networkController = this.mController;
        Context context = this.mContext;
        if (z) {
            ((NetworkControllerImpl) networkController).addCallback(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
            intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
            if (Operator.isKoreaQsTileBranding() || Operator.shouldSupportMobileDataNotDisableVolteCall()) {
                if (telephonyListenerManager != null) {
                    telephonyListenerManager.addActiveDataSubscriptionIdListener(anonymousClass3);
                }
                Log.d(str, "registerPhoneStateListener");
                if (this.mTelephonyManager == null) {
                    this.mTelephonyManager = (TelephonyManager) context.getSystemService("phone");
                }
                TelephonyManager telephonyManager2 = this.mTelephonyManager;
                if (telephonyManager2 != null) {
                    telephonyManager2.registerTelephonyCallback(new HandlerExecutor(((SQSTileImpl) this).mHandler), this.mCallAttributesListener);
                }
                if (Operator.isKoreaQsTileBranding()) {
                    context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("data_roaming"), false, anonymousClass5);
                }
            }
            broadcastDispatcher.registerReceiver(intentFilter, anonymousClass4);
        } else {
            ((NetworkControllerImpl) networkController).removeCallback(this);
            if (Operator.isKoreaQsTileBranding() || Operator.shouldSupportMobileDataNotDisableVolteCall()) {
                if (telephonyListenerManager != null) {
                    ((ArrayList) telephonyListenerManager.mTelephonyCallback.mActiveDataSubscriptionIdListeners).remove(anonymousClass3);
                    telephonyListenerManager.updateListening();
                }
                Log.d(str, "unregisterPhoneStateListener");
                CallAttributesListener callAttributesListener = this.mCallAttributesListener;
                if (callAttributesListener != null && (telephonyManager = this.mTelephonyManager) != null) {
                    telephonyManager.unregisterTelephonyCallback(callAttributesListener);
                }
                if (Operator.isKoreaQsTileBranding()) {
                    context.getContentResolver().unregisterContentObserver(anonymousClass5);
                }
            }
            broadcastDispatcher.unregisterReceiver(anonymousClass4);
        }
        setListening(z);
        setListening(z);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
        checkIfRestrictionEnforcedByAdminOnly(booleanState, "no_config_mobile_networks");
        Context context = this.mContext;
        Resources resources = context.getResources();
        booleanState.icon = QSTileImpl.ResourceIcon.get(R.drawable.quick_panel_icon_data_connection);
        boolean isNetworkRoaming = isNetworkRoaming();
        AnonymousClass2 anonymousClass2 = this.mAirplaneSetting;
        if (isNetworkRoaming) {
            booleanState.label = resources.getString(R.string.quick_settings_data_roaming_label);
            if (anonymousClass2.getValue() != 1) {
                if (Settings.Global.getInt(context.getContentResolver(), "data_roaming", 0) == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    z2 = true;
                    booleanState.value = z2;
                }
            }
            z2 = false;
            booleanState.value = z2;
        } else {
            booleanState.label = resources.getString(R.string.quick_settings_mobile_data_label);
            DataUsageController dataUsageController = this.mDataController;
            if (dataUsageController.isMobileDataSupported() && dataUsageController.isMobileDataEnabled() && anonymousClass2.getValue() != 1) {
                z = true;
            } else {
                z = false;
            }
            booleanState.value = z;
        }
        Log.d(this.TAG, "handleUpdateState : state " + booleanState.value);
        if (booleanState.value) {
            i = 2;
        } else {
            i = 1;
        }
        booleanState.state = i;
        booleanState.dualTarget = true;
        if (Operator.shouldSupportMobileDataNotDisableVolteCall() && this.mIsVoLteCall) {
            booleanState.state = 0;
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final boolean isAvailable() {
        if (!DeviceType.isWiFiOnlyDevice() && ((UserTrackerImpl) this.mUserTracker).getUserId() == 0) {
            if (!this.mHost.shouldBeHiddenByKnox(this.mTileSpec)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isNetworkRoaming() {
        boolean z = false;
        if (!Operator.isKoreaQsTileBranding()) {
            return false;
        }
        TelephonyManager telephonyManager = this.mTelephonyManager;
        if (telephonyManager != null) {
            int phoneId = SubscriptionManager.getPhoneId(SubscriptionManager.getDefaultDataSubscriptionId());
            String m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("getDefaultDataPhoneId ", phoneId);
            String str = this.TAG;
            Log.d(str, m);
            if (phoneId < 0) {
                phoneId = 0;
            } else if (phoneId > 1) {
                phoneId = 1;
            }
            ServiceState semGetServiceState = telephonyManager.semGetServiceState(phoneId);
            if (semGetServiceState != null) {
                z = semGetServiceState.getRoaming();
            }
            if (z) {
                Log.d(str, "isNetworkRoaming : Roaming state");
            }
        }
        return z;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalCallback
    public final void setMobileDataEnabled(boolean z) {
        Log.d(this.TAG, "setMobileDataEnabled:" + z);
        refreshState(null);
    }

    public final void showPopupDialog(final CharSequence charSequence, final CharSequence charSequence2, final int i, final DialogInterface.OnClickListener onClickListener, final int i2, final MobileDataTile$$ExternalSyntheticLambda0 mobileDataTile$$ExternalSyntheticLambda0, final View view) {
        SystemUIDialog systemUIDialog;
        boolean z = QpRune.QUICK_PANEL_SUBSCREEN;
        Context context = this.mContext;
        if (z) {
            DisplayLifecycle displayLifecycle = this.mDisplayLifecycle;
            if (displayLifecycle != null && !displayLifecycle.mIsFolderOpened) {
                SubscreenUtil subscreenUtil = this.mSubscreenUtil;
                if (subscreenUtil != null) {
                    subscreenUtil.closeSubscreenPanel();
                }
                this.mUiHandler.post(new MobileDataTile$$ExternalSyntheticLambda4());
                new Handler().postDelayed(new Runnable() { // from class: com.android.systemui.qs.tiles.MobileDataTile$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        MobileDataTile mobileDataTile = MobileDataTile.this;
                        CharSequence charSequence3 = charSequence;
                        CharSequence charSequence4 = charSequence2;
                        int i3 = i;
                        DialogInterface.OnClickListener onClickListener2 = onClickListener;
                        int i4 = i2;
                        DialogInterface.OnClickListener onClickListener3 = mobileDataTile$$ExternalSyntheticLambda0;
                        View view2 = view;
                        SystemUIDialog createSystemUIDialogUtils = SystemUIDialogUtils.createSystemUIDialogUtils(2132018528, mobileDataTile.getContext());
                        createSystemUIDialogUtils.setTitle(charSequence3);
                        createSystemUIDialogUtils.setMessage(charSequence4);
                        if (view2 != null) {
                            Resources resources = mobileDataTile.getContext().getResources();
                            createSystemUIDialogUtils.setView(view2, resources.getDimensionPixelSize(R.dimen.checkbox_popup_checkbox_margin), 0, resources.getDimensionPixelSize(R.dimen.checkbox_popup_checkbox_margin), 0);
                        }
                        if (i3 != 0 && onClickListener2 != null) {
                            createSystemUIDialogUtils.setPositiveButton(i3, onClickListener2);
                        }
                        if (i4 != 0 && onClickListener3 != null) {
                            createSystemUIDialogUtils.setNegativeButton(i4, onClickListener3);
                        }
                        mobileDataTile.mPanelInteractor.collapsePanels();
                        createSystemUIDialogUtils.setOnDismissListener(new MobileDataTile$$ExternalSyntheticLambda6(mobileDataTile, 1));
                        createSystemUIDialogUtils.show();
                    }
                }, 250L);
                return;
            }
            systemUIDialog = SystemUIDialogUtils.createSystemUIDialogUtils(2132018528, getContext());
        } else {
            systemUIDialog = new SystemUIDialog(context, 2132018528);
        }
        systemUIDialog.setTitle(charSequence);
        systemUIDialog.setMessage(charSequence2);
        if (view != null) {
            Resources resources = context.getResources();
            systemUIDialog.setView(view, resources.getDimensionPixelSize(R.dimen.checkbox_popup_text_margin), 0, resources.getDimensionPixelSize(R.dimen.checkbox_popup_text_margin), 0);
        }
        if (i != 0) {
            systemUIDialog.setPositiveButton(i, onClickListener);
        }
        if (i2 != 0 && mobileDataTile$$ExternalSyntheticLambda0 != null) {
            systemUIDialog.setNegativeButton(i2, mobileDataTile$$ExternalSyntheticLambda0);
        }
        this.mPanelInteractor.collapsePanels();
        systemUIDialog.setOnDismissListener(new MobileDataTile$$ExternalSyntheticLambda6(this, 0));
        systemUIDialog.show();
    }
}
