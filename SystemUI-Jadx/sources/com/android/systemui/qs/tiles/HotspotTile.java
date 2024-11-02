package com.android.systemui.qs.tiles;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.net.wifi.SoftApConfiguration;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.settingslib.wifi.WifiEnterpriseRestrictionUtils;
import com.android.systemui.CvOperator;
import com.android.systemui.CvRune;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.SysUIToast;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.knox.EdmMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.QSDetailItems;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.DataSaverController;
import com.android.systemui.statusbar.policy.DataSaverControllerImpl;
import com.android.systemui.statusbar.policy.HotspotController;
import com.android.systemui.statusbar.policy.HotspotControllerImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.feature.SemCarrierFeature;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.samsung.android.wifi.SemWifiManager;
import com.sec.ims.extensions.WiFiManagerExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.volte2.data.VolteConstants;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HotspotTile extends SQSTileImpl {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final WifiManager mAOSPWifiManager;
    public final ActivityStarter mActivityStarter;
    public final DataSaverController mDataSaverController;
    public SystemUIDialog mDataSaverDialog;
    public final HotspotController mHotspotController;
    public final QSTile.Icon mIcon;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final KnoxStateMonitor mKnoxStateMonitor;
    public boolean mListening;
    public final PanelInteractor mPanelInteractor;
    public SemWifiManager mSemWifiManager;
    public final SettingsHelper mSettingsHelper;
    public final QSTile.BooleanState mStateBeforeClick;
    public final WifiManager mWifiManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CallbackInfo {
        public boolean isDataSaverEnabled;
        public boolean isHotspotEnabled;
        public int numConnectedDevices;

        public final String toString() {
            return "CallbackInfo[isHotspotEnabled=" + this.isHotspotEnabled + ",numConnectedDevices=" + this.numConnectedDevices + ",isDataSaverEnabled=" + this.isDataSaverEnabled + ']';
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HotspotAndDataSaverCallbacks implements HotspotController.Callback, DataSaverController.Listener {
        public final CallbackInfo mCallbackInfo;

        public /* synthetic */ HotspotAndDataSaverCallbacks(HotspotTile hotspotTile, int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.policy.DataSaverController.Listener
        public final void onDataSaverChanged(boolean z) {
            ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("onDataSaverChanged: ", z, "HotspotTile");
            CallbackInfo callbackInfo = this.mCallbackInfo;
            callbackInfo.isDataSaverEnabled = z;
            int i = HotspotTile.$r8$clinit;
            HotspotTile.this.refreshState(callbackInfo);
        }

        @Override // com.android.systemui.statusbar.policy.HotspotController.Callback
        public final void onHotspotAvailabilityChanged(boolean z) {
            ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("onHotspotAvailabilityChanged: ", z, "HotspotTile");
            if (!z) {
                Log.d("HotspotTile", "Tile removed. Hotspot no longer available");
                int i = HotspotTile.$r8$clinit;
                HotspotTile hotspotTile = HotspotTile.this;
                hotspotTile.mHost.removeTile(hotspotTile.mTileSpec);
            }
        }

        @Override // com.android.systemui.statusbar.policy.HotspotController.Callback
        public final void onHotspotChanged(int i, boolean z) {
            ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("onHotspotChanged: ", z, "HotspotTile");
            CallbackInfo callbackInfo = this.mCallbackInfo;
            callbackInfo.isHotspotEnabled = z;
            callbackInfo.numConnectedDevices = i;
            int i2 = HotspotTile.$r8$clinit;
            HotspotTile.this.refreshState(callbackInfo);
        }

        @Override // com.android.systemui.statusbar.policy.HotspotController.Callback
        public final void onHotspotPrepared() {
            Log.d("HotspotTile", "onHotspotPrepared");
            int i = HotspotTile.$r8$clinit;
            Object obj = SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING;
            HotspotTile hotspotTile = HotspotTile.this;
            hotspotTile.refreshState(obj);
            hotspotTile.getClass();
        }

        @Override // com.android.systemui.statusbar.policy.HotspotController.Callback
        public final void onUpdateConnectedDevices() {
            Log.d("HotspotTile", "onUpdateConnectedDevices =true");
            int i = HotspotTile.$r8$clinit;
            HotspotTile hotspotTile = HotspotTile.this;
            hotspotTile.getClass();
            hotspotTile.refreshState(null);
        }

        private HotspotAndDataSaverCallbacks() {
            this.mCallbackInfo = new CallbackInfo();
        }
    }

    public HotspotTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, HotspotController hotspotController, DataSaverController dataSaverController, KnoxStateMonitor knoxStateMonitor, KeyguardStateController keyguardStateController, KeyguardUpdateMonitor keyguardUpdateMonitor, SettingsHelper settingsHelper, PanelInteractor panelInteractor) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        this.mIcon = QSTileImpl.ResourceIcon.get(R.drawable.quick_panel_icon_wifihotspot);
        HotspotAndDataSaverCallbacks hotspotAndDataSaverCallbacks = new HotspotAndDataSaverCallbacks(this, 0);
        this.mStateBeforeClick = new QSTile.BooleanState();
        this.mHotspotController = hotspotController;
        this.mDataSaverController = dataSaverController;
        hotspotController.getClass();
        hotspotController.observe(((QSTileImpl) this).mLifecycle, hotspotAndDataSaverCallbacks);
        dataSaverController.getClass();
        dataSaverController.observe(((QSTileImpl) this).mLifecycle, hotspotAndDataSaverCallbacks);
        this.mKnoxStateMonitor = knoxStateMonitor;
        this.mKeyguardStateController = keyguardStateController;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mActivityStarter = activityStarter;
        this.mSettingsHelper = settingsHelper;
        this.mWifiManager = (WifiManager) this.mContext.getSystemService(ImsProfile.PDN_WIFI);
        this.mAOSPWifiManager = (WifiManager) this.mContext.getSystemService(ImsProfile.PDN_WIFI);
        this.mPanelInteractor = panelInteractor;
    }

    public static boolean isBlockedByOthers() {
        if (CvRune.HOTSPOT_ENABLED_SPRINT_EXTENSION) {
            int i = SystemProperties.getInt("persist.sys.tether_data_wifi", -1);
            ListPopupWindow$$ExternalSyntheticOutline0.m(" isBlockedByOthers : SPRINT_EXTENSION = ", i, "HotspotTile");
            if (i != -1 && i <= 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final DetailAdapter getDetailAdapter() {
        Log.d("HotspotTile", "HotspotTile  getDetailAdapter: null");
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        boolean z;
        Log.i("HotspotTile", "getLongClickIntent");
        if (!((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isWifiHotspotTileBlocked()) {
            EdmMonitor edmMonitor = ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).mEdmMonitor;
            if (edmMonitor != null && edmMonitor.mUserManager.hasUserRestriction("no_config_tethering", UserHandle.of(KeyguardUpdateMonitor.getCurrentUser()))) {
                z = true;
            } else {
                z = false;
            }
            if (!z && !isBlockedByEASPolicy()) {
                if (isWifiApBlocked()) {
                    showItPolicyToast();
                    return null;
                }
                if (isDataSaverEnabled()) {
                    showDataSaverToast();
                    return null;
                }
                if (isAirplaneModeEnabled() || isSatModeEnabled() || isBlockedByOthers()) {
                    return null;
                }
                Log.i("HotspotTile", "Launching Mobile Hotspot settings onLong click");
                return new Intent("android.settings.WIFI_AP_SETTINGS");
            }
        }
        showItPolicyToast();
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 120;
    }

    public final SemWifiManager getSemWifiManager() {
        if (this.mSemWifiManager == null) {
            this.mSemWifiManager = (SemWifiManager) this.mContext.getSystemService(WiFiManagerExt.SEM_WIFI_SERVICE);
        }
        return this.mSemWifiManager;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getText(CvOperator.getHotspotStringID(R.string.quick_settings_mobile_hotspot_label));
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(final View view) {
        Object obj;
        Log.i("HotspotTile", "handleClick");
        boolean z = ((QSTile.BooleanState) this.mState).value;
        if (getSemWifiManager() == null) {
            Log.e("HotspotTile", " handleClick SemWifiManager is null");
            return;
        }
        Log.i("HotspotTile", "Checking WifiAp State");
        int wifiApState = this.mSemWifiManager.getWifiApState();
        if (!z && wifiApState != 11 && wifiApState != 14) {
            Log.i("HotspotTile", "return , wifiapstate");
            return;
        }
        if (z && wifiApState != 13) {
            SeslColorSpectrumView$$ExternalSyntheticOutline0.m("return, wifiapstate", wifiApState, "HotspotTile");
            return;
        }
        if (!z) {
            if (isAirplaneModeEnabled()) {
                return;
            }
            if (((DataSaverControllerImpl) this.mDataSaverController).isDataSaverEnabled()) {
                showDataSaverToast();
                return;
            }
        }
        if (!((KnoxStateMonitorImpl) this.mKnoxStateMonitor).isWifiHotspotTileBlocked() && !isBlockedByEASPolicy() && (DeviceState.isDataAllowed(this.mContext) || this.mSemWifiManager.isWifiSharingEnabled())) {
            if (isWifiApBlocked()) {
                showItPolicyToast();
                Log.d("HotspotTile", " handleClick  : isWifiApBlocked");
                return;
            }
            if (isBlockedByOthers()) {
                Log.d("HotspotTile", " handleClick  : isBlockedByOthers");
                return;
            }
            if (isSatModeEnabled()) {
                Log.d("HotspotTile", " handleClick  : isSatModeEnabled");
                return;
            }
            KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
            boolean z2 = keyguardStateControllerImpl.mShowing;
            SettingsHelper settingsHelper = this.mSettingsHelper;
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
            if (z2 && keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) && settingsHelper.isLockFunctionsEnabled()) {
                this.mActivityStarter.postQSRunnableDismissingKeyguard(new Runnable() { // from class: com.android.systemui.qs.tiles.HotspotTile$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        HotspotTile.this.handleClick(view);
                    }
                });
                return;
            }
            Log.d("HotspotTile", "isShowing() = " + keyguardStateControllerImpl.mShowing + ", isSecure() = " + keyguardUpdateMonitor.isSecure() + ", canSkipBouncer() = " + keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) + ", isLockFunctionsEnabled() = " + settingsHelper.isLockFunctionsEnabled());
            ((QSTile.BooleanState) this.mState).copyTo(this.mStateBeforeClick);
            if (z) {
                obj = null;
            } else {
                obj = SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING;
            }
            refreshState(obj);
            Log.d("HotspotTile", "setHotspotEnabled() is called in handleClick() " + z);
            setHotspotEnabled(z ^ true);
            return;
        }
        showItPolicyToast();
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleDestroy() {
        super.handleDestroy();
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSecondaryClick(View view) {
        handleSecondaryClick(false);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        super.handleSetListening(z);
        if (this.mListening == z) {
            return;
        }
        this.mListening = z;
        if (z) {
            refreshState(null);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        boolean z;
        QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
        Log.i("HotspotTile", "handleUpdateState");
        int i = 1;
        if (obj == SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING) {
            z = true;
        } else {
            z = false;
        }
        if (WifiEnterpriseRestrictionUtils.hasUserRestrictionFromT(this.mHost.getUserContext(), "no_wifi_tethering")) {
            Log.w("WifiEntResUtils", "Wi-Fi Tethering isn't available due to user restriction.");
        }
        checkIfRestrictionEnforcedByAdminOnly(booleanState, "no_config_tethering");
        if (obj instanceof CallbackInfo) {
            booleanState.value = ((CallbackInfo) obj).isHotspotEnabled;
        } else {
            HotspotControllerImpl hotspotControllerImpl = (HotspotControllerImpl) this.mHotspotController;
            booleanState.value = hotspotControllerImpl.isHotspotEnabled();
            hotspotControllerImpl.getNumConnectedDevices();
            ((DataSaverControllerImpl) this.mDataSaverController).isDataSaverEnabled();
        }
        booleanState.dualTarget = true;
        booleanState.label = getTileLabel();
        booleanState.isTransient = z;
        if (!z && !isBlockedByOthers()) {
            if (booleanState.value) {
                i = 2;
            }
            booleanState.state = i;
        } else {
            booleanState.state = 0;
        }
        booleanState.icon = this.mIcon;
        booleanState.secondaryLabel = "";
    }

    public final boolean isAirplaneModeEnabled() {
        Context context = this.mContext;
        if (Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 1) {
            return false;
        }
        SysUIToast.makeText(R.string.mobile_hotspot_toast_disable_airplne_mode, context, 0).show();
        return true;
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final boolean isAvailable() {
        if (((HotspotControllerImpl) this.mHotspotController).isHotspotSupported()) {
            if (!this.mHost.shouldBeHiddenByKnox(this.mTileSpec)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isBlockedByEASPolicy() {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) this.mContext.getApplicationContext().getSystemService("device_policy");
        if (devicePolicyManager != null && !devicePolicyManager.semGetAllowInternetSharing(null)) {
            return true;
        }
        return false;
    }

    public final boolean isDataSaverEnabled() {
        DataSaverController dataSaverController = this.mDataSaverController;
        if (dataSaverController != null && ((DataSaverControllerImpl) dataSaverController).isDataSaverEnabled()) {
            return true;
        }
        return false;
    }

    public final boolean isSatModeEnabled() {
        ServiceState serviceState;
        if (!SemCarrierFeature.getInstance().getBoolean(0, "CarrierFeature_Common_Support_Satellite", false, false) || (serviceState = ((TelephonyManager) this.mContext.getSystemService("phone")).getServiceState()) == null || !serviceState.isUsingNonTerrestrialNetwork()) {
            return false;
        }
        return true;
    }

    public final boolean isWifiApBlocked() {
        Cursor query = this.mContext.getContentResolver().query(Uri.parse("content://com.sec.knox.provider/RestrictionPolicy4"), null, "isWifiTetheringEnabled", null, null);
        if (query != null) {
            try {
                query.moveToFirst();
                return query.getString(query.getColumnIndex("isWifiTetheringEnabled")).equals("false");
            } finally {
                query.close();
            }
        }
        return false;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x022d, code lost:
    
        if (r5 == false) goto L135;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setHotspotEnabled(boolean r15) {
        /*
            Method dump skipped, instructions count: 732
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.HotspotTile.setHotspotEnabled(boolean):void");
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl
    public final boolean shouldAnnouncementBeDelayed() {
        if (this.mStateBeforeClick.value == ((QSTile.BooleanState) this.mState).value) {
            return true;
        }
        return false;
    }

    public final void showDataSaverToast() {
        boolean z;
        String string;
        SemCscFeature semCscFeature = SemCscFeature.getInstance();
        if (semCscFeature != null && (string = semCscFeature.getString("CscFeature_SmartManager_ConfigSubFeatures")) != null && string.contains("trafficmanager")) {
            z = true;
        } else {
            z = false;
        }
        Context context = this.mContext;
        if (z) {
            SystemUIDialog systemUIDialog = this.mDataSaverDialog;
            if (systemUIDialog == null || !systemUIDialog.isShowing()) {
                SystemUIDialog systemUIDialog2 = new SystemUIDialog(context, 2132018528);
                this.mDataSaverDialog = systemUIDialog2;
                systemUIDialog2.setTitle(17043335);
                this.mDataSaverDialog.setMessage(17043332);
                this.mDataSaverDialog.setNegativeButton(17043334, new DialogInterface.OnClickListener() { // from class: com.android.systemui.qs.tiles.HotspotTile.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        Intent intent = new Intent();
                        intent.setClassName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.SubSettings");
                        intent.putExtra(":settings:show_fragment", "com.samsung.android.settings.datausage.trafficmanager.ui.DataSaverSummaryCHN");
                        intent.addFlags(268468224);
                        HotspotTile hotspotTile = HotspotTile.this;
                        int i2 = HotspotTile.$r8$clinit;
                        hotspotTile.mContext.startActivity(intent);
                    }
                });
                this.mDataSaverDialog.setPositiveButton(17043333, null);
                this.mDataSaverDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.qs.tiles.HotspotTile.4
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        HotspotTile.this.refreshState(null);
                    }
                });
                SystemUIDialog.setWindowOnTop(this.mDataSaverDialog, false);
                this.mDataSaverDialog.show();
                this.mPanelInteractor.collapsePanels();
                return;
            }
            return;
        }
        SysUIToast.makeText(android.R.string.volume_icon_description_ringer, context, 0).show();
    }

    public final void handleSecondaryClick(boolean z) {
        Log.d("HotspotTile", "handleSecondaryClick");
        if (isAirplaneModeEnabled() || isBlockedByOthers()) {
            return;
        }
        KnoxStateMonitorImpl knoxStateMonitorImpl = (KnoxStateMonitorImpl) this.mKnoxStateMonitor;
        if (!knoxStateMonitorImpl.isWifiHotspotTileBlocked()) {
            EdmMonitor edmMonitor = knoxStateMonitorImpl.mEdmMonitor;
            if (!(edmMonitor != null && edmMonitor.mUserManager.hasUserRestriction("no_config_tethering", UserHandle.of(KeyguardUpdateMonitor.getCurrentUser()))) && !isBlockedByEASPolicy() && (DeviceState.isDataAllowed(this.mContext) || this.mSemWifiManager.isWifiSharingEnabled())) {
                if (isWifiApBlocked()) {
                    showItPolicyToast();
                    return;
                }
                if (isSatModeEnabled()) {
                    return;
                }
                if (((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing) {
                    KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
                    if (keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) && this.mSettingsHelper.isLockFunctionsEnabled()) {
                        this.mActivityStarter.postQSRunnableDismissingKeyguard(new HotspotTile$$ExternalSyntheticLambda0(this, 0));
                        return;
                    }
                }
                if (z) {
                    ((CentralSurfacesImpl) ((CentralSurfaces) Dependency.get(CentralSurfaces.class))).openQSPanelWithDetail("Hotspot");
                    return;
                } else {
                    showDetail(true);
                    return;
                }
            }
        }
        showItPolicyToast();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HotSpotDetailAdapter implements DetailAdapter, QSDetailItems.Callback {
        public static final /* synthetic */ int $r8$clinit = 0;
        public int deviceCount = 0;
        public LinearLayout mApLayout;
        public List mConnectedDevices;
        public View mConnectedListContainer;
        public QSDetailItems mItems;
        public TextView mMobileApName;
        public String mPassWord;
        public LinearLayout mPassWordLayout;
        public TextView mPassword;
        public WifiManager mWifiManager;

        public HotSpotDetailAdapter() {
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final View createDetailView(Context context, View view, ViewGroup viewGroup) {
            boolean z;
            StringBuilder sb = new StringBuilder("createDetailView convertView=");
            int i = 0;
            boolean z2 = true;
            if (view != null) {
                z = true;
            } else {
                z = false;
            }
            sb.append(z);
            sb.append(" mState.value ");
            int i2 = HotspotTile.$r8$clinit;
            HotspotTile hotspotTile = HotspotTile.this;
            ActionBarContextView$$ExternalSyntheticOutline0.m(sb, ((QSTile.BooleanState) hotspotTile.mState).value, "HotspotTile");
            WifiManager wifiManager = this.mWifiManager;
            Context context2 = hotspotTile.mContext;
            if (wifiManager == null) {
                this.mWifiManager = (WifiManager) context2.getSystemService(ImsProfile.PDN_WIFI);
            }
            View inflate = LayoutInflater.from(context2).inflate(R.layout.qs_detail_hotspot, viewGroup, false);
            this.mApLayout = (LinearLayout) inflate.findViewById(R.id.ap_layout);
            this.mPassWordLayout = (LinearLayout) inflate.findViewById(R.id.password_layout);
            this.mMobileApName = (TextView) inflate.findViewById(R.id.ap_name);
            this.mConnectedListContainer = inflate.findViewById(R.id.connected_list_container);
            this.mPassword = (TextView) inflate.findViewById(R.id.ap_password);
            ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.connected_devices);
            QSDetailItems convertOrInflate = QSDetailItems.convertOrInflate(context, viewGroup2);
            this.mItems = convertOrInflate;
            convertOrInflate.setTagSuffix("HotSpot");
            this.mItems.setCallback(this);
            viewGroup2.addView(this.mItems);
            Log.d("HotspotTile", "updateHotSpotApInfo");
            if (this.mWifiManager == null) {
                this.mWifiManager = (WifiManager) context2.getSystemService(ImsProfile.PDN_WIFI);
            }
            char c = 3;
            if (hotspotTile.getSemWifiManager() == null) {
                Log.e("HotspotTile", " updateHotSpotApInfo SemWifiManager is null");
            } else {
                SoftApConfiguration softApConfiguration = hotspotTile.mSemWifiManager.getSoftApConfiguration();
                String passphrase = softApConfiguration.getPassphrase();
                if (QSTileImpl.DEBUG) {
                    Log.d("HotspotTile", "mobileAp Name = " + softApConfiguration.getSsid());
                }
                this.mMobileApName.setText(softApConfiguration.getSsid());
                if (passphrase != null && passphrase.length() != 0) {
                    if (passphrase.equals("\tUSER#DEFINED#PWD#\n")) {
                        String string = Settings.Secure.getString(context2.getContentResolver(), "wifi_ap_random_password");
                        if (string != null && !string.equals("")) {
                            this.mPassword.setText(Settings.Secure.getString(context2.getContentResolver(), "wifi_ap_random_password"));
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            Random random = new Random(SystemClock.uptimeMillis());
                            StringBuffer stringBuffer = new StringBuffer();
                            for (int i3 = 0; i3 < 4; i3++) {
                                stringBuffer.append("abcdefghijklmnopqrstuvwxyz".charAt(random.nextInt(26)));
                            }
                            sb2.append(stringBuffer.toString());
                            Random random2 = new Random(SystemClock.uptimeMillis() + 1);
                            int i4 = 10;
                            for (int i5 = 1; i5 < 3; i5++) {
                                i4 *= 10;
                            }
                            sb2.append(String.format(String.format(Locale.US, "%%0%dd", 3), Integer.valueOf(random2.nextInt(i4 - 1))));
                            Random random3 = new Random(SystemClock.uptimeMillis());
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("!@#$/^&*()".charAt(random3.nextInt(10)));
                            sb2.append(stringBuffer2.toString());
                            String sb3 = sb2.toString();
                            Settings.Secure.putString(context2.getContentResolver(), "wifi_ap_random_password", sb3);
                            this.mPassword.setText(sb3);
                        }
                    } else {
                        this.mPassword.setText(passphrase);
                    }
                } else {
                    this.mPassword.setText(R.string.assistance_app_setting_item_none);
                }
                this.mApLayout.setContentDescription(this.mMobileApName.getText().toString());
                this.mPassWord = ", " + this.mPassword.getText().toString();
                this.mPassWordLayout.setContentDescription(context2.getResources().getString(R.string.mobile_hotspot_detail_password) + this.mPassWord);
            }
            int i6 = HotspotTile.$r8$clinit;
            if (hotspotTile.getSemWifiManager() == null) {
                Log.e("HotspotTile", " updateConnectedDeviceList SemWifiManager is null");
            } else {
                List wifiApStaListDetail = hotspotTile.mSemWifiManager.getWifiApStaListDetail();
                this.mConnectedDevices = wifiApStaListDetail;
                if (wifiApStaListDetail != null) {
                    this.deviceCount = wifiApStaListDetail.size();
                }
                Log.d("HotspotTile", "updateItems");
                if (this.mItems != null) {
                    int i7 = this.deviceCount;
                    QSDetailItems.Item[] itemArr = new QSDetailItems.Item[i7];
                    if (i7 != 0) {
                        int i8 = 0;
                        while (i8 < this.deviceCount) {
                            String[] split = ((String) this.mConnectedDevices.get(i8)).split("\n");
                            String str = split[2];
                            String str2 = split[c];
                            int i9 = HotspotTile.$r8$clinit;
                            Long valueOf = Long.valueOf(Long.parseLong(str2));
                            Context context3 = hotspotTile.mContext;
                            String format = DateFormat.getTimeFormat(context3).format(new Date(valueOf.longValue()));
                            StringBuilder m = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(DateFormat.format(DateFormat.getBestDateTimePattern(Locale.getDefault(), "MMM dd"), new Date(valueOf.longValue())).toString());
                            m.append(context3.getString(R.string.comma));
                            m.append(" ");
                            m.append(format);
                            String sb4 = m.toString();
                            QSDetailItems.Item item = new QSDetailItems.Item();
                            if ("(null)".equals(str)) {
                                str = context3.getString(R.string.mobile_hotspot_detail_connected_device);
                            }
                            item.iconVisibility = false;
                            item.itemPaddingAboveBelow = context3.getResources().getDimensionPixelSize(R.dimen.wifi_ap_item_above_below_padding);
                            item.line1textSize = context3.getResources().getDimensionPixelSize(R.dimen.wifi_ap_item_title_text_size);
                            item.line2textSize = context3.getResources().getDimensionPixelSize(R.dimen.wifi_ap_item_summary_text_size);
                            item.line1 = str;
                            item.line2 = sb4;
                            item.isClickable = false;
                            itemArr[i8] = item;
                            i8++;
                            c = 3;
                        }
                    }
                    this.mItems.setItems(itemArr);
                }
                Log.d("HotspotTile", " updateConnectedDeviceList mConnectedDevices = " + this.mConnectedDevices);
                if (!((QSTile.BooleanState) hotspotTile.mState).value || this.mConnectedDevices == null) {
                    z2 = false;
                }
                View view2 = this.mConnectedListContainer;
                if (view2 != null) {
                    if (!z2) {
                        i = 8;
                    }
                    view2.setVisibility(i);
                }
            }
            return inflate;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final int getMetricsCategory() {
            return VolteConstants.ErrorCode.CALL_CANCEL_TRANSFER_SUCCESS;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Intent getSettingsIntent() {
            int i = HotspotTile.$r8$clinit;
            if (HotspotTile.this.isDataSaverEnabled()) {
                return null;
            }
            return new Intent("android.settings.WIFI_AP_SETTINGS");
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final CharSequence getTitle() {
            int i = HotspotTile.$r8$clinit;
            return HotspotTile.this.mContext.getString(CvOperator.getHotspotStringID(R.string.mobile_hotspot_detail_title));
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final boolean getToggleEnabled() {
            StringBuilder sb = new StringBuilder(" getToggleEnabled - ");
            int i = HotspotTile.$r8$clinit;
            ActionBarContextView$$ExternalSyntheticOutline0.m(sb, ((QSTile.BooleanState) HotspotTile.this.mState).isTransient, "HotspotTile");
            return !((QSTile.BooleanState) r3.mState).isTransient;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Boolean getToggleState() {
            int i = HotspotTile.$r8$clinit;
            return Boolean.valueOf(((QSTile.BooleanState) HotspotTile.this.mState).value);
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final void setToggleState(boolean z) {
            Object obj;
            int i = HotspotTile.$r8$clinit;
            HotspotTile hotspotTile = HotspotTile.this;
            if (hotspotTile.getSemWifiManager() == null) {
                Log.e("HotspotTile", "getSemWifiManager is null");
                hotspotTile.fireToggleStateChanged(getToggleState().booleanValue());
                return;
            }
            int wifiApState = hotspotTile.getSemWifiManager().getWifiApState();
            Log.i("HotspotTile", "setToggleState:state," + z + ",apiState:" + wifiApState);
            if (z) {
                if (wifiApState != 11 && wifiApState != 14) {
                    hotspotTile.fireToggleStateChanged(getToggleState().booleanValue());
                    return;
                }
            } else if (wifiApState != 13 && wifiApState != 14) {
                hotspotTile.fireToggleStateChanged(getToggleState().booleanValue());
                return;
            }
            if (!((KnoxStateMonitorImpl) hotspotTile.mKnoxStateMonitor).isWifiHotspotTileBlocked() && !hotspotTile.isBlockedByEASPolicy()) {
                if (hotspotTile.isWifiApBlocked()) {
                    hotspotTile.showItPolicyToast();
                    hotspotTile.fireToggleStateChanged(getToggleState().booleanValue());
                    return;
                }
                if (hotspotTile.isDataSaverEnabled()) {
                    hotspotTile.showDataSaverToast();
                    hotspotTile.fireToggleStateChanged(getToggleState().booleanValue());
                    return;
                }
                if (hotspotTile.isSatModeEnabled()) {
                    hotspotTile.fireToggleStateChanged(getToggleState().booleanValue());
                    return;
                }
                KeyguardUpdateMonitor keyguardUpdateMonitor = hotspotTile.mKeyguardUpdateMonitor;
                boolean isKeyguardVisible = keyguardUpdateMonitor.isKeyguardVisible();
                SettingsHelper settingsHelper = hotspotTile.mSettingsHelper;
                boolean z2 = true;
                if (isKeyguardVisible && keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) && settingsHelper.isLockFunctionsEnabled()) {
                    hotspotTile.mActivityStarter.postQSRunnableDismissingKeyguard(new HotspotTile$$ExternalSyntheticLambda0(this, 1));
                    hotspotTile.fireToggleStateChanged(getToggleState().booleanValue());
                    return;
                }
                Log.d("HotspotTile", "isShowing() = " + keyguardUpdateMonitor.isKeyguardVisible() + ", isSecure() = " + keyguardUpdateMonitor.isSecure() + ", canSkipBouncer() = " + keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) + ", isLockFunctionsEnabled() = " + settingsHelper.isLockFunctionsEnabled());
                if (z) {
                    obj = SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING;
                } else {
                    obj = null;
                }
                hotspotTile.refreshState(obj);
                hotspotTile.setHotspotEnabled(z);
                boolean z3 = ((QSTile.BooleanState) hotspotTile.mState).value;
                int i2 = 0;
                if (!z3 || this.mConnectedDevices == null) {
                    z2 = false;
                }
                View view = this.mConnectedListContainer;
                if (view != null) {
                    if (!z2) {
                        i2 = 8;
                    }
                    view.setVisibility(i2);
                    return;
                }
                return;
            }
            hotspotTile.showItPolicyToast();
            hotspotTile.fireToggleStateChanged(getToggleState().booleanValue());
        }

        @Override // com.android.systemui.qs.QSDetailItems.Callback
        public final void onDetailItemClick(QSDetailItems.Item item) {
        }
    }
}
