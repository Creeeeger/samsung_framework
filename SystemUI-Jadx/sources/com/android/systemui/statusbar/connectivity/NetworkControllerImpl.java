package com.android.systemui.statusbar.connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.vcn.VcnTransportInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.Looper;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.CarrierConfigManager;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.util.IndentingPrintWriter;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import androidx.mediarouter.media.MediaRoute2Provider$$ExternalSyntheticLambda0;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.settingslib.SignalIcon$MobileIconGroup;
import com.android.settingslib.mobile.MobileMappings;
import com.android.settingslib.mobile.MobileStatusTracker;
import com.android.settingslib.mobile.TelephonyIcons;
import com.android.settingslib.net.DataUsageController;
import com.android.settingslib.net.SignalStrengthUtil;
import com.android.settingslib.wifi.WifiStatusTracker;
import com.android.settingslib.wifi.WifiStatusTracker$$ExternalSyntheticLambda0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.demomode.DemoMode;
import com.android.systemui.demomode.DemoModeController;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.qs.tiles.dialog.InternetDialogFactory;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.pipeline.StatusBarPipelineFlags;
import com.android.systemui.statusbar.pipeline.mobile.util.MobileMappingsProxyImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.DataSaverControllerImpl;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import com.android.systemui.telephony.TelephonyListenerManager;
import com.android.systemui.util.CarrierConfigTracker;
import com.samsung.android.settingslib.wifi.WifiWarningDialogController;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.stream.Collectors;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NetworkControllerImpl extends BroadcastReceiver implements NetworkController, DemoMode, Dumpable {
    public final AccessPointControllerImpl mAccessPoints;
    public int mActiveMobileDataSubscription;
    public boolean mAirplaneMode;
    public final Executor mBgExecutor;
    public final Looper mBgLooper;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final CallbackHandler mCallbackHandler;
    public final NetworkControllerImpl$$ExternalSyntheticLambda0 mClearForceValidated;
    public MobileMappings.Config mConfig;
    public final BitSet mConnectedTransports;
    public final Context mContext;
    public List mCurrentSubscriptions;
    public final DataSaverControllerImpl mDataSaverController;
    public final DataUsageController mDataUsageController;
    public MobileSignalController mDefaultSignalController;
    public final DemoModeController mDemoModeController;
    public int mEmergencySource;
    final EthernetSignalController mEthernetSignalController;
    public boolean mForceCellularValidated;
    public final boolean mHasMobileDataFeature;
    public boolean mHasNoSubs;
    public final String[] mHistory;
    public int mHistoryIndex;
    public boolean mInetCondition;
    public final InternetDialogFactory mInternetDialogFactory;
    public boolean mIsEmergency;
    public NetworkCapabilities mLastDefaultNetworkCapabilities;
    ServiceState mLastServiceState;
    boolean mListening;
    public Locale mLocale;
    public final Object mLock;
    public final LogBuffer mLogBuffer;
    public final Handler mMainHandler;
    public final MobileSignalControllerFactory mMobileFactory;
    final SparseArray<MobileSignalController> mMobileSignalControllers;
    public boolean mNoDefaultNetwork;
    public boolean mNoNetworksAvailable;
    public final TelephonyManager mPhone;
    public final NetworkControllerImpl$$ExternalSyntheticLambda5 mPhoneStateListener;
    public final Handler mReceiverHandler;
    public final NetworkControllerImpl$$ExternalSyntheticLambda0 mRegisterListeners;
    public boolean mSimDetected;
    public final MobileStatusTracker.SubscriptionDefaults mSubDefaults;
    public SubListener mSubscriptionListener;
    public final SubscriptionManager mSubscriptionManager;
    public final TelephonyListenerManager mTelephonyListenerManager;
    public final UserTracker.Callback mUserChangedCallback;
    public boolean mUserSetup;
    public final BitSet mValidatedTransports;
    public final WifiWarningDialogController mWarningDialogController;
    public final WifiManager mWifiManager;
    final WifiSignalController mWifiSignalController;
    public static final boolean DEBUG = Log.isLoggable("NetworkController", 3);
    public static final boolean CHATTY = Log.isLoggable("NetworkControllerChat", 3);
    public static final SimpleDateFormat SSDF = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.connectivity.NetworkControllerImpl$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements ConfigurationController.ConfigurationListener {
        public AnonymousClass1() {
        }

        @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
        public final void onConfigChanged(Configuration configuration) {
            NetworkControllerImpl networkControllerImpl = NetworkControllerImpl.this;
            networkControllerImpl.mConfig = MobileMappings.Config.readConfig(networkControllerImpl.mContext);
            networkControllerImpl.mReceiverHandler.post(new NetworkControllerImpl$$ExternalSyntheticLambda1(this, 1));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.connectivity.NetworkControllerImpl$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 {
        public AnonymousClass3() {
        }

        public final void onMobileDataEnabled(boolean z) {
            NetworkControllerImpl networkControllerImpl = NetworkControllerImpl.this;
            networkControllerImpl.mCallbackHandler.setMobileDataEnabled(z);
            for (int i = 0; i < networkControllerImpl.mMobileSignalControllers.size(); i++) {
                MobileSignalController valueAt = networkControllerImpl.mMobileSignalControllers.valueAt(i);
                valueAt.checkDefaultData();
                valueAt.notifyListenersIfNecessary();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.connectivity.NetworkControllerImpl$7, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass7 extends AsyncTask {
        public final /* synthetic */ boolean val$enabled;

        public AnonymousClass7(boolean z) {
            this.val$enabled = z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
        
            if (r6 == false) goto L14;
         */
        /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object doInBackground(java.lang.Object[] r18) {
            /*
                r17 = this;
                r0 = r17
                r1 = r18
                java.lang.Void[] r1 = (java.lang.Void[]) r1
                boolean r1 = r0.val$enabled
                if (r1 == 0) goto Lb7
                com.android.systemui.statusbar.connectivity.NetworkControllerImpl r1 = com.android.systemui.statusbar.connectivity.NetworkControllerImpl.this
                com.samsung.android.settingslib.wifi.WifiWarningDialogController r1 = r1.mWarningDialogController
                android.content.Context r2 = r1.mContext
                android.content.ContentResolver r3 = r2.getContentResolver()
                java.lang.String r4 = "wifi_sharing_lite_popup_status"
                r5 = 0
                int r3 = android.provider.Settings.System.getInt(r3, r4, r5)
                com.samsung.android.wifi.SemWifiManager r4 = r1.mSemWifiManager
                boolean r6 = r4.isWifiSharingEnabled()
                r7 = 343932928(0x14800000, float:1.2924697E-26)
                java.lang.String r8 = "com.samsung.android.settings.wifi.WifiWarning"
                java.lang.String r9 = "com.android.settings"
                java.lang.String r10 = "statusbar"
                r11 = 12
                r12 = 13
                android.content.Context r14 = r1.mContext
                android.net.wifi.WifiManager r1 = r1.mWifiManager
                java.lang.String r15 = "extra_type"
                java.lang.String r13 = "req_type"
                if (r6 != 0) goto L4c
                int r6 = r1.getWifiApState()
                if (r6 == r12) goto L49
                int r6 = r1.getWifiApState()
                if (r6 != r11) goto L47
                goto L49
            L47:
                r6 = r5
                goto L4a
            L49:
                r6 = 1
            L4a:
                if (r6 != 0) goto L52
            L4c:
                boolean r6 = r4.isWifiApEnabledWithDualBand()
                if (r6 == 0) goto L73
            L52:
                java.lang.Object r1 = r14.getSystemService(r10)
                android.app.StatusBarManager r1 = (android.app.StatusBarManager) r1
                if (r1 == 0) goto L5d
                r1.collapsePanels()
            L5d:
                android.content.Intent r1 = new android.content.Intent
                r1.<init>()
                r1.setClassName(r9, r8)
                r1.setFlags(r7)
                r1.putExtra(r13, r5)
                r6 = 1
                r1.putExtra(r15, r6)
                r2.startActivity(r1)     // Catch: android.content.ActivityNotFoundException -> Lb4
                goto Lb4
            L73:
                r6 = 1
                boolean r16 = r4.isWifiSharingLiteSupported()
                if (r16 == 0) goto Lb5
                boolean r4 = r4.isWifiSharingEnabled()
                if (r4 == 0) goto Lb5
                int r4 = r1.getWifiApState()
                if (r4 == r12) goto L8f
                int r1 = r1.getWifiApState()
                if (r1 != r11) goto L8d
                goto L8f
            L8d:
                r1 = r5
                goto L90
            L8f:
                r1 = r6
            L90:
                if (r1 == 0) goto Lb5
                if (r3 != 0) goto Lb5
                java.lang.Object r1 = r14.getSystemService(r10)
                android.app.StatusBarManager r1 = (android.app.StatusBarManager) r1
                if (r1 == 0) goto L9f
                r1.collapsePanels()
            L9f:
                android.content.Intent r1 = new android.content.Intent
                r1.<init>()
                r1.setClassName(r9, r8)
                r1.setFlags(r7)
                r1.putExtra(r13, r5)
                r3 = 5
                r1.putExtra(r15, r3)
                r2.startActivity(r1)     // Catch: android.content.ActivityNotFoundException -> Lb4
            Lb4:
                r5 = r6
            Lb5:
                if (r5 != 0) goto Lc0
            Lb7:
                com.android.systemui.statusbar.connectivity.NetworkControllerImpl r1 = com.android.systemui.statusbar.connectivity.NetworkControllerImpl.this
                android.net.wifi.WifiManager r1 = r1.mWifiManager
                boolean r0 = r0.val$enabled
                r1.setWifiEnabled(r0)
            Lc0:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.connectivity.NetworkControllerImpl.AnonymousClass7.doInBackground(java.lang.Object[]):java.lang.Object");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SubListener extends SubscriptionManager.OnSubscriptionsChangedListener {
        public SubListener(Looper looper) {
            super(looper);
        }

        @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
        public final void onSubscriptionsChanged() {
            NetworkControllerImpl networkControllerImpl = NetworkControllerImpl.this;
            boolean z = NetworkControllerImpl.DEBUG;
            networkControllerImpl.updateMobileControllers();
        }
    }

    /* renamed from: -$$Nest$mgetProcessedTransportTypes, reason: not valid java name */
    public static int[] m1413$$Nest$mgetProcessedTransportTypes(NetworkControllerImpl networkControllerImpl, NetworkCapabilities networkCapabilities) {
        WifiInfo wifiInfo;
        networkControllerImpl.getClass();
        int[] transportTypes = networkCapabilities.getTransportTypes();
        int i = 0;
        while (true) {
            if (i >= transportTypes.length) {
                break;
            }
            if (transportTypes[i] == 0) {
                if (networkCapabilities.getTransportInfo() != null && (networkCapabilities.getTransportInfo() instanceof VcnTransportInfo)) {
                    wifiInfo = networkCapabilities.getTransportInfo().getWifiInfo();
                } else {
                    wifiInfo = null;
                }
                if (wifiInfo != null) {
                    transportTypes[i] = 1;
                    break;
                }
            }
            i++;
        }
        return transportTypes;
    }

    public NetworkControllerImpl(Context context, Looper looper, Executor executor, SubscriptionManager subscriptionManager, CallbackHandler callbackHandler, DeviceProvisionedController deviceProvisionedController, BroadcastDispatcher broadcastDispatcher, UserTracker userTracker, ConnectivityManager connectivityManager, TelephonyManager telephonyManager, TelephonyListenerManager telephonyListenerManager, WifiManager wifiManager, AccessPointControllerImpl accessPointControllerImpl, StatusBarPipelineFlags statusBarPipelineFlags, DemoModeController demoModeController, CarrierConfigTracker carrierConfigTracker, WifiStatusTrackerFactory wifiStatusTrackerFactory, MobileSignalControllerFactory mobileSignalControllerFactory, Handler handler, InternetDialogFactory internetDialogFactory, DumpManager dumpManager, LogBuffer logBuffer) {
        this(context, connectivityManager, telephonyManager, telephonyListenerManager, wifiManager, subscriptionManager, MobileMappings.Config.readConfig(context), looper, executor, callbackHandler, accessPointControllerImpl, statusBarPipelineFlags, new DataUsageController(context), new MobileStatusTracker.SubscriptionDefaults(), deviceProvisionedController, broadcastDispatcher, userTracker, demoModeController, carrierConfigTracker, wifiStatusTrackerFactory, mobileSignalControllerFactory, handler, dumpManager, logBuffer);
        this.mReceiverHandler.post(this.mRegisterListeners);
        this.mInternetDialogFactory = internetDialogFactory;
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        SignalCallback signalCallback = (SignalCallback) obj;
        signalCallback.setSubs(this.mCurrentSubscriptions);
        boolean z = this.mAirplaneMode;
        int[] iArr = TelephonyIcons.MOBILE_DATA_ACTIVITY_ICONS;
        signalCallback.setIsAirplaneMode(new IconState(z, R.drawable.stat_sys_airplane_mode, this.mContext.getString(R.string.accessibility_airplane_mode)));
        signalCallback.setNoSims(this.mHasNoSubs, this.mSimDetected);
        signalCallback.setConnectivityStatus(this.mNoDefaultNetwork, !this.mInetCondition, this.mNoNetworksAvailable);
        this.mWifiSignalController.notifyListeners(signalCallback);
        this.mEthernetSignalController.notifyListeners(signalCallback);
        for (int i = 0; i < this.mMobileSignalControllers.size(); i++) {
            this.mMobileSignalControllers.valueAt(i).notifyListeners(signalCallback);
        }
        this.mCallbackHandler.obtainMessage(7, 1, 0, signalCallback).sendToTarget();
    }

    @Override // com.android.systemui.demomode.DemoMode
    public final List demoCommands() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("network");
        return arrayList;
    }

    @Override // com.android.systemui.demomode.DemoModeCommandReceiver
    public final void dispatchDemoCommand(Bundle bundle, String str) {
        this.mDemoModeController.getClass();
    }

    public void doUpdateMobileControllers() {
        List<SubscriptionInfo> completeActiveSubscriptionInfoList = this.mSubscriptionManager.getCompleteActiveSubscriptionInfoList();
        if (completeActiveSubscriptionInfoList == null) {
            completeActiveSubscriptionInfoList = Collections.emptyList();
        }
        if (completeActiveSubscriptionInfoList.size() == 2) {
            SubscriptionInfo subscriptionInfo = completeActiveSubscriptionInfoList.get(0);
            SubscriptionInfo subscriptionInfo2 = completeActiveSubscriptionInfoList.get(1);
            if (subscriptionInfo.getGroupUuid() != null && subscriptionInfo.getGroupUuid().equals(subscriptionInfo2.getGroupUuid()) && (subscriptionInfo.isOpportunistic() || subscriptionInfo2.isOpportunistic())) {
                if (CarrierConfigManager.getDefaultConfig().getBoolean("always_show_primary_signal_bar_in_opportunistic_network_boolean")) {
                    if (!subscriptionInfo.isOpportunistic()) {
                        subscriptionInfo = subscriptionInfo2;
                    }
                    completeActiveSubscriptionInfoList.remove(subscriptionInfo);
                } else {
                    if (subscriptionInfo.getSubscriptionId() == this.mActiveMobileDataSubscription) {
                        subscriptionInfo = subscriptionInfo2;
                    }
                    completeActiveSubscriptionInfoList.remove(subscriptionInfo);
                }
            }
        }
        if (hasCorrectMobileControllers(completeActiveSubscriptionInfoList)) {
            updateNoSims();
            return;
        }
        synchronized (this.mLock) {
            setCurrentSubscriptionsLocked(completeActiveSubscriptionInfoList);
        }
        updateNoSims();
        recalculateEmergency();
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        boolean z;
        String str;
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "NetworkController state:", "  mUserSetup=");
        m.append(this.mUserSetup);
        printWriter.println(m.toString());
        printWriter.println("  - telephony ------");
        printWriter.print("  hasVoiceCallingFeature()=");
        if (this.mPhone.getPhoneType() != 0) {
            z = true;
        } else {
            z = false;
        }
        printWriter.println(z);
        StringBuilder m2 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("  mListening="), this.mListening, printWriter, "  mActiveMobileDataSubscription=");
        m2.append(this.mActiveMobileDataSubscription);
        printWriter.println(m2.toString());
        printWriter.println("  - connectivity ------");
        printWriter.print("  mConnectedTransports=");
        printWriter.println(this.mConnectedTransports);
        printWriter.print("  mValidatedTransports=");
        printWriter.println(this.mValidatedTransports);
        printWriter.print("  mInetCondition=");
        printWriter.println(this.mInetCondition);
        printWriter.print("  mAirplaneMode=");
        printWriter.println(this.mAirplaneMode);
        printWriter.print("  mLocale=");
        printWriter.println(this.mLocale);
        printWriter.print("  mLastServiceState=");
        printWriter.println(this.mLastServiceState);
        printWriter.print("  mIsEmergency=");
        printWriter.println(this.mIsEmergency);
        printWriter.print("  mEmergencySource=");
        int i = this.mEmergencySource;
        if (i > 300) {
            str = "ASSUMED_VOICE_CONTROLLER(" + (i - 200) + ")";
        } else if (i > 300) {
            str = "NO_SUB(" + (i - 300) + ")";
        } else if (i > 200) {
            str = "VOICE_CONTROLLER(" + (i - 200) + ")";
        } else if (i > 100) {
            str = "FIRST_CONTROLLER(" + (i - 100) + ")";
        } else if (i == 0) {
            str = "NO_CONTROLLERS";
        } else {
            str = "UNKNOWN_SOURCE";
        }
        printWriter.println(str);
        printWriter.println("  - DefaultNetworkCallback -----");
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            if (this.mHistory[i3] != null) {
                i2++;
            }
        }
        int i4 = this.mHistoryIndex + 16;
        while (true) {
            i4--;
            if (i4 < (this.mHistoryIndex + 16) - i2) {
                break;
            }
            StringBuilder sb = new StringBuilder("  Previous NetworkCallback(");
            sb.append((this.mHistoryIndex + 16) - i4);
            sb.append("): ");
            KeyboardUI$$ExternalSyntheticOutline0.m(sb, this.mHistory[i4 & 15], printWriter);
        }
        printWriter.println("  - config ------");
        for (int i5 = 0; i5 < this.mMobileSignalControllers.size(); i5++) {
            this.mMobileSignalControllers.valueAt(i5).dump(printWriter);
        }
        this.mWifiSignalController.dump(printWriter);
        this.mEthernetSignalController.dump(printWriter);
        AccessPointControllerImpl accessPointControllerImpl = this.mAccessPoints;
        accessPointControllerImpl.getClass();
        IndentingPrintWriter indentingPrintWriter = new IndentingPrintWriter(printWriter);
        indentingPrintWriter.println("AccessPointControllerImpl:");
        indentingPrintWriter.increaseIndent();
        StringBuilder sb2 = new StringBuilder("Callbacks: ");
        ArrayList arrayList = accessPointControllerImpl.mCallbacks;
        sb2.append(Arrays.toString(arrayList.toArray()));
        indentingPrintWriter.println(sb2.toString());
        indentingPrintWriter.println("WifiPickerTracker: " + accessPointControllerImpl.mWifiPickerTracker.toString());
        if (accessPointControllerImpl.mWifiPickerTracker != null && !arrayList.isEmpty()) {
            indentingPrintWriter.println("Connected: " + accessPointControllerImpl.mWifiPickerTracker.getConnectedWifiEntry());
            indentingPrintWriter.println("Other wifi entries: " + Arrays.toString(accessPointControllerImpl.mWifiPickerTracker.getWifiEntries().toArray()));
        } else if (accessPointControllerImpl.mWifiPickerTracker != null) {
            indentingPrintWriter.println("WifiPickerTracker not started, cannot get reliable entries");
        }
        indentingPrintWriter.decreaseIndent();
        CallbackHandler callbackHandler = this.mCallbackHandler;
        callbackHandler.getClass();
        printWriter.println("  - CallbackHandler -----");
        int i6 = 0;
        for (int i7 = 0; i7 < 64; i7++) {
            if (callbackHandler.mHistory[i7] != null) {
                i6++;
            }
        }
        int i8 = callbackHandler.mHistoryIndex + 64;
        while (true) {
            i8--;
            if (i8 >= (callbackHandler.mHistoryIndex + 64) - i6) {
                StringBuilder sb3 = new StringBuilder("  Previous Callback(");
                sb3.append((callbackHandler.mHistoryIndex + 64) - i8);
                sb3.append("): ");
                KeyboardUI$$ExternalSyntheticOutline0.m(sb3, callbackHandler.mHistory[i8 & 63], printWriter);
            } else {
                return;
            }
        }
    }

    public final MobileSignalController getControllerWithSubId(int i) {
        if (!SubscriptionManager.isValidSubscriptionId(i)) {
            if (DEBUG) {
                Log.e("NetworkController", "No data sim selected");
            }
            return this.mDefaultSignalController;
        }
        if (this.mMobileSignalControllers.indexOfKey(i) >= 0) {
            return this.mMobileSignalControllers.get(i);
        }
        if (DEBUG) {
            NestedScrollView$$ExternalSyntheticOutline0.m("Cannot find controller for data sub: ", i, "NetworkController");
        }
        return this.mDefaultSignalController;
    }

    public void handleConfigurationChanged() {
        SignalIcon$MobileIconGroup signalIcon$MobileIconGroup;
        updateMobileControllers();
        for (int i = 0; i < this.mMobileSignalControllers.size(); i++) {
            MobileSignalController valueAt = this.mMobileSignalControllers.valueAt(i);
            valueAt.mConfig = this.mConfig;
            valueAt.mInflateSignalStrengths = SignalStrengthUtil.shouldInflateSignalStrength(valueAt.mSubscriptionInfo.getSubscriptionId(), valueAt.mContext);
            MobileMappings.Config config = valueAt.mConfig;
            ((MobileMappingsProxyImpl) valueAt.mMobileMappingsProxy).getClass();
            valueAt.mNetworkToIconLookup = MobileMappings.mapIconSets(config);
            if (!valueAt.mConfig.showAtLeast3G) {
                signalIcon$MobileIconGroup = TelephonyIcons.G;
            } else {
                signalIcon$MobileIconGroup = TelephonyIcons.THREE_G;
            }
            valueAt.mDefaultIcons = signalIcon$MobileIconGroup;
            valueAt.updateTelephony();
        }
        refreshLocale();
    }

    public boolean hasCorrectMobileControllers(List<SubscriptionInfo> list) {
        if (list.size() != this.mMobileSignalControllers.size()) {
            return false;
        }
        Iterator<SubscriptionInfo> it = list.iterator();
        while (it.hasNext()) {
            if (this.mMobileSignalControllers.indexOfKey(it.next().getSubscriptionId()) < 0) {
                return false;
            }
        }
        return true;
    }

    public final boolean isPowerOffServiceState() {
        int i;
        boolean z;
        boolean z2;
        int i2 = 0;
        while (true) {
            boolean z3 = true;
            if (i2 >= this.mMobileSignalControllers.size()) {
                return true;
            }
            MobileSignalController valueAt = this.mMobileSignalControllers.valueAt(i2);
            MobileState mobileState = (MobileState) valueAt.mCurrentState;
            ServiceState serviceState = mobileState.serviceState;
            int i3 = -1;
            if (serviceState != null) {
                i = serviceState.getState();
            } else {
                i = -1;
            }
            ServiceState serviceState2 = mobileState.serviceState;
            if (serviceState2 != null && serviceState2.canCellularVoiceService()) {
                z = true;
            } else {
                z = false;
            }
            ServiceState serviceState3 = mobileState.serviceState;
            if (serviceState3 != null) {
                i3 = serviceState3.getMobileDataRegState();
            }
            if (i3 == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("isPowerOffServiceState,mCurrentState.getVoiceServiceState() = ", i, ",mCurrentState.airplaneMode = ");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, mobileState.airplaneMode, ",mCurrentState.canCellularVoiceService() = ", z, ",mCurrentState.getMobileDataRegState() = ");
            m.append(z2);
            Log.d(valueAt.mTag, m.toString());
            if (i != 3 && (!mobileState.airplaneMode || i != 0 || (z && z2))) {
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            i2++;
        }
    }

    public boolean isUserSetup() {
        return this.mUserSetup;
    }

    public final void notifyAllListeners() {
        notifyListeners();
        for (int i = 0; i < this.mMobileSignalControllers.size(); i++) {
            MobileSignalController valueAt = this.mMobileSignalControllers.valueAt(i);
            valueAt.notifyListeners(valueAt.mCallbackHandler);
        }
        WifiSignalController wifiSignalController = this.mWifiSignalController;
        wifiSignalController.notifyListeners(wifiSignalController.mCallbackHandler);
        EthernetSignalController ethernetSignalController = this.mEthernetSignalController;
        ethernetSignalController.notifyListeners(ethernetSignalController.mCallbackHandler);
    }

    public final void notifyListeners() {
        CallbackHandler callbackHandler = this.mCallbackHandler;
        boolean z = this.mAirplaneMode;
        int[] iArr = TelephonyIcons.MOBILE_DATA_ACTIVITY_ICONS;
        callbackHandler.setIsAirplaneMode(new IconState(z, R.drawable.stat_sys_airplane_mode, this.mContext.getString(R.string.accessibility_airplane_mode)));
        this.mCallbackHandler.setNoSims(this.mHasNoSubs, this.mSimDetected);
    }

    @Override // com.android.systemui.demomode.DemoModeCommandReceiver
    public final void onDemoModeFinished() {
        if (DEBUG) {
            Log.d("NetworkController", "Exiting demo mode");
        }
        updateMobileControllers();
        for (int i = 0; i < this.mMobileSignalControllers.size(); i++) {
            MobileSignalController valueAt = this.mMobileSignalControllers.valueAt(i);
            valueAt.mCurrentState.copyFrom(valueAt.mLastState);
        }
        WifiSignalController wifiSignalController = this.mWifiSignalController;
        wifiSignalController.mCurrentState.copyFrom(wifiSignalController.mLastState);
        this.mReceiverHandler.post(this.mRegisterListeners);
        notifyAllListeners();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, final Intent intent) {
        char c;
        if (CHATTY) {
            Log.d("NetworkController", "onReceive: intent=" + intent);
        }
        final String action = intent.getAction();
        this.mLogBuffer.log("NetworkController", LogLevel.INFO, new Function1() { // from class: com.android.systemui.statusbar.connectivity.NetworkControllerImpl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((LogMessage) obj).setStr1(action);
                return Unit.INSTANCE;
            }
        }, new NetworkControllerImpl$$ExternalSyntheticLambda3());
        action.getClass();
        int i = 5;
        int i2 = 4;
        int i3 = 3;
        switch (action.hashCode()) {
            case -2104353374:
                if (action.equals("android.intent.action.SERVICE_STATE")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1465084191:
                if (action.equals("android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1172645946:
                if (action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1138588223:
                if (action.equals("android.telephony.action.CARRIER_CONFIG_CHANGED")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1076576821:
                if (action.equals("android.intent.action.AIRPLANE_MODE")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -372321735:
                if (action.equals("android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -229777127:
                if (action.equals("android.intent.action.SIM_STATE_CHANGED")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -25388475:
                if (action.equals("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 464243859:
                if (action.equals("android.settings.panel.action.INTERNET_CONNECTIVITY")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                this.mLastServiceState = ServiceState.newFromBundle(intent.getExtras());
                if (this.mMobileSignalControllers.size() == 0) {
                    recalculateEmergency();
                    return;
                }
                return;
            case 1:
                recalculateEmergency();
                return;
            case 2:
                updateConnectivity();
                return;
            case 3:
                this.mConfig = MobileMappings.Config.readConfig(this.mContext);
                this.mReceiverHandler.post(new NetworkControllerImpl$$ExternalSyntheticLambda0(this, i2));
                return;
            case 4:
                refreshLocale();
                updateAirplaneMode(false);
                return;
            case 5:
                int intExtra = intent.getIntExtra("android.telephony.extra.SUBSCRIPTION_ID", -1);
                if (SubscriptionManager.isValidSubscriptionId(intExtra) && this.mMobileSignalControllers.indexOfKey(intExtra) >= 0) {
                    this.mMobileSignalControllers.get(intExtra).handleBroadcast(intent);
                    return;
                }
                return;
            case 6:
                if (!intent.getBooleanExtra("rebroadcastOnUnlock", false)) {
                    updateMobileControllers();
                    return;
                }
                return;
            case 7:
                break;
            case '\b':
                this.mMainHandler.post(new NetworkControllerImpl$$ExternalSyntheticLambda0(this, i));
                return;
            default:
                int intExtra2 = intent.getIntExtra("android.telephony.extra.SUBSCRIPTION_INDEX", -1);
                if (SubscriptionManager.isValidSubscriptionId(intExtra2)) {
                    if (this.mMobileSignalControllers.indexOfKey(intExtra2) >= 0) {
                        this.mMobileSignalControllers.get(intExtra2).handleBroadcast(intent);
                        return;
                    } else {
                        updateMobileControllers();
                        return;
                    }
                }
                final WifiSignalController wifiSignalController = this.mWifiSignalController;
                wifiSignalController.getClass();
                wifiSignalController.doInBackground(new Runnable() { // from class: com.android.systemui.statusbar.connectivity.WifiSignalController$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WifiSignalController wifiSignalController2 = WifiSignalController.this;
                        Intent intent2 = intent;
                        WifiStatusTracker wifiStatusTracker = wifiSignalController2.mWifiTracker;
                        if (wifiStatusTracker.mWifiManager != null && intent2.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                            wifiStatusTracker.updateWifiState();
                        }
                        wifiSignalController2.copyWifiStates();
                        wifiSignalController2.notifyListenersIfNecessary();
                    }
                });
                return;
        }
        for (int i4 = 0; i4 < this.mMobileSignalControllers.size(); i4++) {
            this.mMobileSignalControllers.valueAt(i4).handleBroadcast(intent);
        }
        this.mConfig = MobileMappings.Config.readConfig(this.mContext);
        this.mReceiverHandler.post(new NetworkControllerImpl$$ExternalSyntheticLambda0(this, i3));
    }

    public final void pushConnectivityToSignals() {
        boolean z = false;
        int i = 0;
        while (true) {
            int i2 = 1;
            if (i >= this.mMobileSignalControllers.size()) {
                break;
            }
            MobileSignalController valueAt = this.mMobileSignalControllers.valueAt(i);
            BitSet bitSet = this.mConnectedTransports;
            BitSet bitSet2 = this.mValidatedTransports;
            int i3 = valueAt.mTransportType;
            boolean z2 = bitSet2.get(i3);
            MobileState mobileState = (MobileState) valueAt.mCurrentState;
            boolean z3 = bitSet.get(i3);
            mobileState.isDefault = z3;
            if (!z2 && z3) {
                i2 = 0;
            }
            mobileState.inetCondition = i2;
            valueAt.notifyListenersIfNecessary();
            i++;
        }
        WifiSignalController wifiSignalController = this.mWifiSignalController;
        BitSet bitSet3 = this.mValidatedTransports;
        WifiState wifiState = (WifiState) wifiSignalController.mCurrentState;
        wifiState.inetCondition = bitSet3.get(wifiSignalController.mTransportType) ? 1 : 0;
        if (bitSet3.get(0) || bitSet3.get(1)) {
            z = true;
        }
        wifiState.isDefaultConnectionValidated = z;
        wifiSignalController.notifyListenersIfNecessary();
        EthernetSignalController ethernetSignalController = this.mEthernetSignalController;
        BitSet bitSet4 = this.mConnectedTransports;
        BitSet bitSet5 = this.mValidatedTransports;
        int i4 = ethernetSignalController.mTransportType;
        boolean z4 = bitSet4.get(i4);
        ConnectivityState connectivityState = ethernetSignalController.mCurrentState;
        connectivityState.connected = z4;
        connectivityState.inetCondition = bitSet5.get(i4) ? 1 : 0;
        ethernetSignalController.notifyListenersIfNecessary();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        if (r0.isEmergencyOnly() != false) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void recalculateEmergency() {
        /*
            r7 = this;
            android.util.SparseArray<com.android.systemui.statusbar.connectivity.MobileSignalController> r0 = r7.mMobileSignalControllers
            int r0 = r0.size()
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L18
            r7.mEmergencySource = r2
            android.telephony.ServiceState r0 = r7.mLastServiceState
            if (r0 == 0) goto L5c
            boolean r0 = r0.isEmergencyOnly()
            if (r0 == 0) goto L5c
            goto Lce
        L18:
            com.android.settingslib.mobile.MobileStatusTracker$SubscriptionDefaults r0 = r7.mSubDefaults
            r0.getClass()
            int r0 = android.telephony.SubscriptionManager.getDefaultVoiceSubscriptionId()
            boolean r3 = android.telephony.SubscriptionManager.isValidSubscriptionId(r0)
            java.lang.String r4 = "NetworkController"
            if (r3 != 0) goto L61
            r3 = r2
        L2a:
            android.util.SparseArray<com.android.systemui.statusbar.connectivity.MobileSignalController> r5 = r7.mMobileSignalControllers
            int r5 = r5.size()
            if (r3 >= r5) goto L61
            android.util.SparseArray<com.android.systemui.statusbar.connectivity.MobileSignalController> r5 = r7.mMobileSignalControllers
            java.lang.Object r5 = r5.valueAt(r3)
            com.android.systemui.statusbar.connectivity.MobileSignalController r5 = (com.android.systemui.statusbar.connectivity.MobileSignalController) r5
            com.android.systemui.statusbar.connectivity.ConnectivityState r6 = r5.mCurrentState
            com.android.systemui.statusbar.connectivity.MobileState r6 = (com.android.systemui.statusbar.connectivity.MobileState) r6
            boolean r6 = r6.isEmergency
            if (r6 != 0) goto L5e
            android.telephony.SubscriptionInfo r0 = r5.mSubscriptionInfo
            int r0 = r0.getSubscriptionId()
            int r0 = r0 + 100
            r7.mEmergencySource = r0
            boolean r0 = com.android.systemui.statusbar.connectivity.NetworkControllerImpl.DEBUG
            if (r0 == 0) goto L5c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Found emergency "
            r0.<init>(r1)
            java.lang.String r1 = r5.mTag
            androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0.m(r0, r1, r4)
        L5c:
            r1 = r2
            goto Lce
        L5e:
            int r3 = r3 + 1
            goto L2a
        L61:
            android.util.SparseArray<com.android.systemui.statusbar.connectivity.MobileSignalController> r3 = r7.mMobileSignalControllers
            int r3 = r3.indexOfKey(r0)
            if (r3 < 0) goto L85
            int r1 = r0 + 200
            r7.mEmergencySource = r1
            boolean r1 = com.android.systemui.statusbar.connectivity.NetworkControllerImpl.DEBUG
            if (r1 == 0) goto L76
            java.lang.String r1 = "Getting emergency from "
            androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0.m(r1, r0, r4)
        L76:
            android.util.SparseArray<com.android.systemui.statusbar.connectivity.MobileSignalController> r1 = r7.mMobileSignalControllers
            java.lang.Object r0 = r1.get(r0)
            com.android.systemui.statusbar.connectivity.MobileSignalController r0 = (com.android.systemui.statusbar.connectivity.MobileSignalController) r0
            com.android.systemui.statusbar.connectivity.ConnectivityState r0 = r0.mCurrentState
            com.android.systemui.statusbar.connectivity.MobileState r0 = (com.android.systemui.statusbar.connectivity.MobileState) r0
            boolean r1 = r0.isEmergency
            goto Lce
        L85:
            android.util.SparseArray<com.android.systemui.statusbar.connectivity.MobileSignalController> r3 = r7.mMobileSignalControllers
            int r3 = r3.size()
            if (r3 != r1) goto Lc1
            android.util.SparseArray<com.android.systemui.statusbar.connectivity.MobileSignalController> r0 = r7.mMobileSignalControllers
            int r0 = r0.keyAt(r2)
            int r0 = r0 + 400
            r7.mEmergencySource = r0
            boolean r0 = com.android.systemui.statusbar.connectivity.NetworkControllerImpl.DEBUG
            if (r0 == 0) goto Lb2
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Getting assumed emergency from "
            r0.<init>(r1)
            android.util.SparseArray<com.android.systemui.statusbar.connectivity.MobileSignalController> r1 = r7.mMobileSignalControllers
            int r1 = r1.keyAt(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r4, r0)
        Lb2:
            android.util.SparseArray<com.android.systemui.statusbar.connectivity.MobileSignalController> r0 = r7.mMobileSignalControllers
            java.lang.Object r0 = r0.valueAt(r2)
            com.android.systemui.statusbar.connectivity.MobileSignalController r0 = (com.android.systemui.statusbar.connectivity.MobileSignalController) r0
            com.android.systemui.statusbar.connectivity.ConnectivityState r0 = r0.mCurrentState
            com.android.systemui.statusbar.connectivity.MobileState r0 = (com.android.systemui.statusbar.connectivity.MobileState) r0
            boolean r1 = r0.isEmergency
            goto Lce
        Lc1:
            boolean r3 = com.android.systemui.statusbar.connectivity.NetworkControllerImpl.DEBUG
            if (r3 == 0) goto Lca
            java.lang.String r3 = "Cannot find controller for voice sub: "
            androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0.m(r3, r0, r4)
        Lca:
            int r0 = r0 + 300
            r7.mEmergencySource = r0
        Lce:
            r7.mIsEmergency = r1
            com.android.systemui.statusbar.connectivity.CallbackHandler r7 = r7.mCallbackHandler
            android.os.Message r7 = r7.obtainMessage(r2, r1, r2)
            r7.sendToTarget()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.connectivity.NetworkControllerImpl.recalculateEmergency():void");
    }

    public final void refreshLocale() {
        Locale locale = this.mContext.getResources().getConfiguration().locale;
        if (!locale.equals(this.mLocale)) {
            this.mLocale = locale;
            WifiStatusTracker wifiStatusTracker = this.mWifiSignalController.mWifiTracker;
            wifiStatusTracker.updateStatusLabel();
            wifiStatusTracker.mMainThreadHandler.post(new WifiStatusTracker$$ExternalSyntheticLambda0(wifiStatusTracker, 0));
            notifyAllListeners();
        }
    }

    public void registerListeners() {
        int i = 0;
        for (int i2 = 0; i2 < this.mMobileSignalControllers.size(); i2++) {
            this.mMobileSignalControllers.valueAt(i2).registerListener();
        }
        if (this.mSubscriptionListener == null) {
            this.mSubscriptionListener = new SubListener(this.mBgLooper);
        }
        this.mSubscriptionManager.addOnSubscriptionsChangedListener(this.mSubscriptionListener);
        this.mTelephonyListenerManager.addActiveDataSubscriptionIdListener(this.mPhoneStateListener);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.telephony.action.CARRIER_CONFIG_CHANGED");
        intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        intentFilter.addAction("android.intent.action.SERVICE_STATE");
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        intentFilter.addAction("android.settings.panel.action.INTERNET_CONNECTIVITY");
        intentFilter.addAction("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED");
        intentFilter.addAction("android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED");
        intentFilter.addAction("android.telephony.action.SERVICE_PROVIDERS_UPDATED");
        intentFilter.addAction("android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.mBroadcastDispatcher.registerReceiverWithHandler(this, intentFilter, this.mReceiverHandler);
        this.mListening = true;
        this.mReceiverHandler.post(new NetworkControllerImpl$$ExternalSyntheticLambda0(this, i));
        Handler handler = this.mReceiverHandler;
        WifiSignalController wifiSignalController = this.mWifiSignalController;
        Objects.requireNonNull(wifiSignalController);
        handler.post(new NetworkControllerImpl$$ExternalSyntheticLambda1(wifiSignalController, i));
        this.mReceiverHandler.post(new NetworkControllerImpl$$ExternalSyntheticLambda0(this, 1));
        updateMobileControllers();
        this.mReceiverHandler.post(new NetworkControllerImpl$$ExternalSyntheticLambda0(this, 2));
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        this.mCallbackHandler.obtainMessage(7, 0, 0, (SignalCallback) obj).sendToTarget();
    }

    public void setCurrentSubscriptionsLocked(List<SubscriptionInfo> list) {
        List list2;
        List list3;
        Collections.sort(list, new Comparator(this) { // from class: com.android.systemui.statusbar.connectivity.NetworkControllerImpl.8
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int simSlotIndex;
                int simSlotIndex2;
                SubscriptionInfo subscriptionInfo = (SubscriptionInfo) obj;
                SubscriptionInfo subscriptionInfo2 = (SubscriptionInfo) obj2;
                if (subscriptionInfo.getSimSlotIndex() == subscriptionInfo2.getSimSlotIndex()) {
                    simSlotIndex = subscriptionInfo.getSubscriptionId();
                    simSlotIndex2 = subscriptionInfo2.getSubscriptionId();
                } else {
                    simSlotIndex = subscriptionInfo.getSimSlotIndex();
                    simSlotIndex2 = subscriptionInfo2.getSimSlotIndex();
                }
                return simSlotIndex - simSlotIndex2;
            }
        });
        Locale locale = Locale.US;
        List list4 = this.mCurrentSubscriptions;
        if (list4 != null) {
            list2 = (List) list4.stream().map(new NetworkControllerImpl$$ExternalSyntheticLambda4()).collect(Collectors.toList());
        } else {
            list2 = null;
        }
        if (list != null) {
            list3 = (List) list.stream().map(new NetworkControllerImpl$$ExternalSyntheticLambda4()).collect(Collectors.toList());
        } else {
            list3 = null;
        }
        Log.i("NetworkController", String.format(locale, "Subscriptions changed: %s", String.format(locale, "old=%s, new=%s", list2, list3)));
        this.mCurrentSubscriptions = list;
        SparseArray sparseArray = new SparseArray();
        for (int i = 0; i < this.mMobileSignalControllers.size(); i++) {
            sparseArray.put(this.mMobileSignalControllers.keyAt(i), this.mMobileSignalControllers.valueAt(i));
        }
        this.mMobileSignalControllers.clear();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            int subscriptionId = list.get(i2).getSubscriptionId();
            if (sparseArray.indexOfKey(subscriptionId) >= 0) {
                this.mMobileSignalControllers.put(subscriptionId, (MobileSignalController) sparseArray.get(subscriptionId));
                sparseArray.remove(subscriptionId);
            } else {
                MobileSignalController createMobileSignalController = this.mMobileFactory.createMobileSignalController(this.mConfig, this.mHasMobileDataFeature, this.mPhone.createForSubscriptionId(subscriptionId), this, list.get(i2), this.mSubDefaults, this.mReceiverHandler.getLooper());
                ((MobileState) createMobileSignalController.mCurrentState).userSetup = this.mUserSetup;
                createMobileSignalController.notifyListenersIfNecessary();
                this.mMobileSignalControllers.put(subscriptionId, createMobileSignalController);
                if (list.get(i2).getSimSlotIndex() == 0) {
                    this.mDefaultSignalController = createMobileSignalController;
                }
                if (this.mListening) {
                    createMobileSignalController.registerListener();
                }
            }
        }
        if (this.mListening) {
            for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                int keyAt = sparseArray.keyAt(i3);
                if (sparseArray.get(keyAt) == this.mDefaultSignalController) {
                    this.mDefaultSignalController = null;
                }
                MobileSignalController mobileSignalController = (MobileSignalController) sparseArray.get(keyAt);
                mobileSignalController.mMobileStatusTracker.setListening(false);
                mobileSignalController.mContext.getContentResolver().unregisterContentObserver(mobileSignalController.mObserver);
            }
        }
        this.mCallbackHandler.setSubs(list);
        notifyAllListeners();
        pushConnectivityToSignals();
        updateAirplaneMode(true);
    }

    public void setNoNetworksAvailable(boolean z) {
        this.mNoNetworksAvailable = z;
    }

    public final void updateAirplaneMode(boolean z) {
        boolean z2 = true;
        if (Settings.Global.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) != 1) {
            z2 = false;
        }
        if (z2 != this.mAirplaneMode || z) {
            this.mAirplaneMode = z2;
            for (int i = 0; i < this.mMobileSignalControllers.size(); i++) {
                MobileSignalController valueAt = this.mMobileSignalControllers.valueAt(i);
                ((MobileState) valueAt.mCurrentState).airplaneMode = this.mAirplaneMode;
                valueAt.notifyListenersIfNecessary();
            }
            notifyListeners();
        }
    }

    public final void updateConnectivity() {
        boolean z;
        WifiInfo wifiInfo;
        this.mConnectedTransports.clear();
        this.mValidatedTransports.clear();
        NetworkCapabilities networkCapabilities = this.mLastDefaultNetworkCapabilities;
        boolean z2 = false;
        if (networkCapabilities != null) {
            for (int i : networkCapabilities.getTransportTypes()) {
                if (i == 0 || i == 1 || i == 3) {
                    if (i == 0) {
                        NetworkCapabilities networkCapabilities2 = this.mLastDefaultNetworkCapabilities;
                        if (networkCapabilities2.getTransportInfo() != null && (networkCapabilities2.getTransportInfo() instanceof VcnTransportInfo)) {
                            wifiInfo = networkCapabilities2.getTransportInfo().getWifiInfo();
                        } else {
                            wifiInfo = null;
                        }
                        if (wifiInfo != null) {
                            this.mConnectedTransports.set(1);
                            if (this.mLastDefaultNetworkCapabilities.hasCapability(16)) {
                                this.mValidatedTransports.set(1);
                            }
                        }
                    }
                    this.mConnectedTransports.set(i);
                    if (this.mLastDefaultNetworkCapabilities.hasCapability(16)) {
                        this.mValidatedTransports.set(i);
                    }
                }
            }
        }
        if (this.mForceCellularValidated) {
            this.mValidatedTransports.set(0);
        }
        if (CHATTY) {
            Log.d("NetworkController", "updateConnectivity: mConnectedTransports=" + this.mConnectedTransports);
            Log.d("NetworkController", "updateConnectivity: mValidatedTransports=" + this.mValidatedTransports);
        }
        if (!this.mValidatedTransports.get(0) && !this.mValidatedTransports.get(1) && !this.mValidatedTransports.get(3)) {
            z = false;
        } else {
            z = true;
        }
        this.mInetCondition = z;
        pushConnectivityToSignals();
        if (!this.mConnectedTransports.get(0) && !this.mConnectedTransports.get(1) && !this.mConnectedTransports.get(3)) {
            z2 = true;
        }
        this.mNoDefaultNetwork = z2;
        this.mCallbackHandler.setConnectivityStatus(z2, !this.mInetCondition, this.mNoNetworksAvailable);
    }

    public final void updateMobileControllers() {
        if (!this.mListening) {
            return;
        }
        doUpdateMobileControllers();
    }

    public void updateNoSims() {
        boolean z;
        boolean z2 = false;
        if (this.mHasMobileDataFeature && this.mMobileSignalControllers.size() == 0) {
            z = true;
        } else {
            z = false;
        }
        int activeModemCount = this.mPhone.getActiveModemCount();
        int i = 0;
        while (true) {
            if (i < activeModemCount) {
                int simState = this.mPhone.getSimState(i);
                if (simState != 1 && simState != 0) {
                    z2 = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        if (z != this.mHasNoSubs || z2 != this.mSimDetected) {
            this.mHasNoSubs = z;
            this.mSimDetected = z2;
            this.mCallbackHandler.setNoSims(z, z2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [com.android.systemui.statusbar.connectivity.NetworkControllerImpl$$ExternalSyntheticLambda5] */
    public NetworkControllerImpl(Context context, ConnectivityManager connectivityManager, TelephonyManager telephonyManager, TelephonyListenerManager telephonyListenerManager, WifiManager wifiManager, SubscriptionManager subscriptionManager, MobileMappings.Config config, Looper looper, Executor executor, CallbackHandler callbackHandler, AccessPointControllerImpl accessPointControllerImpl, StatusBarPipelineFlags statusBarPipelineFlags, DataUsageController dataUsageController, MobileStatusTracker.SubscriptionDefaults subscriptionDefaults, final DeviceProvisionedController deviceProvisionedController, BroadcastDispatcher broadcastDispatcher, UserTracker userTracker, DemoModeController demoModeController, CarrierConfigTracker carrierConfigTracker, WifiStatusTrackerFactory wifiStatusTrackerFactory, MobileSignalControllerFactory mobileSignalControllerFactory, Handler handler, DumpManager dumpManager, LogBuffer logBuffer) {
        this.mLock = new Object();
        this.mActiveMobileDataSubscription = -1;
        this.mMobileSignalControllers = new SparseArray<>();
        this.mConnectedTransports = new BitSet();
        this.mValidatedTransports = new BitSet();
        this.mAirplaneMode = false;
        this.mNoDefaultNetwork = false;
        this.mNoNetworksAvailable = true;
        this.mLocale = null;
        this.mCurrentSubscriptions = new ArrayList();
        this.mHistory = new String[16];
        new AnonymousClass1();
        UserTracker.Callback callback = new UserTracker.Callback() { // from class: com.android.systemui.statusbar.connectivity.NetworkControllerImpl.2
            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanged(int i, Context context2) {
                NetworkControllerImpl networkControllerImpl = NetworkControllerImpl.this;
                networkControllerImpl.mAccessPoints.mCurrentUser = i;
                networkControllerImpl.updateConnectivity();
            }
        };
        this.mUserChangedCallback = callback;
        this.mClearForceValidated = new NetworkControllerImpl$$ExternalSyntheticLambda0(this, 6);
        this.mRegisterListeners = new NetworkControllerImpl$$ExternalSyntheticLambda0(this, 7);
        this.mContext = context;
        this.mTelephonyListenerManager = telephonyListenerManager;
        this.mConfig = config;
        this.mMainHandler = handler;
        Handler handler2 = new Handler(looper);
        this.mReceiverHandler = handler2;
        this.mBgLooper = looper;
        this.mBgExecutor = executor;
        this.mCallbackHandler = callbackHandler;
        this.mDataSaverController = new DataSaverControllerImpl(context);
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mMobileFactory = mobileSignalControllerFactory;
        this.mSubscriptionManager = subscriptionManager;
        this.mSubDefaults = subscriptionDefaults;
        boolean isDataCapable = telephonyManager.isDataCapable();
        this.mHasMobileDataFeature = isDataCapable;
        this.mDemoModeController = demoModeController;
        this.mLogBuffer = logBuffer;
        this.mPhone = telephonyManager;
        this.mWifiManager = wifiManager;
        this.mLocale = context.getResources().getConfiguration().locale;
        this.mAccessPoints = accessPointControllerImpl;
        this.mDataUsageController = dataUsageController;
        dataUsageController.getClass();
        dataUsageController.mCallback = new AnonymousClass3();
        this.mWifiSignalController = new WifiSignalController(context, isDataCapable, callbackHandler, this, wifiManager, wifiStatusTrackerFactory, handler2);
        this.mEthernetSignalController = new EthernetSignalController(context, callbackHandler, this);
        updateAirplaneMode(true);
        ((UserTrackerImpl) userTracker).addCallback(callback, new HandlerExecutor(handler));
        DeviceProvisionedControllerImpl deviceProvisionedControllerImpl = (DeviceProvisionedControllerImpl) deviceProvisionedController;
        deviceProvisionedControllerImpl.addCallback(new DeviceProvisionedController.DeviceProvisionedListener() { // from class: com.android.systemui.statusbar.connectivity.NetworkControllerImpl.4
            @Override // com.android.systemui.statusbar.policy.DeviceProvisionedController.DeviceProvisionedListener
            public final void onUserSetupChanged() {
                boolean isCurrentUserSetup = ((DeviceProvisionedControllerImpl) deviceProvisionedController).isCurrentUserSetup();
                boolean z = NetworkControllerImpl.DEBUG;
                NetworkControllerImpl networkControllerImpl = NetworkControllerImpl.this;
                networkControllerImpl.mReceiverHandler.post(new NetworkControllerImpl$$ExternalSyntheticLambda7(networkControllerImpl, isCurrentUserSetup));
            }
        });
        handler2.post(new NetworkControllerImpl$$ExternalSyntheticLambda7(this, deviceProvisionedControllerImpl.isCurrentUserSetup()));
        WifiManager.ScanResultsCallback scanResultsCallback = new WifiManager.ScanResultsCallback() { // from class: com.android.systemui.statusbar.connectivity.NetworkControllerImpl.5
            @Override // android.net.wifi.WifiManager.ScanResultsCallback
            public final void onScanResultsAvailable() {
                NetworkControllerImpl networkControllerImpl = NetworkControllerImpl.this;
                networkControllerImpl.mNoNetworksAvailable = true;
                Iterator<ScanResult> it = networkControllerImpl.mWifiManager.getScanResults().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (!it.next().SSID.equals(((WifiState) NetworkControllerImpl.this.mWifiSignalController.mCurrentState).ssid)) {
                        NetworkControllerImpl.this.mNoNetworksAvailable = false;
                        break;
                    }
                }
                NetworkControllerImpl networkControllerImpl2 = NetworkControllerImpl.this;
                boolean z = networkControllerImpl2.mNoDefaultNetwork;
                if (z) {
                    networkControllerImpl2.mCallbackHandler.setConnectivityStatus(z, true ^ networkControllerImpl2.mInetCondition, networkControllerImpl2.mNoNetworksAvailable);
                }
            }
        };
        if (wifiManager != null) {
            wifiManager.registerScanResultsCallback(new MediaRoute2Provider$$ExternalSyntheticLambda0(handler2), scanResultsCallback);
        }
        connectivityManager.registerDefaultNetworkCallback(new ConnectivityManager.NetworkCallback(1) { // from class: com.android.systemui.statusbar.connectivity.NetworkControllerImpl.6
            public Network mLastNetwork;
            public NetworkCapabilities mLastNetworkCapabilities;

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                boolean z;
                int[] iArr;
                NetworkCapabilities networkCapabilities2 = this.mLastNetworkCapabilities;
                if (networkCapabilities2 != null && networkCapabilities2.hasCapability(16)) {
                    z = true;
                } else {
                    z = false;
                }
                boolean hasCapability = networkCapabilities.hasCapability(16);
                if (network.equals(this.mLastNetwork) && hasCapability == z) {
                    int[] m1413$$Nest$mgetProcessedTransportTypes = NetworkControllerImpl.m1413$$Nest$mgetProcessedTransportTypes(NetworkControllerImpl.this, networkCapabilities);
                    Arrays.sort(m1413$$Nest$mgetProcessedTransportTypes);
                    NetworkCapabilities networkCapabilities3 = this.mLastNetworkCapabilities;
                    if (networkCapabilities3 != null) {
                        iArr = NetworkControllerImpl.m1413$$Nest$mgetProcessedTransportTypes(NetworkControllerImpl.this, networkCapabilities3);
                    } else {
                        iArr = null;
                    }
                    if (iArr != null) {
                        Arrays.sort(iArr);
                    }
                    if (Arrays.equals(m1413$$Nest$mgetProcessedTransportTypes, iArr)) {
                        return;
                    }
                }
                this.mLastNetwork = network;
                this.mLastNetworkCapabilities = networkCapabilities;
                NetworkControllerImpl.this.mLastDefaultNetworkCapabilities = networkCapabilities;
                String str = NetworkControllerImpl.SSDF.format(Long.valueOf(System.currentTimeMillis())) + ",onCapabilitiesChanged: network=" + network + ",networkCapabilities=" + networkCapabilities;
                NetworkControllerImpl networkControllerImpl = NetworkControllerImpl.this;
                String[] strArr = networkControllerImpl.mHistory;
                int i = networkControllerImpl.mHistoryIndex;
                strArr[i] = str;
                networkControllerImpl.mHistoryIndex = (i + 1) % 16;
                networkControllerImpl.updateConnectivity();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(Network network) {
                this.mLastNetwork = null;
                this.mLastNetworkCapabilities = null;
                NetworkControllerImpl.this.mLastDefaultNetworkCapabilities = null;
                String str = NetworkControllerImpl.SSDF.format(Long.valueOf(System.currentTimeMillis())) + ",onLost: network=" + network;
                NetworkControllerImpl networkControllerImpl = NetworkControllerImpl.this;
                String[] strArr = networkControllerImpl.mHistory;
                int i = networkControllerImpl.mHistoryIndex;
                strArr[i] = str;
                networkControllerImpl.mHistoryIndex = (i + 1) % 16;
                networkControllerImpl.updateConnectivity();
            }
        }, handler2);
        this.mPhoneStateListener = new TelephonyCallback.ActiveDataSubscriptionIdListener() { // from class: com.android.systemui.statusbar.connectivity.NetworkControllerImpl$$ExternalSyntheticLambda5
            @Override // android.telephony.TelephonyCallback.ActiveDataSubscriptionIdListener
            public final void onActiveDataSubscriptionIdChanged(final int i) {
                final NetworkControllerImpl networkControllerImpl = NetworkControllerImpl.this;
                networkControllerImpl.mBgExecutor.execute(new Runnable() { // from class: com.android.systemui.statusbar.connectivity.NetworkControllerImpl$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean z;
                        NetworkControllerImpl networkControllerImpl2 = NetworkControllerImpl.this;
                        int i2 = i;
                        int i3 = networkControllerImpl2.mActiveMobileDataSubscription;
                        boolean z2 = false;
                        if (networkControllerImpl2.mValidatedTransports.get(0)) {
                            SubscriptionInfo activeSubscriptionInfo = networkControllerImpl2.mSubscriptionManager.getActiveSubscriptionInfo(i3);
                            SubscriptionInfo activeSubscriptionInfo2 = networkControllerImpl2.mSubscriptionManager.getActiveSubscriptionInfo(i2);
                            if (activeSubscriptionInfo != null && activeSubscriptionInfo2 != null && activeSubscriptionInfo.getGroupUuid() != null && activeSubscriptionInfo.getGroupUuid().equals(activeSubscriptionInfo2.getGroupUuid())) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                z2 = true;
                            }
                        }
                        if (z2) {
                            if (NetworkControllerImpl.DEBUG) {
                                Log.d("NetworkController", ": mForceCellularValidated to true.");
                            }
                            networkControllerImpl2.mForceCellularValidated = true;
                            networkControllerImpl2.mReceiverHandler.removeCallbacks(networkControllerImpl2.mClearForceValidated);
                            networkControllerImpl2.mReceiverHandler.postDelayed(networkControllerImpl2.mClearForceValidated, 2000L);
                        }
                        networkControllerImpl2.mActiveMobileDataSubscription = i2;
                        networkControllerImpl2.doUpdateMobileControllers();
                    }
                });
            }
        };
        demoModeController.addCallback((DemoMode) this);
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, "NetworkController", this);
        this.mWarningDialogController = new WifiWarningDialogController(context);
    }
}
