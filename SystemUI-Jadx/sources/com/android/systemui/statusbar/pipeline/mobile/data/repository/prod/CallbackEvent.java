package com.android.systemui.statusbar.pipeline.mobile.data.repository.prod;

import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyDisplayInfo;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface CallbackEvent {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OnCallStateChanged implements CallbackEvent {
        public final int callState;

        public OnCallStateChanged(int i) {
            this.callState = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof OnCallStateChanged) && this.callState == ((OnCallStateChanged) obj).callState) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.callState);
        }

        public final String toString() {
            return ConstraintWidget$$ExternalSyntheticOutline0.m(new StringBuilder("OnCallStateChanged(callState="), this.callState, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OnCarrierNetworkChange implements CallbackEvent {
        public final boolean active;

        public OnCarrierNetworkChange(boolean z) {
            this.active = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof OnCarrierNetworkChange) && this.active == ((OnCarrierNetworkChange) obj).active) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            boolean z = this.active;
            if (z) {
                return 1;
            }
            return z ? 1 : 0;
        }

        public final String toString() {
            return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(new StringBuilder("OnCarrierNetworkChange(active="), this.active, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OnDataActivity implements CallbackEvent {
        public final int direction;

        public OnDataActivity(int i) {
            this.direction = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof OnDataActivity) && this.direction == ((OnDataActivity) obj).direction) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.direction);
        }

        public final String toString() {
            return ConstraintWidget$$ExternalSyntheticOutline0.m(new StringBuilder("OnDataActivity(direction="), this.direction, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OnDataConnectionStateChanged implements CallbackEvent {
        public final int dataState;

        public OnDataConnectionStateChanged(int i) {
            this.dataState = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof OnDataConnectionStateChanged) && this.dataState == ((OnDataConnectionStateChanged) obj).dataState) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.dataState);
        }

        public final String toString() {
            return ConstraintWidget$$ExternalSyntheticOutline0.m(new StringBuilder("OnDataConnectionStateChanged(dataState="), this.dataState, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OnDataEnabledChanged implements CallbackEvent {
        public final boolean enabled;

        public OnDataEnabledChanged(boolean z) {
            this.enabled = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof OnDataEnabledChanged) && this.enabled == ((OnDataEnabledChanged) obj).enabled) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            boolean z = this.enabled;
            if (z) {
                return 1;
            }
            return z ? 1 : 0;
        }

        public final String toString() {
            return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(new StringBuilder("OnDataEnabledChanged(enabled="), this.enabled, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OnDisplayInfoChanged implements CallbackEvent {
        public final TelephonyDisplayInfo telephonyDisplayInfo;

        public OnDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
            this.telephonyDisplayInfo = telephonyDisplayInfo;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof OnDisplayInfoChanged) && Intrinsics.areEqual(this.telephonyDisplayInfo, ((OnDisplayInfoChanged) obj).telephonyDisplayInfo)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.telephonyDisplayInfo.hashCode();
        }

        public final String toString() {
            return "OnDisplayInfoChanged(telephonyDisplayInfo=" + this.telephonyDisplayInfo + ")";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OnServiceStateChanged implements CallbackEvent {
        public final ServiceState serviceState;

        public OnServiceStateChanged(ServiceState serviceState) {
            this.serviceState = serviceState;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof OnServiceStateChanged) && Intrinsics.areEqual(this.serviceState, ((OnServiceStateChanged) obj).serviceState)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.serviceState.hashCode();
        }

        public final String toString() {
            return "OnServiceStateChanged(serviceState=" + this.serviceState + ")";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OnSignalStrengthChanged implements CallbackEvent {
        public final SignalStrength signalStrength;

        public OnSignalStrengthChanged(SignalStrength signalStrength) {
            this.signalStrength = signalStrength;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof OnSignalStrengthChanged) && Intrinsics.areEqual(this.signalStrength, ((OnSignalStrengthChanged) obj).signalStrength)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.signalStrength.hashCode();
        }

        public final String toString() {
            return "OnSignalStrengthChanged(signalStrength=" + this.signalStrength + ")";
        }
    }
}
