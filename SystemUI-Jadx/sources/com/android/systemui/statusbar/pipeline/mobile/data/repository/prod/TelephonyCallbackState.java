package com.android.systemui.statusbar.pipeline.mobile.data.repository.prod;

import com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.CallbackEvent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TelephonyCallbackState {
    public final CallbackEvent.OnCallStateChanged onCallStateChanged;
    public final CallbackEvent.OnCarrierNetworkChange onCarrierNetworkChange;
    public final CallbackEvent.OnDataActivity onDataActivity;
    public final CallbackEvent.OnDataConnectionStateChanged onDataConnectionStateChanged;
    public final CallbackEvent.OnDataEnabledChanged onDataEnabledChanged;
    public final CallbackEvent.OnDisplayInfoChanged onDisplayInfoChanged;
    public final CallbackEvent.OnServiceStateChanged onServiceStateChanged;
    public final CallbackEvent.OnSignalStrengthChanged onSignalStrengthChanged;

    public TelephonyCallbackState() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public static TelephonyCallbackState copy$default(TelephonyCallbackState telephonyCallbackState, CallbackEvent.OnDataActivity onDataActivity, CallbackEvent.OnCarrierNetworkChange onCarrierNetworkChange, CallbackEvent.OnDataConnectionStateChanged onDataConnectionStateChanged, CallbackEvent.OnDataEnabledChanged onDataEnabledChanged, CallbackEvent.OnDisplayInfoChanged onDisplayInfoChanged, CallbackEvent.OnServiceStateChanged onServiceStateChanged, CallbackEvent.OnSignalStrengthChanged onSignalStrengthChanged, CallbackEvent.OnCallStateChanged onCallStateChanged, int i) {
        CallbackEvent.OnDataActivity onDataActivity2;
        CallbackEvent.OnCarrierNetworkChange onCarrierNetworkChange2;
        CallbackEvent.OnDataConnectionStateChanged onDataConnectionStateChanged2;
        CallbackEvent.OnDataEnabledChanged onDataEnabledChanged2;
        CallbackEvent.OnDisplayInfoChanged onDisplayInfoChanged2;
        CallbackEvent.OnServiceStateChanged onServiceStateChanged2;
        CallbackEvent.OnSignalStrengthChanged onSignalStrengthChanged2;
        CallbackEvent.OnCallStateChanged onCallStateChanged2;
        if ((i & 1) != 0) {
            onDataActivity2 = telephonyCallbackState.onDataActivity;
        } else {
            onDataActivity2 = onDataActivity;
        }
        if ((i & 2) != 0) {
            onCarrierNetworkChange2 = telephonyCallbackState.onCarrierNetworkChange;
        } else {
            onCarrierNetworkChange2 = onCarrierNetworkChange;
        }
        if ((i & 4) != 0) {
            onDataConnectionStateChanged2 = telephonyCallbackState.onDataConnectionStateChanged;
        } else {
            onDataConnectionStateChanged2 = onDataConnectionStateChanged;
        }
        if ((i & 8) != 0) {
            onDataEnabledChanged2 = telephonyCallbackState.onDataEnabledChanged;
        } else {
            onDataEnabledChanged2 = onDataEnabledChanged;
        }
        if ((i & 16) != 0) {
            onDisplayInfoChanged2 = telephonyCallbackState.onDisplayInfoChanged;
        } else {
            onDisplayInfoChanged2 = onDisplayInfoChanged;
        }
        if ((i & 32) != 0) {
            onServiceStateChanged2 = telephonyCallbackState.onServiceStateChanged;
        } else {
            onServiceStateChanged2 = onServiceStateChanged;
        }
        if ((i & 64) != 0) {
            onSignalStrengthChanged2 = telephonyCallbackState.onSignalStrengthChanged;
        } else {
            onSignalStrengthChanged2 = onSignalStrengthChanged;
        }
        if ((i & 128) != 0) {
            onCallStateChanged2 = telephonyCallbackState.onCallStateChanged;
        } else {
            onCallStateChanged2 = onCallStateChanged;
        }
        return new TelephonyCallbackState(onDataActivity2, onCarrierNetworkChange2, onDataConnectionStateChanged2, onDataEnabledChanged2, onDisplayInfoChanged2, onServiceStateChanged2, onSignalStrengthChanged2, onCallStateChanged2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TelephonyCallbackState)) {
            return false;
        }
        TelephonyCallbackState telephonyCallbackState = (TelephonyCallbackState) obj;
        if (Intrinsics.areEqual(this.onDataActivity, telephonyCallbackState.onDataActivity) && Intrinsics.areEqual(this.onCarrierNetworkChange, telephonyCallbackState.onCarrierNetworkChange) && Intrinsics.areEqual(this.onDataConnectionStateChanged, telephonyCallbackState.onDataConnectionStateChanged) && Intrinsics.areEqual(this.onDataEnabledChanged, telephonyCallbackState.onDataEnabledChanged) && Intrinsics.areEqual(this.onDisplayInfoChanged, telephonyCallbackState.onDisplayInfoChanged) && Intrinsics.areEqual(this.onServiceStateChanged, telephonyCallbackState.onServiceStateChanged) && Intrinsics.areEqual(this.onSignalStrengthChanged, telephonyCallbackState.onSignalStrengthChanged) && Intrinsics.areEqual(this.onCallStateChanged, telephonyCallbackState.onCallStateChanged)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int i;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int i2 = 0;
        CallbackEvent.OnDataActivity onDataActivity = this.onDataActivity;
        if (onDataActivity == null) {
            hashCode = 0;
        } else {
            hashCode = onDataActivity.hashCode();
        }
        int i3 = hashCode * 31;
        int i4 = 1;
        CallbackEvent.OnCarrierNetworkChange onCarrierNetworkChange = this.onCarrierNetworkChange;
        if (onCarrierNetworkChange == null) {
            i = 0;
        } else {
            boolean z = onCarrierNetworkChange.active;
            i = z;
            if (z != 0) {
                i = 1;
            }
        }
        int i5 = (i3 + i) * 31;
        CallbackEvent.OnDataConnectionStateChanged onDataConnectionStateChanged = this.onDataConnectionStateChanged;
        if (onDataConnectionStateChanged == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = onDataConnectionStateChanged.hashCode();
        }
        int i6 = (i5 + hashCode2) * 31;
        CallbackEvent.OnDataEnabledChanged onDataEnabledChanged = this.onDataEnabledChanged;
        if (onDataEnabledChanged == null) {
            i4 = 0;
        } else {
            boolean z2 = onDataEnabledChanged.enabled;
            if (!z2) {
                i4 = z2 ? 1 : 0;
            }
        }
        int i7 = (i6 + i4) * 31;
        CallbackEvent.OnDisplayInfoChanged onDisplayInfoChanged = this.onDisplayInfoChanged;
        if (onDisplayInfoChanged == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = onDisplayInfoChanged.hashCode();
        }
        int i8 = (i7 + hashCode3) * 31;
        CallbackEvent.OnServiceStateChanged onServiceStateChanged = this.onServiceStateChanged;
        if (onServiceStateChanged == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = onServiceStateChanged.hashCode();
        }
        int i9 = (i8 + hashCode4) * 31;
        CallbackEvent.OnSignalStrengthChanged onSignalStrengthChanged = this.onSignalStrengthChanged;
        if (onSignalStrengthChanged == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = onSignalStrengthChanged.hashCode();
        }
        int i10 = (i9 + hashCode5) * 31;
        CallbackEvent.OnCallStateChanged onCallStateChanged = this.onCallStateChanged;
        if (onCallStateChanged != null) {
            i2 = onCallStateChanged.hashCode();
        }
        return i10 + i2;
    }

    public final String toString() {
        return "TelephonyCallbackState(onDataActivity=" + this.onDataActivity + ", onCarrierNetworkChange=" + this.onCarrierNetworkChange + ", onDataConnectionStateChanged=" + this.onDataConnectionStateChanged + ", onDataEnabledChanged=" + this.onDataEnabledChanged + ", onDisplayInfoChanged=" + this.onDisplayInfoChanged + ", onServiceStateChanged=" + this.onServiceStateChanged + ", onSignalStrengthChanged=" + this.onSignalStrengthChanged + ", onCallStateChanged=" + this.onCallStateChanged + ")";
    }

    public TelephonyCallbackState(CallbackEvent.OnDataActivity onDataActivity, CallbackEvent.OnCarrierNetworkChange onCarrierNetworkChange, CallbackEvent.OnDataConnectionStateChanged onDataConnectionStateChanged, CallbackEvent.OnDataEnabledChanged onDataEnabledChanged, CallbackEvent.OnDisplayInfoChanged onDisplayInfoChanged, CallbackEvent.OnServiceStateChanged onServiceStateChanged, CallbackEvent.OnSignalStrengthChanged onSignalStrengthChanged, CallbackEvent.OnCallStateChanged onCallStateChanged) {
        this.onDataActivity = onDataActivity;
        this.onCarrierNetworkChange = onCarrierNetworkChange;
        this.onDataConnectionStateChanged = onDataConnectionStateChanged;
        this.onDataEnabledChanged = onDataEnabledChanged;
        this.onDisplayInfoChanged = onDisplayInfoChanged;
        this.onServiceStateChanged = onServiceStateChanged;
        this.onSignalStrengthChanged = onSignalStrengthChanged;
        this.onCallStateChanged = onCallStateChanged;
    }

    public /* synthetic */ TelephonyCallbackState(CallbackEvent.OnDataActivity onDataActivity, CallbackEvent.OnCarrierNetworkChange onCarrierNetworkChange, CallbackEvent.OnDataConnectionStateChanged onDataConnectionStateChanged, CallbackEvent.OnDataEnabledChanged onDataEnabledChanged, CallbackEvent.OnDisplayInfoChanged onDisplayInfoChanged, CallbackEvent.OnServiceStateChanged onServiceStateChanged, CallbackEvent.OnSignalStrengthChanged onSignalStrengthChanged, CallbackEvent.OnCallStateChanged onCallStateChanged, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : onDataActivity, (i & 2) != 0 ? null : onCarrierNetworkChange, (i & 4) != 0 ? null : onDataConnectionStateChanged, (i & 8) != 0 ? null : onDataEnabledChanged, (i & 16) != 0 ? null : onDisplayInfoChanged, (i & 32) != 0 ? null : onServiceStateChanged, (i & 64) != 0 ? null : onSignalStrengthChanged, (i & 128) != 0 ? null : onCallStateChanged);
    }
}
