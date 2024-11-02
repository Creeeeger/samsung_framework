package com.android.systemui.keyguard;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.KeyguardFoldController;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RankedStateListener {
    public final int rank;
    public final boolean skipInitState;
    public final KeyguardFoldController.StateListener stateListener;

    public RankedStateListener(KeyguardFoldController.StateListener stateListener, int i, boolean z) {
        this.stateListener = stateListener;
        this.rank = i;
        this.skipInitState = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RankedStateListener)) {
            return false;
        }
        RankedStateListener rankedStateListener = (RankedStateListener) obj;
        if (Intrinsics.areEqual(this.stateListener, rankedStateListener.stateListener) && this.rank == rankedStateListener.rank && this.skipInitState == rankedStateListener.skipInitState) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.rank, this.stateListener.hashCode() * 31, 31);
        boolean z = this.skipInitState;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RankedStateListener(stateListener=");
        sb.append(this.stateListener);
        sb.append(", rank=");
        sb.append(this.rank);
        sb.append(", skipInitState=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.skipInitState, ")");
    }

    public /* synthetic */ RankedStateListener(KeyguardFoldController.StateListener stateListener, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(stateListener, i, (i2 & 4) != 0 ? false : z);
    }
}
