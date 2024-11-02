package com.android.systemui.statusbar.connectivity;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiNetworkScoreCache;
import android.os.Handler;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.Html;
import com.android.internal.util.Preconditions;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.settingslib.SignalIcon$IconGroup;
import com.android.settingslib.SignalIcon$MobileIconGroup;
import com.android.settingslib.graph.SignalDrawable;
import com.android.settingslib.mobile.TelephonyIcons;
import com.android.settingslib.wifi.WifiStatusTracker;
import com.android.systemui.R;
import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WifiSignalController extends SignalController {
    public final Handler mBgHandler;
    public final SignalIcon$MobileIconGroup mCarrierMergedWifiIconGroup;
    public final boolean mHasMobileDataFeature;
    public final SignalIcon$IconGroup mUnmergedWifiIconGroup;
    public final WifiManager mWifiManager;
    public final WifiStatusTracker mWifiTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class WifiTrafficStateCallback implements WifiManager.TrafficStateCallback {
        public /* synthetic */ WifiTrafficStateCallback(WifiSignalController wifiSignalController, int i) {
            this();
        }

        public final void onStateChanged(int i) {
            WifiSignalController.this.setActivity(i);
        }

        private WifiTrafficStateCallback() {
        }
    }

    public WifiSignalController(Context context, boolean z, CallbackHandler callbackHandler, NetworkControllerImpl networkControllerImpl, WifiManager wifiManager, WifiStatusTrackerFactory wifiStatusTrackerFactory, Handler handler) {
        super("WifiSignalController", context, 1, callbackHandler, networkControllerImpl);
        SignalIcon$IconGroup signalIcon$IconGroup = WifiIcons.UNMERGED_WIFI;
        this.mUnmergedWifiIconGroup = signalIcon$IconGroup;
        this.mCarrierMergedWifiIconGroup = TelephonyIcons.CARRIER_MERGED_WIFI;
        this.mBgHandler = handler;
        this.mWifiManager = wifiManager;
        int i = 0;
        WifiSignalController$$ExternalSyntheticLambda0 wifiSignalController$$ExternalSyntheticLambda0 = new WifiSignalController$$ExternalSyntheticLambda0(this, 0);
        wifiStatusTrackerFactory.getClass();
        WifiStatusTracker wifiStatusTracker = new WifiStatusTracker(wifiStatusTrackerFactory.mContext, wifiStatusTrackerFactory.mWifiManager, wifiStatusTrackerFactory.mNetworkScoreManager, wifiStatusTrackerFactory.mConnectivityManager, wifiSignalController$$ExternalSyntheticLambda0, wifiStatusTrackerFactory.mMainHandler, handler);
        this.mWifiTracker = wifiStatusTracker;
        WifiNetworkScoreCache wifiNetworkScoreCache = wifiStatusTracker.mWifiNetworkScoreCache;
        wifiStatusTracker.mNetworkScoreManager.registerNetworkScoreCache(1, wifiNetworkScoreCache, 1);
        wifiNetworkScoreCache.registerListener(wifiStatusTracker.mCacheListener);
        ConnectivityManager connectivityManager = wifiStatusTracker.mConnectivityManager;
        NetworkRequest networkRequest = wifiStatusTracker.mNetworkRequest;
        WifiStatusTracker.AnonymousClass1 anonymousClass1 = wifiStatusTracker.mNetworkCallback;
        Handler handler2 = wifiStatusTracker.mHandler;
        connectivityManager.registerNetworkCallback(networkRequest, anonymousClass1, handler2);
        connectivityManager.registerDefaultNetworkCallback(wifiStatusTracker.mDefaultNetworkCallback, handler2);
        this.mHasMobileDataFeature = z;
        if (wifiManager != null) {
            wifiManager.registerTrafficStateCallback(context.getMainExecutor(), new WifiTrafficStateCallback(this, i));
        }
        WifiState wifiState = (WifiState) this.mCurrentState;
        ((WifiState) this.mLastState).iconGroup = signalIcon$IconGroup;
        wifiState.iconGroup = signalIcon$IconGroup;
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalController
    public final ConnectivityState cleanState() {
        return new WifiState();
    }

    public final void copyWifiStates() {
        SignalIcon$IconGroup signalIcon$IconGroup;
        Preconditions.checkState(this.mBgHandler.getLooper().isCurrentThread());
        ConnectivityState connectivityState = this.mCurrentState;
        WifiStatusTracker wifiStatusTracker = this.mWifiTracker;
        ((WifiState) connectivityState).enabled = wifiStatusTracker.enabled;
        ((WifiState) connectivityState).isDefault = wifiStatusTracker.isDefaultNetwork;
        ((WifiState) connectivityState).connected = wifiStatusTracker.connected;
        ((WifiState) connectivityState).ssid = wifiStatusTracker.ssid;
        ((WifiState) connectivityState).rssi = wifiStatusTracker.rssi;
        ((WifiState) connectivityState).level = wifiStatusTracker.level;
        ((WifiState) connectivityState).statusLabel = wifiStatusTracker.statusLabel;
        ((WifiState) connectivityState).isCarrierMerged = wifiStatusTracker.isCarrierMerged;
        ((WifiState) connectivityState).subId = wifiStatusTracker.subId;
        WifiState wifiState = (WifiState) connectivityState;
        if (((WifiState) connectivityState).isCarrierMerged) {
            signalIcon$IconGroup = this.mCarrierMergedWifiIconGroup;
        } else {
            signalIcon$IconGroup = this.mUnmergedWifiIconGroup;
        }
        wifiState.iconGroup = signalIcon$IconGroup;
    }

    public final void doInBackground(Runnable runnable) {
        Thread currentThread = Thread.currentThread();
        Handler handler = this.mBgHandler;
        if (currentThread != handler.getLooper().getThread()) {
            handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalController
    public final void dump(PrintWriter printWriter) {
        String[] strArr;
        super.dump(printWriter);
        WifiStatusTracker wifiStatusTracker = this.mWifiTracker;
        wifiStatusTracker.getClass();
        printWriter.println("  - WiFi Network History ------");
        int i = 0;
        int i2 = 0;
        while (true) {
            strArr = wifiStatusTracker.mHistory;
            if (i >= 32) {
                break;
            }
            if (strArr[i] != null) {
                i2++;
            }
            i++;
        }
        int i3 = wifiStatusTracker.mHistoryIndex + 32;
        while (true) {
            i3--;
            if (i3 >= (wifiStatusTracker.mHistoryIndex + 32) - i2) {
                StringBuilder sb = new StringBuilder("  Previous WiFiNetwork(");
                sb.append((wifiStatusTracker.mHistoryIndex + 32) - i3);
                sb.append("): ");
                KeyboardUI$$ExternalSyntheticOutline0.m(sb, strArr[i3 & 31], printWriter);
            } else {
                dumpTableData(printWriter);
                return;
            }
        }
    }

    public final int getCurrentIconIdForCarrierWifi() {
        WifiState wifiState = (WifiState) this.mCurrentState;
        int i = wifiState.level;
        int maxSignalLevel = this.mWifiManager.getMaxSignalLevel() + 1;
        boolean z = !wifiState.isDefaultConnectionValidated;
        int i2 = 0;
        if (wifiState.connected) {
            int i3 = SignalDrawable.$r8$clinit;
            if (z) {
                i2 = 2;
            }
            return (maxSignalLevel << 8) | (i2 << 16) | i;
        }
        if (!wifiState.enabled) {
            return 0;
        }
        int i4 = SignalDrawable.$r8$clinit;
        return (maxSignalLevel << 8) | 131072 | 0;
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalController
    public final void notifyListeners(SignalCallback signalCallback) {
        boolean z;
        boolean z2;
        int i;
        boolean z3;
        boolean z4;
        String str;
        int i2;
        IconState iconState;
        int i3;
        String str2;
        ConnectivityState connectivityState = this.mCurrentState;
        boolean z5 = ((WifiState) connectivityState).isCarrierMerged;
        String str3 = null;
        Context context = this.mContext;
        boolean z6 = true;
        if (z5) {
            boolean z7 = ((WifiState) connectivityState).isDefault;
            NetworkControllerImpl networkControllerImpl = this.mNetworkController;
            if (z7 || !(!networkControllerImpl.mAirplaneMode)) {
                String charSequence = getTextIfExists(getContentDescription()).toString();
                SignalIcon$MobileIconGroup signalIcon$MobileIconGroup = this.mCarrierMergedWifiIconGroup;
                CharSequence textIfExists = getTextIfExists(signalIcon$MobileIconGroup.dataContentDescription);
                String obj = Html.fromHtml(textIfExists.toString(), 0).toString();
                WifiState wifiState = (WifiState) connectivityState;
                if (wifiState.inetCondition == 0) {
                    str = context.getString(R.string.data_connection_no_internet);
                } else {
                    str = obj;
                }
                if (!wifiState.enabled || !wifiState.connected || !wifiState.isDefault) {
                    z6 = false;
                }
                IconState iconState2 = new IconState(z6, getCurrentIconIdForCarrierWifi(), charSequence);
                int i4 = signalIcon$MobileIconGroup.dataType;
                if (z6) {
                    i2 = i4;
                } else {
                    i2 = 0;
                }
                if (z6) {
                    i3 = i4;
                    iconState = new IconState(wifiState.connected, getCurrentIconIdForCarrierWifi(), charSequence);
                } else {
                    iconState = null;
                    i3 = 0;
                }
                MobileSignalController controllerWithSubId = networkControllerImpl.getControllerWithSubId(wifiState.subId);
                if (controllerWithSubId != null) {
                    str2 = controllerWithSubId.mPhone.getSimOperatorName();
                } else {
                    str2 = "";
                }
                signalCallback.setMobileDataIndicators(new MobileDataIndicators(iconState2, iconState, i2, i3, wifiState.activityIn, wifiState.activityOut, str, textIfExists, str2, wifiState.subId, false, true));
                return;
            }
            return;
        }
        boolean z8 = context.getResources().getBoolean(R.bool.config_showWifiIndicatorWhenEnabled);
        WifiState wifiState2 = (WifiState) connectivityState;
        if (wifiState2.enabled && ((wifiState2.connected && wifiState2.inetCondition == 1) || !this.mHasMobileDataFeature || wifiState2.isDefault || z8)) {
            z = true;
        } else {
            z = false;
        }
        if (wifiState2.connected) {
            str3 = wifiState2.ssid;
        }
        String str4 = str3;
        if (z && wifiState2.ssid != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        String charSequence2 = getTextIfExists(getContentDescription()).toString();
        if (wifiState2.inetCondition == 0) {
            charSequence2 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(context, R.string.data_connection_no_internet, MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(charSequence2, ","));
        }
        IconState iconState3 = new IconState(z, getCurrentIconId(), charSequence2);
        boolean z9 = wifiState2.connected;
        if (this.mWifiTracker.isCaptivePortal) {
            i = R.drawable.ic_qs_wifi_disconnected;
        } else if (connectivityState.connected) {
            i = connectivityState.iconGroup.qsIcons[connectivityState.inetCondition][connectivityState.level];
        } else if (connectivityState.enabled) {
            i = connectivityState.iconGroup.qsDiscState;
        } else {
            i = connectivityState.iconGroup.qsNullState;
        }
        IconState iconState4 = new IconState(z9, i, charSequence2);
        boolean z10 = wifiState2.enabled;
        if (z2 && wifiState2.activityIn) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z2 && wifiState2.activityOut) {
            z4 = true;
        } else {
            z4 = false;
        }
        signalCallback.setWifiIndicators(new WifiIndicators(z10, iconState3, iconState4, z3, z4, str4, wifiState2.isTransient, wifiState2.statusLabel, wifiState2.inetCondition));
    }

    public void setActivity(int i) {
        boolean z;
        ConnectivityState connectivityState = this.mCurrentState;
        WifiState wifiState = (WifiState) connectivityState;
        boolean z2 = false;
        if (i != 3 && i != 1) {
            z = false;
        } else {
            z = true;
        }
        wifiState.activityIn = z;
        WifiState wifiState2 = (WifiState) connectivityState;
        if (i == 3 || i == 2) {
            z2 = true;
        }
        wifiState2.activityOut = z2;
        notifyListenersIfNecessary();
    }
}
