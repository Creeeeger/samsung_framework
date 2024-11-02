package com.android.systemui.qs.tiles;

import android.app.admin.IDevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.CvOperator;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qp.SubscreenQsPanelController;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.qs.QSDetailItems;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.statusbar.connectivity.AccessPointController;
import com.android.systemui.statusbar.connectivity.AccessPointControllerImpl;
import com.android.systemui.statusbar.connectivity.IconState;
import com.android.systemui.statusbar.connectivity.NetworkController;
import com.android.systemui.statusbar.connectivity.NetworkControllerImpl;
import com.android.systemui.statusbar.connectivity.SignalCallback;
import com.android.systemui.statusbar.connectivity.WifiIndicators;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.wifitrackerlib.WifiEntry;
import com.android.wifitrackerlib.WifiPickerTracker;
import com.samsung.android.wifi.SemWifiApBleScanResult;
import com.samsung.android.wifi.SemWifiManager;
import com.sec.ims.settings.ImsProfile;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WifiTile extends SQSTileImpl {
    public static final Intent WIFI_SETTINGS = new Intent("android.settings.WIFI_SETTINGS");
    public final AccessPointController mAccessPointController;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final NetworkController mController;
    public final WifiDetailAdapter mDetailAdapter;
    public boolean mDetailListening;
    public final IDevicePolicyManager mDevicePolicyManager;
    public final QSTileImpl.AnimationIcon mDisable;
    public final DisplayLifecycle mDisplayLifecycle;
    public final QSTileImpl.AnimationIcon mEnable;
    public boolean mExpectDisabled;
    public final AnonymousClass1 mFoldStateChangedListener;
    public final Handler mHandler;
    public boolean mIsHavingConvertView;
    public boolean mIsTransientEnabled;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final PanelInteractor mPanelInteractor;
    public final WifiTileReceiver mReceiver;
    public final SettingsHelper mSettingsHelper;
    public final WifiSignalCallback mSignalCallback;
    public final QSTile.SignalState mStateBeforeClick;
    public final SubscreenQsPanelController mSubscreenQsPanelController;
    public WifiTileReceiver mSubscreenWifiTileReceiver;
    public boolean mWifiConnected;
    public final WifiManager mWifiManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CallbackInfo {
        public boolean activityIn;
        public boolean activityOut;
        public boolean connected;
        public boolean enabled;
        public int inetCondition;
        public boolean isTransient;
        public String ssid;
        public String statusLabel;
        public String wifiSignalContentDescription;
        public int wifiSignalIconId;

        public final String toString() {
            StringBuilder sb = new StringBuilder("CallbackInfo[enabled=");
            sb.append(this.enabled);
            sb.append(",connected=");
            sb.append(this.connected);
            sb.append(",wifiSignalIconId=");
            sb.append(this.wifiSignalIconId);
            sb.append(",ssid=");
            sb.append(this.ssid);
            sb.append(",activityIn=");
            sb.append(this.activityIn);
            sb.append(",activityOut=");
            sb.append(this.activityOut);
            sb.append(",wifiSignalContentDescription=");
            sb.append(this.wifiSignalContentDescription);
            sb.append(",isTransient=");
            sb.append(this.isTransient);
            sb.append(",statusLabel=");
            sb.append(this.statusLabel);
            sb.append(",inetCondition=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.inetCondition, ",wifiTestReported=false]");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class WifiDetailAdapter implements DetailAdapter, AccessPointController.AccessPointCallback, AccessPointController.WifiApBleStateChangeCallback, QSDetailItems.Callback {
        public static final /* synthetic */ int $r8$clinit = 0;
        public WifiEntry[] mAccessPoints;
        public ViewGroup mAvailable;
        public QSDetailItems mAvailableItems;
        public View mConnectedNetworksTitle;
        public ViewGroup mConntected;
        public ViewGroup mHotspotLive;
        public QSDetailItems mHotspotLiveItems;
        public QSDetailItems mItems;

        public WifiDetailAdapter() {
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final View createDetailView(Context context, View view, ViewGroup viewGroup) {
            boolean z;
            int i;
            Intent intent = WifiTile.WIFI_SETTINGS;
            WifiTile wifiTile = WifiTile.this;
            String str = wifiTile.TAG;
            StringBuilder sb = new StringBuilder("createDetailView convertView=");
            boolean z2 = false;
            if (view != null) {
                z = true;
            } else {
                z = false;
            }
            sb.append(z);
            sb.append(" State : ");
            sb.append(((QSTile.SignalState) wifiTile.mState).value);
            sb.append(" enabled : ");
            ActionBarContextView$$ExternalSyntheticOutline0.m(sb, wifiTile.mSignalCallback.mInfo.enabled, str);
            this.mAccessPoints = null;
            if (!wifiTile.mIsHavingConvertView) {
                view = null;
            }
            if (view == null) {
                view = LayoutInflater.from(wifiTile.mContext).inflate(R.layout.qs_detail_wifi, viewGroup, false);
                ViewGroup viewGroup2 = (ViewGroup) view.findViewById(R.id.current_network);
                this.mConntected = viewGroup2;
                this.mConnectedNetworksTitle = viewGroup2.findViewById(R.id.connected_networks_title);
                QSDetailItems convertOrInflate = QSDetailItems.convertOrInflate(context, this.mConntected);
                this.mItems = convertOrInflate;
                this.mConntected.addView(convertOrInflate);
                this.mItems.setTagSuffix("Wifi");
                ViewGroup viewGroup3 = (ViewGroup) view.findViewById(R.id.hotspot_live_networks);
                this.mHotspotLive = viewGroup3;
                ((TextView) viewGroup3.findViewById(R.id.hotspot_live_networks_title)).setText(CvOperator.getHotspotStringID(R.string.sec_wifi_hotspot_live_preference_category_title));
                QSDetailItems convertOrInflate2 = QSDetailItems.convertOrInflate(context, this.mHotspotLive);
                this.mHotspotLiveItems = convertOrInflate2;
                convertOrInflate2.setTagSuffix("Hotspot.Available");
                this.mHotspotLive.addView(this.mHotspotLiveItems);
                ViewGroup viewGroup4 = (ViewGroup) view.findViewById(R.id.available_networks);
                this.mAvailable = viewGroup4;
                QSDetailItems convertOrInflate3 = QSDetailItems.convertOrInflate(context, this.mAvailable);
                this.mAvailableItems = convertOrInflate3;
                convertOrInflate3.setTagSuffix("Wifi.Available");
                this.mAvailable.addView(this.mAvailableItems);
                wifiTile.mIsHavingConvertView = true;
            }
            QSDetailItems qSDetailItems = this.mAvailableItems;
            boolean z3 = ((QSTile.SignalState) wifiTile.mState).value;
            if (z3 && (this.mItems.getItemCount() > 0 || wifiTile.mWifiConnected)) {
                z2 = true;
            }
            StringBuilder m = RowView$$ExternalSyntheticOutline0.m("isConnectedVisible = ", z2, ",getItemCount() = ");
            m.append(this.mItems.getItemCount());
            m.append(",mWifiConnected = ");
            m.append(wifiTile.mWifiConnected);
            String sb2 = m.toString();
            String str2 = wifiTile.TAG;
            Log.d(str2, sb2);
            if (z3) {
                if (z2) {
                    i = R.string.quick_settings_wifi_detail_scanning_text;
                } else {
                    i = R.string.quick_settings_wifi_detail_turningon_text;
                }
            } else {
                i = R.string.quick_settings_wifi_detail_off_text;
            }
            qSDetailItems.setEmptyState(i);
            this.mItems.setCallback(this);
            SemWifiManager semWifiManager = ((AccessPointControllerImpl) wifiTile.mAccessPointController).mSemWifiManager;
            if (semWifiManager != null) {
                semWifiManager.setWifiSettingsForegroundState(1);
            }
            Log.d(str2, "adding wififoreground");
            this.mHotspotLiveItems.setCallback(this);
            this.mAvailableItems.setCallback(this);
            wifiTile.fireScanStateChanged(((QSTile.SignalState) wifiTile.mState).value);
            this.mConntected.setVisibility(8);
            this.mConnectedNetworksTitle.setVisibility(8);
            setItemsVisible(((QSTile.SignalState) wifiTile.mState).value);
            return view;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final int getMetricsCategory() {
            return 152;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Intent getSettingsIntent() {
            return WifiTile.WIFI_SETTINGS;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final CharSequence getTitle() {
            Intent intent = WifiTile.WIFI_SETTINGS;
            return WifiTile.this.mContext.getString(R.string.quick_settings_sec_wifi_label).trim();
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final boolean getToggleEnabled() {
            Intent intent = WifiTile.WIFI_SETTINGS;
            if (((QSTile.SignalState) WifiTile.this.mState).state != 0) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Boolean getToggleState() {
            Intent intent = WifiTile.WIFI_SETTINGS;
            return Boolean.valueOf(((QSTile.SignalState) WifiTile.this.mState).value);
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x007c  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00a4  */
        @Override // com.android.systemui.statusbar.connectivity.AccessPointController.AccessPointCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onAccessPointsChanged(java.util.List r12) {
            /*
                Method dump skipped, instructions count: 497
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.WifiTile.WifiDetailAdapter.onAccessPointsChanged(java.util.List):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00bc  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00c3  */
        @Override // com.android.systemui.qs.QSDetailItems.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onDetailItemClick(com.android.systemui.qs.QSDetailItems.Item r14) {
            /*
                Method dump skipped, instructions count: 372
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.WifiTile.WifiDetailAdapter.onDetailItemClick(com.android.systemui.qs.QSDetailItems$Item):void");
        }

        @Override // com.android.systemui.statusbar.connectivity.AccessPointController.AccessPointCallback
        public final void onSettingsActivityTriggered(Intent intent) {
            Intent intent2 = WifiTile.WIFI_SETTINGS;
            WifiTile.this.mActivityStarter.postStartActivityDismissingKeyguard(intent, 0);
        }

        public final void setItemsVisible(boolean z) {
            Intent intent = WifiTile.WIFI_SETTINGS;
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m(" setItemsVisible : ", z, WifiTile.this.TAG);
            QSDetailItems qSDetailItems = this.mItems;
            if (qSDetailItems != null && !z) {
                qSDetailItems.setItems(null);
                this.mAvailableItems.setItems(null);
                this.mItems.post(new Runnable() { // from class: com.android.systemui.qs.tiles.WifiTile.WifiDetailAdapter.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        WifiDetailAdapter.this.mConntected.setVisibility(8);
                        WifiDetailAdapter.this.mAvailable.findViewById(R.id.available_networks_group).setVisibility(8);
                    }
                });
                this.mHotspotLiveItems.setItems(null);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
        @Override // com.android.systemui.plugins.qs.DetailAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void setToggleState(boolean r8) {
            /*
                r7 = this;
                android.content.Intent r0 = com.android.systemui.qs.tiles.WifiTile.WIFI_SETTINGS
                boolean r0 = com.android.systemui.qs.tileimpl.QSTileImpl.DEBUG
                com.android.systemui.qs.tiles.WifiTile r1 = com.android.systemui.qs.tiles.WifiTile.this
                if (r0 == 0) goto L10
                java.lang.String r0 = r1.TAG
                java.lang.String r2 = "setToggleState "
                com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m(r2, r8, r0)
            L10:
                android.content.Context r0 = r1.mContext
                r2 = 153(0x99, float:2.14E-43)
                com.android.internal.logging.MetricsLogger.action(r0, r2, r8)
                java.lang.Class<com.android.systemui.knox.KnoxStateMonitor> r0 = com.android.systemui.knox.KnoxStateMonitor.class
                java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
                com.android.systemui.knox.KnoxStateMonitor r0 = (com.android.systemui.knox.KnoxStateMonitor) r0
                com.android.systemui.knox.KnoxStateMonitorImpl r0 = (com.android.systemui.knox.KnoxStateMonitorImpl) r0
                boolean r0 = r0.isWifiTileBlocked()
                if (r0 != 0) goto Lc9
                r0 = 0
                r3 = 0
                r4 = 1
                android.app.admin.IDevicePolicyManager r5 = r1.mDevicePolicyManager     // Catch: android.os.RemoteException -> L3a
                if (r5 == 0) goto L3a
                int r6 = android.app.ActivityManager.getCurrentUser()     // Catch: android.os.RemoteException -> L3a
                boolean r5 = r5.semGetAllowWifi(r3, r6)     // Catch: android.os.RemoteException -> L3a
                if (r5 != 0) goto L3a
                r5 = r4
                goto L3b
            L3a:
                r5 = r0
            L3b:
                if (r5 == 0) goto L3f
                goto Lc9
            L3f:
                com.android.systemui.statusbar.policy.KeyguardStateController r5 = r1.mKeyguardStateController
                com.android.systemui.statusbar.policy.KeyguardStateControllerImpl r5 = (com.android.systemui.statusbar.policy.KeyguardStateControllerImpl) r5
                boolean r5 = r5.mShowing
                if (r5 == 0) goto L7f
                com.android.keyguard.KeyguardUpdateMonitor r5 = r1.mKeyguardUpdateMonitor
                boolean r6 = r5.isSecure()
                if (r6 == 0) goto L7f
                int r6 = com.android.keyguard.KeyguardUpdateMonitor.getCurrentUser()
                boolean r5 = r5.getUserCanSkipBouncer(r6)
                if (r5 != 0) goto L7f
                com.android.systemui.util.SettingsHelper r5 = r1.mSettingsHelper
                boolean r5 = r5.isLockFunctionsEnabled()
                if (r5 == 0) goto L7f
                com.android.systemui.plugins.qs.QSTile$State r5 = r1.mState
                com.android.systemui.plugins.qs.QSTile$SignalState r5 = (com.android.systemui.plugins.qs.QSTile.SignalState) r5
                boolean r5 = r5.value
                if (r5 != r4) goto L7f
                com.android.systemui.qs.tiles.WifiTile$$ExternalSyntheticLambda1 r8 = new com.android.systemui.qs.tiles.WifiTile$$ExternalSyntheticLambda1
                r8.<init>(r7, r4)
                com.android.systemui.plugins.ActivityStarter r0 = r1.mActivityStarter
                r0.postQSRunnableDismissingKeyguard(r8)
                java.lang.Boolean r7 = r7.getToggleState()
                boolean r7 = r7.booleanValue()
                r1.fireToggleStateChanged(r7)
                return
            L7f:
                com.android.systemui.plugins.qs.QSTile$State r4 = r1.mState
                com.android.systemui.plugins.qs.QSTile$SignalState r4 = (com.android.systemui.plugins.qs.QSTile.SignalState) r4
                com.android.systemui.plugins.qs.QSTile$SignalState r5 = r1.mStateBeforeClick
                r4.copyTo(r5)
                if (r8 == 0) goto L8e
                android.content.Intent r3 = com.android.systemui.qs.tiles.WifiTile.WIFI_SETTINGS
                java.lang.Object r3 = com.android.systemui.qs.tileimpl.SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING
            L8e:
                r1.refreshState(r3)
                boolean r3 = com.android.systemui.qs.tileimpl.QSTileImpl.DEBUG
                if (r3 == 0) goto La1
                java.lang.String r3 = "setToggleState fireToggleStateChanged"
                java.lang.String r3 = com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m(r3, r8)
                java.lang.String r4 = r1.TAG
                android.util.Log.d(r4, r3)
            La1:
                r1.fireToggleStateChanged(r8)
                android.content.Context r3 = r1.mContext
                com.android.internal.logging.MetricsLogger.action(r3, r2, r8)
                com.android.systemui.statusbar.connectivity.NetworkController r1 = r1.mController
                com.android.systemui.statusbar.connectivity.NetworkControllerImpl r1 = (com.android.systemui.statusbar.connectivity.NetworkControllerImpl) r1
                r1.getClass()
                com.android.systemui.statusbar.connectivity.NetworkControllerImpl$7 r2 = new com.android.systemui.statusbar.connectivity.NetworkControllerImpl$7
                r2.<init>(r8)
                java.lang.Void[] r0 = new java.lang.Void[r0]
                r2.execute(r0)
                com.android.systemui.qs.QSDetailItems r7 = r7.mAvailableItems
                if (r8 == 0) goto Lc2
                r8 = 2131955223(0x7f130e17, float:1.9546967E38)
                goto Lc5
            Lc2:
                r8 = 2131955221(0x7f130e15, float:1.9546963E38)
            Lc5:
                r7.setEmptyState(r8)
                return
            Lc9:
                r1.showItPolicyToast()
                java.lang.Boolean r7 = r7.getToggleState()
                boolean r7 = r7.booleanValue()
                r1.fireToggleStateChanged(r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.WifiTile.WifiDetailAdapter.setToggleState(boolean):void");
        }

        public final void updateHotspotItems() {
            boolean z;
            ArrayList arrayList;
            char c;
            int i;
            int i2;
            if (UserHandle.myUserId() == 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                ArrayList arrayList2 = new ArrayList();
                WifiPickerTracker wifiPickerTracker = ((AccessPointControllerImpl) WifiTile.this.mAccessPointController).mWifiPickerTracker;
                synchronized (wifiPickerTracker.mLockAutoHotspot) {
                    Log.d("WifiPickerTracker", "getAutoHotspotEntries() : mBleAccessPoints " + wifiPickerTracker.mAutoHotspotEntries);
                    arrayList = new ArrayList(wifiPickerTracker.mAutoHotspotEntries);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    SemWifiApBleScanResult semWifiApBleScanResult = (SemWifiApBleScanResult) it.next();
                    QSDetailItems.Item item = new QSDetailItems.Item();
                    item.tag = semWifiApBleScanResult;
                    ((AccessPointControllerImpl) WifiTile.this.mAccessPointController).getClass();
                    int i3 = semWifiApBleScanResult.mBLERssi;
                    if (i3 >= -60) {
                        c = 4;
                    } else if (i3 >= -70) {
                        c = 3;
                    } else if (i3 >= -80) {
                        c = 2;
                    } else if (i3 >= -90) {
                        c = 1;
                    } else {
                        c = 0;
                    }
                    int i4 = semWifiApBleScanResult.mNetworkType;
                    int i5 = SemWifiApBleScanResult.MHS_WIFI_6_NETWORK;
                    int[][] iArr = AccessPointControllerImpl.ICONS_WIFI6;
                    if (i4 == i5) {
                        if (semWifiApBleScanResult.mSecurity == 1) {
                            i = iArr[c][1];
                        } else {
                            i = iArr[c][0];
                        }
                    } else {
                        int i6 = SemWifiApBleScanResult.MHS_WIFI_6E_NETWORK;
                        if (i4 == i6) {
                            int i7 = semWifiApBleScanResult.mSecurity;
                            int[][] iArr2 = AccessPointControllerImpl.ICONS_WIFI6E;
                            if (i7 == 1) {
                                i = iArr2[c][1];
                            } else {
                                i = iArr2[c][0];
                            }
                        } else if (i4 == i6) {
                            if (semWifiApBleScanResult.mSecurity == 1) {
                                i = iArr[c][1];
                            } else {
                                i = iArr[c][0];
                            }
                        } else {
                            int i8 = semWifiApBleScanResult.mSecurity;
                            int[][] iArr3 = AccessPointControllerImpl.ICONS_WIFI;
                            if (i8 == 1) {
                                i = iArr3[c][1];
                            } else {
                                i = iArr3[c][0];
                            }
                        }
                    }
                    item.iconResId = i;
                    item.line1 = semWifiApBleScanResult.mSSID;
                    if (WifiTile.this.mWifiManager != null && semWifiApBleScanResult.mWifiMac != null) {
                        ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("updateHotspotItems() - status getting from res.mWifiMac->"), semWifiApBleScanResult.mWifiMac, AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder(), WifiTile.this.TAG, ".AutoHotspot"));
                        AccessPointController accessPointController = WifiTile.this.mAccessPointController;
                        String str = semWifiApBleScanResult.mWifiMac;
                        SemWifiManager semWifiManager = ((AccessPointControllerImpl) accessPointController).mSemWifiManager;
                        if (semWifiManager != null) {
                            i2 = semWifiManager.getSmartApConnectedStatusFromScanResult(str);
                        } else {
                            i2 = 0;
                        }
                        ExifInterface$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateHotspotItems() - ConnectedStatus-> ", i2, " res.mWifiMac-> "), semWifiApBleScanResult.mWifiMac, AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder(), WifiTile.this.TAG, ".AutoHotspot"));
                        if (i2 == 3) {
                            ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("updateHotspotItems() - This mac is connected (do nothing) res.mWifiMac-> "), semWifiApBleScanResult.mWifiMac, AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder(), WifiTile.this.TAG, ".AutoHotspot"));
                        } else {
                            StringBuilder sb = new StringBuilder();
                            sb.append(semWifiApBleScanResult.mUserName);
                            if (semWifiApBleScanResult.mBattery <= 15) {
                                item.isDisabled = true;
                                item.isClickable = false;
                                sb.append(WifiTile.this.mContext.getString(R.string.comma));
                                sb.append(" ");
                                sb.append(WifiTile.this.mContext.getString(R.string.hotspot_live_ap_low_battery_summary));
                            } else if (semWifiApBleScanResult.isDataSaverEnabled) {
                                item.isDisabled = true;
                                item.isClickable = false;
                                sb.append(WifiTile.this.mContext.getString(R.string.comma));
                                sb.append(" ");
                                sb.append(WifiTile.this.mContext.getString(R.string.wifi_ap_mobile_hotspot_dialog_data_saver_is_on));
                            } else if (semWifiApBleScanResult.isMobileDataLimitReached) {
                                item.isDisabled = true;
                                item.isClickable = false;
                                sb.append(WifiTile.this.mContext.getString(R.string.comma));
                                sb.append(" ");
                                sb.append(WifiTile.this.mContext.getString(R.string.wifi_ap_data_limit_reached));
                            } else if (semWifiApBleScanResult.isNotValidNetwork) {
                                sb.append(WifiTile.this.mContext.getString(R.string.comma));
                                sb.append(" ");
                                sb.append(WifiTile.this.mContext.getString(R.string.smart_tethering_internet_not_available));
                            } else if (i2 != 1 && i2 != 2) {
                                if (i2 < 0) {
                                    sb.append(WifiTile.this.mContext.getString(R.string.comma));
                                    sb.append(" ");
                                    sb.append(WifiTile.this.mContext.getString(R.string.smart_tethering_ap_connection_failed_summary));
                                    item.isDisabled = true;
                                }
                            } else {
                                sb.append(WifiTile.this.mContext.getString(R.string.comma));
                                sb.append(" ");
                                sb.append(WifiTile.this.mContext.getString(R.string.smart_tethering_ap_connecting_summary));
                            }
                            Log.d(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder(), WifiTile.this.TAG, ".AutoHotspot"), "item.isDisabled : " + item.isDisabled + " item.isClickable : " + item.isClickable);
                            item.line2 = sb.toString();
                            arrayList2.add(item);
                        }
                    }
                }
                QSDetailItems qSDetailItems = this.mHotspotLiveItems;
                if (qSDetailItems != null) {
                    qSDetailItems.setItems((QSDetailItems.Item[]) arrayList2.toArray(new QSDetailItems.Item[arrayList2.size()]));
                    this.mHotspotLiveItems.post(new Runnable() { // from class: com.android.systemui.qs.tiles.WifiTile.WifiDetailAdapter.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i9;
                            if (WifiDetailAdapter.this.mHotspotLiveItems.getItemCount() > 0) {
                                i9 = 0;
                            } else {
                                i9 = 8;
                            }
                            WifiDetailAdapter.this.mHotspotLive.setVisibility(i9);
                        }
                    });
                    return;
                }
                return;
            }
            ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("isPrimaryUser: ", z, ".AutoHotspot");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class WifiSignalCallback implements SignalCallback {
        public final CallbackInfo mInfo = new CallbackInfo();

        public WifiSignalCallback() {
        }

        @Override // com.android.systemui.statusbar.connectivity.SignalCallback
        public final void setWifiIndicators(WifiIndicators wifiIndicators) {
            Intent intent = WifiTile.WIFI_SETTINGS;
            boolean z = QSTileImpl.DEBUG;
            WifiTile wifiTile = WifiTile.this;
            if (z) {
                ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("onWifiSignalChanged enabled="), wifiIndicators.enabled, wifiTile.TAG);
            }
            if (z) {
                ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("isTransient ="), wifiIndicators.isTransient, wifiTile.TAG);
            }
            IconState iconState = wifiIndicators.qsIcon;
            if (iconState == null) {
                return;
            }
            boolean z2 = wifiIndicators.enabled;
            CallbackInfo callbackInfo = this.mInfo;
            callbackInfo.enabled = z2;
            callbackInfo.connected = iconState.visible;
            callbackInfo.wifiSignalIconId = iconState.icon;
            callbackInfo.ssid = wifiIndicators.description;
            callbackInfo.activityIn = wifiIndicators.activityIn;
            callbackInfo.activityOut = wifiIndicators.activityOut;
            callbackInfo.wifiSignalContentDescription = iconState.contentDescription;
            callbackInfo.isTransient = wifiIndicators.isTransient;
            callbackInfo.statusLabel = wifiIndicators.statusLabel;
            callbackInfo.inetCondition = wifiIndicators.inetCondition;
            wifiTile.refreshState(null);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class WifiTileReceiver extends BroadcastReceiver {
        public WifiTileReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.samsung.android.server.wifi.softap.smarttethering.collapseQuickPanel")) {
                Intent intent2 = WifiTile.WIFI_SETTINGS;
                if (QSTileImpl.DEBUG) {
                    Log.d(WifiTile.this.TAG + ".AutoHotspot", "BT Paring dialog shown. Collapsing QuickPanel");
                }
                WifiTile wifiTile = WifiTile.this;
                if (!((KeyguardStateControllerImpl) wifiTile.mKeyguardStateController).mShowing) {
                    wifiTile.mPanelInteractor.forceCollapsePanels();
                }
            }
            if (intent.getAction().equals("WIFI_STATE_CHANGE")) {
                WifiTile.this.handleClick(null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.android.systemui.qs.tiles.WifiTile$1, java.lang.Object] */
    public WifiTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, NetworkController networkController, AccessPointController accessPointController, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardStateController keyguardStateController, SettingsHelper settingsHelper, PanelInteractor panelInteractor, DisplayLifecycle displayLifecycle, BroadcastDispatcher broadcastDispatcher) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        this.mEnable = new QSTileImpl.AnimationIcon(R.drawable.quick_panel_icon_wifi_on, R.drawable.quick_panel_icon_wifi_on_013);
        this.mDisable = new QSTileImpl.AnimationIcon(R.drawable.quick_panel_icon_wifi_off, R.drawable.quick_panel_icon_wifi_on_009);
        WifiSignalCallback wifiSignalCallback = new WifiSignalCallback();
        this.mSignalCallback = wifiSignalCallback;
        QSTile.SignalState signalState = new QSTile.SignalState();
        this.mStateBeforeClick = signalState;
        this.mSubscreenQsPanelController = null;
        this.mIsTransientEnabled = false;
        this.mWifiConnected = false;
        ?? r8 = new DisplayLifecycle.Observer() { // from class: com.android.systemui.qs.tiles.WifiTile.1
            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public final void onFolderStateChanged(boolean z) {
                if (!QpRune.QUICK_PANEL_SUBSCREEN) {
                    WifiTile wifiTile = WifiTile.this;
                    if (z) {
                        wifiTile.mSubscreenQsPanelController.getInstance(1).registerReceiver(false);
                    } else {
                        wifiTile.mSubscreenQsPanelController.getInstance(1).unRegisterReceiver(false);
                    }
                }
            }
        };
        this.mFoldStateChangedListener = r8;
        this.mHandler = handler;
        this.mController = networkController;
        this.mAccessPointController = accessPointController;
        this.mDetailAdapter = new WifiDetailAdapter();
        networkController.observe(((QSTileImpl) this).mLifecycle, wifiSignalCallback);
        signalState.spec = ImsProfile.PDN_WIFI;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardStateController = keyguardStateController;
        this.mDevicePolicyManager = IDevicePolicyManager.Stub.asInterface(ServiceManager.getService("device_policy"));
        this.mWifiManager = (WifiManager) this.mContext.getSystemService(ImsProfile.PDN_WIFI);
        this.mSettingsHelper = settingsHelper;
        this.mIsHavingConvertView = false;
        this.mPanelInteractor = panelInteractor;
        if (QpRune.QUICK_SETTINGS_SUBSCREEN) {
            this.mDisplayLifecycle = displayLifecycle;
            this.mSubscreenQsPanelController = (SubscreenQsPanelController) Dependency.get(SubscreenQsPanelController.class);
            if (displayLifecycle != 0) {
                displayLifecycle.addObserver(r8);
            }
        } else {
            this.mFoldStateChangedListener = null;
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN) {
            this.mBroadcastDispatcher = broadcastDispatcher;
            if (this.mSubscreenWifiTileReceiver == null && broadcastDispatcher != null) {
                WifiTileReceiver wifiTileReceiver = new WifiTileReceiver();
                this.mSubscreenWifiTileReceiver = wifiTileReceiver;
                broadcastDispatcher.registerReceiver(wifiTileReceiver, new IntentFilter("WIFI_STATE_CHANGE"), null, UserHandle.ALL, 2, "com.samsung.systemui.permission.WIFI_STATE_CHANGE");
            }
        }
        WifiTileReceiver wifiTileReceiver2 = new WifiTileReceiver();
        this.mReceiver = wifiTileReceiver2;
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).registerReceiver(new IntentFilter("com.samsung.android.server.wifi.softap.smarttethering.collapseQuickPanel"), wifiTileReceiver2);
    }

    public static String removeDoubleQuotes(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length > 1 && str.charAt(0) == '\"') {
            int i = length - 1;
            if (str.charAt(i) == '\"') {
                try {
                    String replaceAll = str.substring(1, i).replaceAll("\\s+$", "");
                    if (replaceAll.length() <= 0) {
                        return null;
                    }
                    return replaceAll;
                } catch (NullPointerException unused) {
                    return null;
                }
            }
            return str;
        }
        return str;
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final DetailAdapter getDetailAdapter() {
        return this.mDetailAdapter;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isWifiTileBlocked()) {
            showItPolicyToast();
        }
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 126;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.quick_settings_sec_wifi_label).trim();
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(final View view) {
        Object obj;
        if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isWifiTileBlocked()) {
            if (QpRune.QUICK_PANEL_SUBSCREEN) {
                showItPolicyToastOnSubScreen(getSubScreenContext());
                return;
            } else {
                showItPolicyToast();
                return;
            }
        }
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
        boolean z = keyguardStateControllerImpl.mShowing;
        DisplayLifecycle displayLifecycle = this.mDisplayLifecycle;
        ActivityStarter activityStarter = this.mActivityStarter;
        SettingsHelper settingsHelper = this.mSettingsHelper;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
        if (z && keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) && settingsHelper.isLockFunctionsEnabled() && ((QSTile.SignalState) this.mState).value) {
            if (QpRune.QUICK_PANEL_SUBSCREEN && displayLifecycle != null && !displayLifecycle.mIsFolderOpened) {
                ((SubscreenUtil) Dependency.get(SubscreenUtil.class)).showLockscreenOnCoverScreen(this.mContext, "WIFI_STATE_CHANGE");
                return;
            } else {
                activityStarter.postQSRunnableDismissingKeyguard(new Runnable() { // from class: com.android.systemui.qs.tiles.WifiTile$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        WifiTile.this.handleClick(view);
                    }
                });
                return;
            }
        }
        StringBuilder sb = new StringBuilder("isShowing() = ");
        sb.append(keyguardStateControllerImpl.mShowing);
        sb.append(", isSecure() = ");
        sb.append(keyguardUpdateMonitor.isSecure());
        sb.append(", canSkipBouncer() = ");
        sb.append(!keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()));
        sb.append(", isLockFunctionsEnabled() = ");
        sb.append(settingsHelper.isLockFunctionsEnabled());
        String sb2 = sb.toString();
        String str = this.TAG;
        Log.d(str, sb2);
        int i = 0;
        if (!((AccessPointControllerImpl) this.mAccessPointController).canConfigWifi()) {
            activityStarter.postStartActivityDismissingKeyguard(new Intent("android.settings.WIFI_SETTINGS"), 0);
            return;
        }
        QSTile.SignalState signalState = (QSTile.SignalState) this.mState;
        if (signalState.state == 0) {
            Log.d(str, "handleClick pass enabling or disabling ");
            return;
        }
        signalState.copyTo(this.mStateBeforeClick);
        QSTile.SignalState signalState2 = (QSTile.SignalState) this.mState;
        if (!signalState2.value && signalState2.state == 2) {
            signalState2.value = this.mSignalCallback.mInfo.enabled;
            Log.d(str, "handleClick refresh value ");
        }
        boolean z2 = ((QSTile.SignalState) this.mState).value;
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("handleClick ", z2, str);
        if (z2) {
            obj = null;
        } else {
            obj = SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING;
        }
        refreshState(obj);
        NetworkControllerImpl networkControllerImpl = (NetworkControllerImpl) this.mController;
        networkControllerImpl.getClass();
        new NetworkControllerImpl.AnonymousClass7(!z2).execute(new Void[0]);
        this.mExpectDisabled = z2;
        if (z2) {
            this.mHandler.postDelayed(new WifiTile$$ExternalSyntheticLambda1(this, i), 350L);
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN && displayLifecycle != null && !displayLifecycle.mIsFolderOpened) {
            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPBE2015");
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleDestroy() {
        WifiTileReceiver wifiTileReceiver;
        BroadcastDispatcher broadcastDispatcher;
        super.handleDestroy();
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).unregisterReceiver(this.mReceiver);
        SemWifiManager semWifiManager = ((AccessPointControllerImpl) this.mAccessPointController).mSemWifiManager;
        if (semWifiManager != null) {
            semWifiManager.setWifiSettingsForegroundState(0);
        }
        String str = this.TAG;
        Log.d(str, "removing wififoreground");
        try {
            this.mUiHandler.post(new Runnable() { // from class: com.android.systemui.qs.tiles.WifiTile.2
                @Override // java.lang.Runnable
                public final void run() {
                    DisplayLifecycle displayLifecycle;
                    WifiTile wifiTile = WifiTile.this;
                    AnonymousClass1 anonymousClass1 = wifiTile.mFoldStateChangedListener;
                    if (anonymousClass1 != null && (displayLifecycle = wifiTile.mDisplayLifecycle) != null) {
                        displayLifecycle.removeObserver(anonymousClass1);
                    }
                }
            });
        } catch (Exception e) {
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("destroy exception:", Log.getStackTraceString(e), str);
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN && (wifiTileReceiver = this.mSubscreenWifiTileReceiver) != null && (broadcastDispatcher = this.mBroadcastDispatcher) != null) {
            broadcastDispatcher.unregisterReceiver(wifiTileReceiver);
            this.mSubscreenWifiTileReceiver = null;
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSecondaryClick(View view) {
        if (!((AccessPointControllerImpl) this.mAccessPointController).canConfigWifi()) {
            this.mActivityStarter.postStartActivityDismissingKeyguard(new Intent("android.settings.WIFI_SETTINGS"), 0);
            return;
        }
        showDetail(true);
        if (this.mWifiManager != null) {
            Message message = new Message();
            message.what = 74;
            Bundle bundle = new Bundle();
            bundle.putBoolean("enable", false);
            bundle.putBoolean("lock", true);
            message.obj = bundle;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0114  */
    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleUpdateState(com.android.systemui.plugins.qs.QSTile.State r13, java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.WifiTile.handleUpdateState(com.android.systemui.plugins.qs.QSTile$State, java.lang.Object):void");
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final boolean isAvailable() {
        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi")) {
            if (!this.mHost.shouldBeHiddenByKnox(this.mTileSpec)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.SignalState();
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final void setDetailListening(boolean z) {
        if (this.mDetailListening == z) {
            return;
        }
        this.mDetailListening = z;
        WifiDetailAdapter wifiDetailAdapter = this.mDetailAdapter;
        AccessPointController accessPointController = this.mAccessPointController;
        if (z) {
            AccessPointControllerImpl accessPointControllerImpl = (AccessPointControllerImpl) accessPointController;
            accessPointControllerImpl.addAccessPointCallback(wifiDetailAdapter);
            ArrayList arrayList = accessPointControllerImpl.mWifiApBleCallbacks;
            arrayList.add(wifiDetailAdapter);
            if (arrayList.size() == 1) {
                accessPointControllerImpl.mSemWifiManager.registerWifiApSmartCallback(accessPointControllerImpl.mSemWifiApSmartCallback, accessPointControllerImpl.mWifiPickerTrackerFactory.mContext.getMainExecutor());
                return;
            }
            return;
        }
        AccessPointControllerImpl accessPointControllerImpl2 = (AccessPointControllerImpl) accessPointController;
        accessPointControllerImpl2.removeAccessPointCallback(wifiDetailAdapter);
        ArrayList arrayList2 = accessPointControllerImpl2.mWifiApBleCallbacks;
        arrayList2.remove(wifiDetailAdapter);
        if (arrayList2.size() == 0) {
            accessPointControllerImpl2.mSemWifiManager.unregisterWifiApSmartCallback(accessPointControllerImpl2.mSemWifiApSmartCallback);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl
    public final boolean shouldAnnouncementBeDelayed() {
        if (this.mStateBeforeClick.value == ((QSTile.SignalState) this.mState).value) {
            return true;
        }
        return false;
    }
}
