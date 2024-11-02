package com.android.systemui.statusbar.pipeline.mobile.data;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyDisplayInfo;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.settingslib.SignalIcon$MobileIconGroup;
import com.android.settingslib.Utils;
import com.android.settingslib.mobile.MobileMappings;
import com.android.systemui.ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.pipeline.shared.data.model.ImsRegState;
import java.util.Map;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileInputLogger {
    public final LogBuffer buffer;

    public MobileInputLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void logActionCarrierConfigChanged() {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logActionCarrierConfigChanged$2 mobileInputLogger$logActionCarrierConfigChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logActionCarrierConfigChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return "Intent received: ACTION_CARRIER_CONFIG_CHANGED";
            }
        };
        LogBuffer logBuffer = this.buffer;
        logBuffer.commit(logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logActionCarrierConfigChanged$2, null));
    }

    public final void logCarrierConfigChanged(int i) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logCarrierConfigChanged$2 mobileInputLogger$logCarrierConfigChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logCarrierConfigChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onCarrierConfigChanged: subId=", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logCarrierConfigChanged$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logDefaultDataSubRatConfig(MobileMappings.Config config) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logDefaultDataSubRatConfig$2 mobileInputLogger$logDefaultDataSubRatConfig$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logDefaultDataSubRatConfig$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("defaultDataSubRatConfig: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logDefaultDataSubRatConfig$2, null);
        obtain.setStr1(config.toString());
        logBuffer.commit(obtain);
    }

    public final void logDefaultMobileIconGroup(SignalIcon$MobileIconGroup signalIcon$MobileIconGroup) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logDefaultMobileIconGroup$2 mobileInputLogger$logDefaultMobileIconGroup$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logDefaultMobileIconGroup$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("defaultMobileIconGroup: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logDefaultMobileIconGroup$2, null);
        obtain.setStr1(signalIcon$MobileIconGroup.name);
        logBuffer.commit(obtain);
    }

    public final void logDefaultMobileIconMapping(int i, Map map) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logDefaultMobileIconMapping$2 mobileInputLogger$logDefaultMobileIconMapping$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logDefaultMobileIconMapping$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "defaultMobileIconMapping(" + logMessage.getInt1() + "): " + logMessage.getStr1();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logDefaultMobileIconMapping$2, null);
        obtain.setInt1(i);
        obtain.setStr1(map.toString());
        logBuffer.commit(obtain);
    }

    public final void logImsRegState(int i, ImsRegState imsRegState) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logImsRegState$2 mobileInputLogger$logImsRegState$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logImsRegState$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                boolean bool1 = logMessage.getBool1();
                return KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("onImsRegStateChanged: slotId=", int1, " voWifi=", bool1, " voLTE="), logMessage.getBool2(), " ePDG=", logMessage.getBool3());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logImsRegState$2, null);
        obtain.setInt1(i);
        obtain.setBool1(imsRegState.voWifiRegState);
        obtain.setBool2(imsRegState.voLTERegState);
        obtain.setBool3(imsRegState.ePDGRegState);
        logBuffer.commit(obtain);
    }

    public final void logMobileIconMappingTable(int i, Map map) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logMobileIconMappingTable$2 mobileInputLogger$logMobileIconMappingTable$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logMobileIconMappingTable$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "mobileIconMappingTable(" + logMessage.getInt1() + "): " + logMessage.getStr1();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logMobileIconMappingTable$2, null);
        obtain.setInt1(i);
        obtain.setStr1(map.toString());
        logBuffer.commit(obtain);
    }

    public final void logOnCallStateChanged(int i, int i2) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logOnCallStateChanged$2 mobileInputLogger$logOnCallStateChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logOnCallStateChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0.m("onCallStateChanged: subId=", logMessage.getInt1(), " callState=", logMessage.getInt2());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logOnCallStateChanged$2, null);
        obtain.setInt1(i2);
        obtain.setInt2(i);
        logBuffer.commit(obtain);
    }

    public final void logOnCarrierNetworkChange(int i, boolean z) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logOnCarrierNetworkChange$2 mobileInputLogger$logOnCarrierNetworkChange$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logOnCarrierNetworkChange$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "onCarrierNetworkChange: subId=" + logMessage.getInt1() + " active=" + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logOnCarrierNetworkChange$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logOnDataActivity(int i, int i2) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logOnDataActivity$2 mobileInputLogger$logOnDataActivity$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logOnDataActivity$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0.m("onDataActivity: subId=", logMessage.getInt1(), " direction=", logMessage.getInt2());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logOnDataActivity$2, null);
        obtain.setInt1(i2);
        obtain.setInt2(i);
        logBuffer.commit(obtain);
    }

    public final void logOnDataConnectionStateChanged(int i, int i2, int i3) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logOnDataConnectionStateChanged$2 mobileInputLogger$logOnDataConnectionStateChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logOnDataConnectionStateChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                int int2 = logMessage.getInt2();
                String str1 = logMessage.getStr1();
                StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("onDataConnectionStateChanged: subId=", int1, " dataState=", int2, " networkType=");
                m.append(str1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logOnDataConnectionStateChanged$2, null);
        obtain.setInt1(i3);
        obtain.setInt2(i);
        obtain.setStr1(String.valueOf(i2));
        logBuffer.commit(obtain);
    }

    public final void logOnDataEnabledChanged(int i, boolean z) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logOnDataEnabledChanged$2 mobileInputLogger$logOnDataEnabledChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logOnDataEnabledChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "onDataEnabledChanged: subId=" + logMessage.getInt1() + " enabled=" + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logOnDataEnabledChanged$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logOnDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo, int i) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logOnDisplayInfoChanged$2 mobileInputLogger$logOnDisplayInfoChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logOnDisplayInfoChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "onDisplayInfoChanged: subId=" + logMessage.getInt1() + " displayInfo=" + logMessage.getStr1();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logOnDisplayInfoChanged$2, null);
        obtain.setInt1(i);
        obtain.setStr1(telephonyDisplayInfo.toString());
        logBuffer.commit(obtain);
    }

    public final void logOnServiceStateChanged(int i, ServiceState serviceState) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logOnServiceStateChanged$2 mobileInputLogger$logOnServiceStateChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logOnServiceStateChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                boolean bool3 = logMessage.getBool3();
                boolean bool4 = logMessage.getBool4();
                String str1 = logMessage.getStr1();
                int int2 = logMessage.getInt2();
                StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("onServiceStateChanged: subId=", int1, " connected=", bool1, " emergencyOnly=");
                KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, bool2, " roaming=", bool3, " isNTN=");
                m.append(bool4);
                m.append(" operator=");
                m.append(str1);
                m.append(" voiceNetworkType=");
                m.append(int2);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logOnServiceStateChanged$2, null);
        obtain.setInt1(i);
        obtain.setBool1(Utils.isInService(serviceState));
        obtain.setBool2(serviceState.isEmergencyOnly());
        obtain.setBool3(serviceState.getRoaming());
        obtain.setBool4(serviceState.isUsingNonTerrestrialNetwork());
        obtain.setStr1(serviceState.getOperatorAlphaShort());
        obtain.setInt2(serviceState.getVoiceNetworkType());
        logBuffer.commit(obtain);
    }

    public final void logOnSignalStrengthsChanged(SignalStrength signalStrength, int i) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logOnSignalStrengthsChanged$2 mobileInputLogger$logOnSignalStrengthsChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logOnSignalStrengthsChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                String str1 = logMessage.getStr1();
                int int2 = logMessage.getInt2();
                StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("onSignalStrengthsChanged: subId=", int1, " strengths=", str1, " primaryLevel=");
                m.append(int2);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logOnSignalStrengthsChanged$2, null);
        obtain.setInt1(i);
        obtain.setStr1(signalStrength.toString());
        obtain.setInt2(signalStrength.getVendorLevel());
        logBuffer.commit(obtain);
    }

    public final void logOnSubscriptionsChanged() {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logOnSubscriptionsChanged$2 mobileInputLogger$logOnSubscriptionsChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logOnSubscriptionsChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return "onSubscriptionsChanged";
            }
        };
        LogBuffer logBuffer = this.buffer;
        logBuffer.commit(logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logOnSubscriptionsChanged$2, null));
    }

    public final void logSemCarrierChanged() {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logSemCarrierChanged$2 mobileInputLogger$logSemCarrierChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logSemCarrierChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return "Intent received: com.samsung.carrier.action.CARRIER_CHANGED";
            }
        };
        LogBuffer logBuffer = this.buffer;
        logBuffer.commit(logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logSemCarrierChanged$2, null));
    }

    public final void logSimSettingChanged(int i, boolean z) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logSimSettingChanged$2 mobileInputLogger$logSimSettingChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logSimSettingChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "simSettingChanged: slot=" + logMessage.getInt1() + " simOn=" + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logSimSettingChanged$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logSlotId(int i, int i2) {
        LogLevel logLevel = LogLevel.INFO;
        MobileInputLogger$logSlotId$2 mobileInputLogger$logSlotId$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger$logSlotId$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0.m("onSlotId: slotId=", logMessage.getInt1(), " subId=", logMessage.getInt2());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("MobileInputLog", logLevel, mobileInputLogger$logSlotId$2, null);
        obtain.setInt1(i);
        obtain.setInt2(i2);
        logBuffer.commit(obtain);
    }
}
