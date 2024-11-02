package com.android.systemui.keyguard.shared.model;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.keyguard.shared.model.WakeSleepReason;
import com.android.systemui.keyguard.shared.model.WakefulnessState;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WakefulnessModel {
    public static final Companion Companion = new Companion(null);
    public final WakeSleepReason lastSleepReason;
    public final WakeSleepReason lastWakeReason;
    public final WakefulnessState state;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static WakefulnessModel fromWakefulnessLifecycle(WakefulnessLifecycle wakefulnessLifecycle) {
            WakefulnessState wakefulnessState;
            WakeSleepReason wakeSleepReason;
            WakeSleepReason wakeSleepReason2;
            WakefulnessState.Companion companion = WakefulnessState.Companion;
            int i = wakefulnessLifecycle.mWakefulness;
            companion.getClass();
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            wakefulnessState = WakefulnessState.STARTING_TO_SLEEP;
                        } else {
                            throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Invalid Wakefulness value: ", i));
                        }
                    } else {
                        wakefulnessState = WakefulnessState.AWAKE;
                    }
                } else {
                    wakefulnessState = WakefulnessState.STARTING_TO_WAKE;
                }
            } else {
                wakefulnessState = WakefulnessState.ASLEEP;
            }
            WakeSleepReason.Companion companion2 = WakeSleepReason.Companion;
            int i2 = wakefulnessLifecycle.mLastWakeReason;
            companion2.getClass();
            if (i2 != 1) {
                if (i2 != 15) {
                    wakeSleepReason = WakeSleepReason.OTHER;
                } else {
                    wakeSleepReason = WakeSleepReason.TAP;
                }
            } else {
                wakeSleepReason = WakeSleepReason.POWER_BUTTON;
            }
            if (wakefulnessLifecycle.mLastSleepReason == 4) {
                wakeSleepReason2 = WakeSleepReason.POWER_BUTTON;
            } else {
                wakeSleepReason2 = WakeSleepReason.OTHER;
            }
            return new WakefulnessModel(wakefulnessState, wakeSleepReason, wakeSleepReason2);
        }
    }

    public WakefulnessModel(WakefulnessState wakefulnessState, WakeSleepReason wakeSleepReason, WakeSleepReason wakeSleepReason2) {
        this.state = wakefulnessState;
        this.lastWakeReason = wakeSleepReason;
        this.lastSleepReason = wakeSleepReason2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WakefulnessModel)) {
            return false;
        }
        WakefulnessModel wakefulnessModel = (WakefulnessModel) obj;
        if (this.state == wakefulnessModel.state && this.lastWakeReason == wakefulnessModel.lastWakeReason && this.lastSleepReason == wakefulnessModel.lastSleepReason) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.lastSleepReason.hashCode() + ((this.lastWakeReason.hashCode() + (this.state.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "WakefulnessModel(state=" + this.state + ", lastWakeReason=" + this.lastWakeReason + ", lastSleepReason=" + this.lastSleepReason + ")";
    }
}
