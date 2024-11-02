package com.android.systemui.statusbar.connectivity;

import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyDisplayInfo;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.settingslib.SignalIcon$IconGroup;
import com.android.settingslib.Utils;
import com.android.settingslib.mobile.TelephonyIcons;
import com.android.systemui.controls.ui.util.ControlExtension$Companion$$ExternalSyntheticOutline0;
import com.samsung.android.knox.accounts.Account;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileState extends ConnectivityState {
    public boolean airplaneMode;
    public int carrierId;
    public boolean carrierNetworkChangeMode;
    public boolean dataConnected;
    public boolean dataSim;
    public int dataState;
    public boolean defaultDataOff;
    public boolean isDefault;
    public boolean isEmergency;
    public String networkName;
    public String networkNameData;
    public final NetworkTypeResIdCache networkTypeResIdCache;
    public boolean roaming;
    public ServiceState serviceState;
    public SignalStrength signalStrength;
    public TelephonyDisplayInfo telephonyDisplayInfo;
    public boolean userSetup;

    public MobileState() {
        this(null, null, false, false, false, false, false, false, false, false, 0, false, 4095, null);
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final void copyFrom(ConnectivityState connectivityState) {
        MobileState mobileState;
        if (connectivityState instanceof MobileState) {
            mobileState = (MobileState) connectivityState;
        } else {
            mobileState = null;
        }
        if (mobileState != null) {
            super.copyFrom(mobileState);
            this.networkName = mobileState.networkName;
            this.networkNameData = mobileState.networkNameData;
            this.dataSim = mobileState.dataSim;
            this.dataConnected = mobileState.dataConnected;
            this.isEmergency = mobileState.isEmergency;
            this.airplaneMode = mobileState.airplaneMode;
            this.carrierNetworkChangeMode = mobileState.carrierNetworkChangeMode;
            this.isDefault = mobileState.isDefault;
            this.userSetup = mobileState.userSetup;
            this.roaming = mobileState.roaming;
            this.dataState = mobileState.dataState;
            this.defaultDataOff = mobileState.defaultDataOff;
            this.telephonyDisplayInfo = mobileState.telephonyDisplayInfo;
            this.serviceState = mobileState.serviceState;
            this.signalStrength = mobileState.signalStrength;
            return;
        }
        throw new IllegalArgumentException("MobileState can only update from another MobileState");
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(MobileState.class, cls) || !super.equals(obj)) {
            return false;
        }
        MobileState mobileState = (MobileState) obj;
        if (Intrinsics.areEqual(this.networkName, mobileState.networkName) && Intrinsics.areEqual(this.networkNameData, mobileState.networkNameData) && this.carrierId == mobileState.carrierId && this.dataSim == mobileState.dataSim && this.dataConnected == mobileState.dataConnected && this.isEmergency == mobileState.isEmergency && this.airplaneMode == mobileState.airplaneMode && this.carrierNetworkChangeMode == mobileState.carrierNetworkChangeMode && this.isDefault == mobileState.isDefault && this.userSetup == mobileState.userSetup && this.roaming == mobileState.roaming && this.dataState == mobileState.dataState && this.defaultDataOff == mobileState.defaultDataOff && Intrinsics.areEqual(this.telephonyDisplayInfo, mobileState.telephonyDisplayInfo) && Intrinsics.areEqual(this.serviceState, mobileState.serviceState) && Intrinsics.areEqual(this.signalStrength, mobileState.signalStrength)) {
            return true;
        }
        return false;
    }

    public final String getOperatorAlphaShort() {
        String str;
        ServiceState serviceState = this.serviceState;
        if (serviceState != null) {
            str = serviceState.getOperatorAlphaShort();
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int hashCode = super.hashCode() * 31;
        String str = this.networkName;
        int i4 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i5 = (hashCode + i) * 31;
        String str2 = this.networkNameData;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int hashCode2 = (this.telephonyDisplayInfo.hashCode() + ((Boolean.hashCode(this.defaultDataOff) + ((((Boolean.hashCode(this.roaming) + ((Boolean.hashCode(this.userSetup) + ((Boolean.hashCode(this.isDefault) + ((Boolean.hashCode(this.carrierNetworkChangeMode) + ((Boolean.hashCode(this.airplaneMode) + ((Boolean.hashCode(this.isEmergency) + ((Boolean.hashCode(this.dataConnected) + ((Boolean.hashCode(this.dataSim) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.carrierId, (i5 + i2) * 31, 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + this.dataState) * 31)) * 31)) * 31;
        ServiceState serviceState = this.serviceState;
        if (serviceState != null) {
            i3 = serviceState.hashCode();
        } else {
            i3 = 0;
        }
        int i6 = (hashCode2 + i3) * 31;
        SignalStrength signalStrength = this.signalStrength;
        if (signalStrength != null) {
            i4 = signalStrength.hashCode();
        }
        return i6 + i4;
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final List tableColumns() {
        return CollectionsKt___CollectionsKt.plus((Iterable) CollectionsKt__CollectionsKt.listOf("dataSim", "carrierId", "networkName", "networkNameData", "dataConnected", "roaming", Account.IS_DEFAULT, "isEmergency", "airplaneMode", "carrierNetworkChangeMode", "userSetup", "dataState", "defaultDataOff", "showQuickSettingsRatIcon", "voiceServiceState", "isInService", "networkTypeIconCache", "serviceState", "signalStrength", "displayInfo"), (Collection) super.tableColumns());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x008b, code lost:
    
        if (r1 != false) goto L13;
     */
    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List tableData() {
        /*
            Method dump skipped, instructions count: 271
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.connectivity.MobileState.tableData():java.util.List");
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final void toString(StringBuilder sb) {
        int i;
        String str;
        String access$minLog;
        boolean z;
        super.toString(sb);
        sb.append(',');
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("dataSim=", this.dataSim, ",", sb);
        sb.append("carrierId=" + this.carrierId);
        sb.append("networkName=" + this.networkName + ",");
        sb.append("networkNameData=" + this.networkNameData + ",");
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("dataConnected=", this.dataConnected, ",", sb);
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("roaming=", this.roaming, ",", sb);
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("isDefault=", this.isDefault, ",", sb);
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("isEmergency=", this.isEmergency, ",", sb);
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("airplaneMode=", this.airplaneMode, ",", sb);
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("carrierNetworkChangeMode=", this.carrierNetworkChangeMode, ",", sb);
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("userSetup=", this.userSetup, ",", sb);
        sb.append("dataState=" + this.dataState + ",");
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("defaultDataOff=", this.defaultDataOff, ",", sb);
        boolean z2 = true;
        if (!this.dataConnected) {
            SignalIcon$IconGroup signalIcon$IconGroup = this.iconGroup;
            if ((signalIcon$IconGroup == TelephonyIcons.DATA_DISABLED || signalIcon$IconGroup == TelephonyIcons.NOT_DEFAULT_DATA) && this.userSetup) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                z2 = false;
            }
        }
        ControlExtension$Companion$$ExternalSyntheticOutline0.m("showQuickSettingsRatIcon=", z2, ",", sb);
        ServiceState serviceState = this.serviceState;
        if (serviceState != null) {
            i = serviceState.getState();
        } else {
            i = -1;
        }
        sb.append("voiceServiceState=" + i + ",");
        sb.append("isInService=" + Utils.isInService(this.serviceState) + ",");
        StringBuilder sb2 = new StringBuilder("networkTypeIconCache=");
        sb2.append(this.networkTypeResIdCache);
        sb.append(sb2.toString());
        ServiceState serviceState2 = this.serviceState;
        String str2 = "(null)";
        if (serviceState2 == null || (str = MobileStateKt.access$minLog(serviceState2)) == null) {
            str = "(null)";
        }
        sb.append("serviceState=" + str + ",");
        SignalStrength signalStrength = this.signalStrength;
        if (signalStrength != null && (access$minLog = MobileStateKt.access$minLog(signalStrength)) != null) {
            str2 = access$minLog;
        }
        sb.append("signalStrength=" + str2 + ",");
        sb.append("displayInfo=" + this.telephonyDisplayInfo);
    }

    public /* synthetic */ MobileState(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i, boolean z9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? false : z4, (i2 & 64) != 0 ? false : z5, (i2 & 128) != 0 ? false : z6, (i2 & 256) != 0 ? false : z7, (i2 & 512) != 0 ? false : z8, (i2 & 1024) != 0 ? 0 : i, (i2 & 2048) != 0 ? false : z9);
    }

    public MobileState(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i, boolean z9) {
        this.networkName = str;
        this.networkNameData = str2;
        this.dataSim = z;
        this.dataConnected = z2;
        this.isEmergency = z3;
        this.airplaneMode = z4;
        this.carrierNetworkChangeMode = z5;
        this.isDefault = z6;
        this.userSetup = z7;
        this.roaming = z8;
        this.dataState = i;
        this.defaultDataOff = z9;
        this.telephonyDisplayInfo = new TelephonyDisplayInfo(0, 0, false);
        this.carrierId = -1;
        this.networkTypeResIdCache = new NetworkTypeResIdCache(null, 1, null);
    }

    public static /* synthetic */ void getNetworkTypeResIdCache$annotations() {
    }
}
