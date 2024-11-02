package com.android.keyguard;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.keyguard.logging.CarrierTextManagerLogger;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorCallback;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.shade.carrier.CarrierTextUtil;
import com.android.systemui.statusbar.pipeline.mobile.data.model.SubscriptionsOrder;
import com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository;
import com.android.systemui.telephony.TelephonyListenerManager;
import com.android.systemui.util.settings.GlobalSettings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CarrierTextManager {
    public Boolean hasSpecialChar;
    public final Executor mBgExecutor;
    protected final KeyguardUpdateMonitorCallback mCallback;
    public CarrierTextCallback mCarrierTextCallback;
    public final CarrierTextUtil mCarrierTextUtil;
    public final Context mContext;
    public final GlobalSettings mGlobalSettings;
    public final boolean mIsEmergencyCallCapable;
    protected KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final AnonymousClass4 mKnoxStateCallback;
    public final CarrierTextManagerLogger mLogger;
    public final Executor mMainExecutor;
    public final AtomicBoolean mNetworkSupported;
    public final AnonymousClass3 mPhoneStateListener;
    public final CharSequence mSeparator;
    public final boolean mShowMissingSim;
    public final boolean[] mSimErrorState;
    public final boolean[] mSimNetworkLock;
    public final int mSimSlotsNumber;
    public final SubscriptionsOrder mSubscriptionsOrder;
    public boolean mTelephonyCapable;
    public final TelephonyListenerManager mTelephonyListenerManager;
    public final TelephonyManager mTelephonyManager;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public final AnonymousClass1 mWakefulnessObserver;
    public final WifiRepository mWifiRepository;
    public final WifiTextManager mWifiTextManager;
    public final HashMap plmnOfBroadcast;
    public final HashMap voWifiConnected;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.CarrierTextManager$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass5 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode;

        static {
            int[] iArr = new int[StatusMode.values().length];
            $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode = iArr;
            try {
                iArr[StatusMode.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.SimNotReady.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.NetworkLocked.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.PersoLocked.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.SimMissing.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.SimPermDisabled.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.SimMissingLocked.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.SimLocked.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.SimPukLocked.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.SimIoError.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.SimRestricted.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[StatusMode.SimUnknown.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
        public final Executor mBgExecutor;
        public final CarrierTextUtil mCarrierTextUtil;
        public final Context mContext;
        public String mDebugLocation;
        public final GlobalSettings mGlobalSettings;
        public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
        public final CarrierTextManagerLogger mLogger;
        public final Executor mMainExecutor;
        public final String mSeparator = " | ";
        public boolean mShowAirplaneMode;
        public boolean mShowMissingSim;
        public final SubscriptionsOrder mSubscriptionsOrder;
        public final TelephonyListenerManager mTelephonyListenerManager;
        public final TelephonyManager mTelephonyManager;
        public final WakefulnessLifecycle mWakefulnessLifecycle;
        public final WifiRepository mWifiRepository;
        public final WifiTextManager mWifiTextManager;

        public Builder(Context context, Resources resources, WifiRepository wifiRepository, TelephonyManager telephonyManager, TelephonyListenerManager telephonyListenerManager, CarrierTextUtil carrierTextUtil, WakefulnessLifecycle wakefulnessLifecycle, Executor executor, Executor executor2, KeyguardUpdateMonitor keyguardUpdateMonitor, SubscriptionsOrder subscriptionsOrder, CarrierTextManagerLogger carrierTextManagerLogger, GlobalSettings globalSettings, WifiTextManager wifiTextManager) {
            this.mContext = context;
            this.mWifiRepository = wifiRepository;
            this.mTelephonyManager = telephonyManager;
            this.mTelephonyListenerManager = telephonyListenerManager;
            this.mCarrierTextUtil = carrierTextUtil;
            this.mWakefulnessLifecycle = wakefulnessLifecycle;
            this.mMainExecutor = executor;
            this.mBgExecutor = executor2;
            this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
            this.mSubscriptionsOrder = subscriptionsOrder;
            this.mLogger = carrierTextManagerLogger;
            if (BasicRune.STATUS_NETWORK_WIFI_DISPLAY_AP_NAME) {
                this.mWifiTextManager = wifiTextManager;
            }
            this.mGlobalSettings = globalSettings;
        }

        public final CarrierTextManager build() {
            String str = this.mDebugLocation;
            CarrierTextManagerLogger carrierTextManagerLogger = this.mLogger;
            carrierTextManagerLogger.location = str;
            return new CarrierTextManager(this.mContext, this.mSeparator, this.mShowAirplaneMode, this.mShowMissingSim, this.mWifiRepository, this.mTelephonyManager, this.mTelephonyListenerManager, this.mCarrierTextUtil, this.mWakefulnessLifecycle, this.mMainExecutor, this.mBgExecutor, this.mKeyguardUpdateMonitor, this.mSubscriptionsOrder, carrierTextManagerLogger, this.mGlobalSettings, this.mWifiTextManager, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CarrierTextCallbackInfo {
        public final boolean airplaneMode;
        public final boolean anySimReady;
        public final CharSequence carrierText;
        public final CharSequence[] listOfCarriers;
        public final String location;
        public final int[] subscriptionIds;

        public CarrierTextCallbackInfo(CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int[] iArr) {
            this(null, charSequence, charSequenceArr, z, iArr, false);
        }

        public final String toString() {
            return "CarrierTextCallbackInfo{carrierText=" + ((Object) this.carrierText) + ", listOfCarriers=" + Arrays.toString(this.listOfCarriers) + ", anySimReady=" + this.anySimReady + ", subscriptionIds=" + Arrays.toString(this.subscriptionIds) + ", airplaneMode=" + this.airplaneMode + '}';
        }

        public CarrierTextCallbackInfo(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int[] iArr, boolean z2) {
            this.carrierText = charSequence;
            this.listOfCarriers = charSequenceArr;
            this.anySimReady = z;
            this.subscriptionIds = iArr;
            this.airplaneMode = z2;
            this.location = str;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum StatusMode {
        Normal,
        NetworkLocked,
        PersoLocked,
        SimMissing,
        SimMissingLocked,
        SimPukLocked,
        SimLocked,
        SimPermDisabled,
        SimNotReady,
        SimIoError,
        SimRestricted,
        SimUnknown
    }

    public /* synthetic */ CarrierTextManager(Context context, CharSequence charSequence, boolean z, boolean z2, WifiRepository wifiRepository, TelephonyManager telephonyManager, TelephonyListenerManager telephonyListenerManager, CarrierTextUtil carrierTextUtil, WakefulnessLifecycle wakefulnessLifecycle, Executor executor, Executor executor2, KeyguardUpdateMonitor keyguardUpdateMonitor, SubscriptionsOrder subscriptionsOrder, CarrierTextManagerLogger carrierTextManagerLogger, GlobalSettings globalSettings, WifiTextManager wifiTextManager, int i) {
        this(context, charSequence, z, z2, wifiRepository, telephonyManager, telephonyListenerManager, carrierTextUtil, wakefulnessLifecycle, executor, executor2, keyguardUpdateMonitor, subscriptionsOrder, carrierTextManagerLogger, globalSettings, wifiTextManager);
    }

    public static CharSequence concatenate(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        boolean z = !TextUtils.isEmpty(charSequence);
        boolean z2 = !TextUtils.isEmpty(charSequence2);
        if (z && z2) {
            StringBuilder sb = new StringBuilder();
            sb.append(charSequence);
            sb.append(charSequence3);
            sb.append(charSequence2);
            return sb.toString();
        }
        if (z) {
            return charSequence;
        }
        if (z2) {
            return charSequence2;
        }
        return "";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0011. Please report as an issue. */
    public final CharSequence getCarrierTextForSimState(int i, CharSequence charSequence) {
        CharSequence text;
        int i2 = AnonymousClass5.$SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode[getStatusForIccState(i).ordinal()];
        Context context = this.mContext;
        switch (i2) {
            case 1:
                if (isRTL() && !this.hasSpecialChar.booleanValue()) {
                    return "\u200f" + ((Object) charSequence);
                }
                return charSequence;
            case 2:
                return "";
            case 3:
                return makeCarrierStringOnEmergencyCapable(context.getText(R.string.keyguard_network_locked_message), charSequence);
            case 4:
                return context.getText(R.string.kg_perso_locked_message);
            case 5:
            case 11:
            case 12:
            default:
                return null;
            case 6:
                CharSequence makeCarrierStringOnEmergencyCapable = makeCarrierStringOnEmergencyCapable(context.getText(R.string.keyguard_permanent_disabled_sim_message_short), charSequence);
                if (!LsRune.SECURITY_KOR_USIM_TEXT) {
                    return makeCarrierStringOnEmergencyCapable;
                }
                return "";
            case 7:
                if (LsRune.SECURITY_KOR_USIM_TEXT) {
                    return makeCarrierStringOnEmergencyCapable(context.getText(R.string.kg_missing_sim_message_short), charSequence);
                }
                return null;
            case 8:
                text = context.getText(R.string.kg_sim_locked_message);
                if (LsRune.SECURITY_KOR_USIM_TEXT) {
                    text = context.getText(R.string.kg_pin_locked_message);
                }
                if (LsRune.SECURITY_DIRECT_CALL_TO_ECC) {
                    return charSequence;
                }
                return text;
            case 9:
                text = context.getText(R.string.keyguard_sim_puk_locked_message);
                if (LsRune.SECURITY_KOR_USIM_TEXT) {
                    text = context.getText(R.string.kg_puk_locked_message);
                }
                if (LsRune.SECURITY_DIRECT_CALL_TO_ECC) {
                    return charSequence;
                }
                return text;
            case 10:
                return makeCarrierStringOnEmergencyCapable(context.getText(R.string.keyguard_sim_error_message_short), charSequence);
        }
    }

    public StatusMode getStatusForIccState(int i) {
        if (!this.mKeyguardUpdateMonitor.mDeviceProvisioned && (i == 1 || i == 7)) {
            return StatusMode.SimMissingLocked;
        }
        if (i != 12) {
            switch (i) {
                case 0:
                    return StatusMode.SimUnknown;
                case 1:
                    return StatusMode.SimMissing;
                case 2:
                    return StatusMode.SimLocked;
                case 3:
                    return StatusMode.SimPukLocked;
                case 4:
                    return StatusMode.NetworkLocked;
                case 5:
                    return StatusMode.Normal;
                case 6:
                    return StatusMode.SimNotReady;
                case 7:
                    return StatusMode.SimPermDisabled;
                case 8:
                    return StatusMode.SimIoError;
                case 9:
                    return StatusMode.SimRestricted;
                default:
                    return StatusMode.SimUnknown;
            }
        }
        return StatusMode.PersoLocked;
    }

    public final void handleSetListening(CarrierTextCallback carrierTextCallback) {
        AnonymousClass4 anonymousClass4 = this.mKnoxStateCallback;
        AnonymousClass3 anonymousClass3 = this.mPhoneStateListener;
        TelephonyListenerManager telephonyListenerManager = this.mTelephonyListenerManager;
        Executor executor = this.mMainExecutor;
        if (carrierTextCallback != null) {
            this.mCarrierTextCallback = carrierTextCallback;
            if (this.mNetworkSupported.get()) {
                executor.execute(new CarrierTextManager$$ExternalSyntheticLambda2(this, 1));
                telephonyListenerManager.addActiveDataSubscriptionIdListener(anonymousClass3);
                ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).registerCallback(anonymousClass4);
                return;
            } else if (BasicRune.STATUS_NETWORK_WIFI_DISPLAY_AP_NAME) {
                executor.execute(new CarrierTextManager$$ExternalSyntheticLambda2(this, 2));
                return;
            } else {
                executor.execute(new CarrierTextManager$$ExternalSyntheticLambda2(carrierTextCallback, 4));
                return;
            }
        }
        this.mCarrierTextCallback = null;
        executor.execute(new CarrierTextManager$$ExternalSyntheticLambda2(this, 3));
        ((ArrayList) telephonyListenerManager.mTelephonyCallback.mActiveDataSubscriptionIdListeners).remove(anonymousClass3);
        telephonyListenerManager.updateListening();
        ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).removeCallback(anonymousClass4);
    }

    public final boolean isRTL() {
        if ((this.mContext.getResources().getConfiguration().screenLayout & 192) == 128) {
            return true;
        }
        return false;
    }

    public final CharSequence makeCarrierStringOnEmergencyCapable(CharSequence charSequence, CharSequence charSequence2) {
        if (this.mIsEmergencyCallCapable) {
            return concatenate(charSequence, charSequence2, this.mSeparator);
        }
        return charSequence;
    }

    public void postToCallback(CarrierTextCallbackInfo carrierTextCallbackInfo) {
        CarrierTextCallback carrierTextCallback = this.mCarrierTextCallback;
        if (carrierTextCallback != null) {
            this.mMainExecutor.execute(new CarrierTextManager$$ExternalSyntheticLambda0(carrierTextCallback, carrierTextCallbackInfo));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
    
        if (r8.getIntExtra("phone", 0) == 0) goto L20;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0391 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x02b9 A[EDGE_INSN: B:187:0x02b9->B:98:0x02b9 BREAK  A[LOOP:3: B:82:0x0280->B:88:0x02b4], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x00cd A[EDGE_INSN: B:219:0x00cd->B:26:0x00cd BREAK  A[LOOP:1: B:19:0x00ab->B:217:0x00ca], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x019e A[EDGE_INSN: B:57:0x019e->B:58:0x019e BREAK  A[LOOP:2: B:27:0x00d0->B:53:0x0190], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0288  */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateCarrierText(android.content.Intent r26) {
        /*
            Method dump skipped, instructions count: 1084
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.CarrierTextManager.updateCarrierText(android.content.Intent):void");
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.keyguard.CarrierTextManager$1] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.android.keyguard.CarrierTextManager$3] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.keyguard.CarrierTextManager$4] */
    private CarrierTextManager(Context context, CharSequence charSequence, boolean z, boolean z2, WifiRepository wifiRepository, TelephonyManager telephonyManager, TelephonyListenerManager telephonyListenerManager, CarrierTextUtil carrierTextUtil, WakefulnessLifecycle wakefulnessLifecycle, Executor executor, Executor executor2, KeyguardUpdateMonitor keyguardUpdateMonitor, SubscriptionsOrder subscriptionsOrder, CarrierTextManagerLogger carrierTextManagerLogger, GlobalSettings globalSettings, WifiTextManager wifiTextManager) {
        this.mNetworkSupported = new AtomicBoolean();
        this.mWakefulnessObserver = new WakefulnessLifecycle.Observer() { // from class: com.android.keyguard.CarrierTextManager.1
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onFinishedWakingUp() {
                CarrierTextCallback carrierTextCallback = CarrierTextManager.this.mCarrierTextCallback;
                if (carrierTextCallback != null) {
                    carrierTextCallback.finishedWakingUp();
                }
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedGoingToSleep() {
                CarrierTextCallback carrierTextCallback = CarrierTextManager.this.mCarrierTextCallback;
                if (carrierTextCallback != null) {
                    carrierTextCallback.startedGoingToSleep();
                }
            }
        };
        this.mCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.CarrierTextManager.2
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onDeviceProvisioned() {
                CarrierTextManager.this.updateCarrierText(null);
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onRefreshCarrierInfo(Intent intent) {
                CarrierTextManager carrierTextManager = CarrierTextManager.this;
                carrierTextManager.mLogger.logUpdateCarrierTextForReason(1);
                carrierTextManager.updateCarrierText(intent);
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onSimStateChanged(int i, int i2, int i3) {
                CarrierTextManager carrierTextManager = CarrierTextManager.this;
                if (i2 >= 0 && i2 < carrierTextManager.mSimSlotsNumber) {
                    boolean z3 = true;
                    if (carrierTextManager.getStatusForIccState(i3) == StatusMode.SimIoError) {
                        carrierTextManager.mSimErrorState[i2] = true;
                    } else {
                        boolean[] zArr = carrierTextManager.mSimErrorState;
                        if (zArr[i2]) {
                            zArr[i2] = false;
                        } else if (i3 == 4) {
                            carrierTextManager.mSimNetworkLock[i2] = true;
                        } else {
                            boolean[] zArr2 = carrierTextManager.mSimNetworkLock;
                            if (zArr2[i2]) {
                                zArr2[i2] = false;
                            } else if ((i3 != 2 && i3 != 3 && i3 != 12) || i == -1) {
                                z3 = false;
                            }
                        }
                    }
                    Log.d("CarrierTextController", "onSimStateChanged: " + carrierTextManager.getStatusForIccState(i3) + ", update: " + z3);
                    if (z3) {
                        carrierTextManager.updateCarrierText(null);
                        return;
                    }
                    return;
                }
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onSimStateChanged() - slotId invalid: ", i2, " mTelephonyCapable: ");
                m.append(Boolean.toString(carrierTextManager.mTelephonyCapable));
                Log.d("CarrierTextController", m.toString());
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onTelephonyCapable(boolean z3) {
                CarrierTextManager carrierTextManager = CarrierTextManager.this;
                carrierTextManager.mLogger.logUpdateCarrierTextForReason(2);
                carrierTextManager.mTelephonyCapable = z3;
                carrierTextManager.updateCarrierText(null);
            }
        };
        this.mPhoneStateListener = new TelephonyCallback.ActiveDataSubscriptionIdListener() { // from class: com.android.keyguard.CarrierTextManager.3
            @Override // android.telephony.TelephonyCallback.ActiveDataSubscriptionIdListener
            public final void onActiveDataSubscriptionIdChanged(int i) {
                if (CarrierTextManager.this.mNetworkSupported.get()) {
                    CarrierTextManager carrierTextManager = CarrierTextManager.this;
                    if (carrierTextManager.mCarrierTextCallback != null) {
                        carrierTextManager.mLogger.logUpdateCarrierTextForReason(4);
                        CarrierTextManager.this.updateCarrierText(null);
                    }
                }
            }
        };
        this.mKnoxStateCallback = new KnoxStateMonitorCallback() { // from class: com.android.keyguard.CarrierTextManager.4
            @Override // com.android.systemui.knox.KnoxStateMonitorCallback
            public final void onUpdateLockscreenHiddenItems() {
                CarrierTextManager.this.updateCarrierText(null);
            }
        };
        this.hasSpecialChar = Boolean.FALSE;
        this.mContext = context;
        this.mIsEmergencyCallCapable = telephonyManager.isVoiceCapable();
        this.mShowMissingSim = z2;
        this.mWifiRepository = wifiRepository;
        this.mTelephonyManager = telephonyManager;
        this.mSeparator = " • ";
        this.mTelephonyListenerManager = telephonyListenerManager;
        this.mCarrierTextUtil = carrierTextUtil;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        int supportedModemCount = telephonyManager.getSupportedModemCount();
        this.mSimSlotsNumber = supportedModemCount;
        this.mSimErrorState = new boolean[supportedModemCount];
        this.mSimNetworkLock = new boolean[supportedModemCount];
        this.voWifiConnected = new HashMap();
        this.plmnOfBroadcast = new HashMap();
        this.mMainExecutor = executor;
        this.mBgExecutor = executor2;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mSubscriptionsOrder = subscriptionsOrder;
        this.mLogger = carrierTextManagerLogger;
        if (BasicRune.STATUS_NETWORK_WIFI_DISPLAY_AP_NAME) {
            this.mWifiTextManager = wifiTextManager;
            Function2 function2 = new Function2() { // from class: com.android.keyguard.CarrierTextManager$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Boolean) obj2).booleanValue();
                    CarrierTextManager.this.updateCarrierText(null);
                    return null;
                }
            };
            BuildersKt.launch$default(wifiTextManager.scope, null, null, new WifiTextManager$register$1(wifiTextManager, function2, null), 3);
            BuildersKt.launch$default(wifiTextManager.scope, null, null, new WifiTextManager$register$2(wifiTextManager, function2, null), 3);
        }
        this.mGlobalSettings = globalSettings;
        executor2.execute(new CarrierTextManager$$ExternalSyntheticLambda2(this, 0));
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface CarrierTextCallback {
        void updateCarrierInfo(CarrierTextCallbackInfo carrierTextCallbackInfo);

        default void finishedWakingUp() {
        }

        default void startedGoingToSleep() {
        }
    }
}
