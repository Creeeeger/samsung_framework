package com.android.systemui.statusbar.pipeline.shared.data.model;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.log.table.Diffable;
import com.android.systemui.log.table.TableLogBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ImsRegState implements Diffable {
    public boolean ePDGRegState;
    public boolean voLTERegState;
    public boolean voWifiRegState;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public ImsRegState() {
        this(false, false, false, 7, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImsRegState)) {
            return false;
        }
        ImsRegState imsRegState = (ImsRegState) obj;
        if (this.voWifiRegState == imsRegState.voWifiRegState && this.voLTERegState == imsRegState.voLTERegState && this.ePDGRegState == imsRegState.ePDGRegState) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public final int hashCode() {
        boolean z = this.voWifiRegState;
        int i = 1;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i2 = r0 * 31;
        ?? r2 = this.voLTERegState;
        int i3 = r2;
        if (r2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z2 = this.ePDGRegState;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return i4 + i;
    }

    @Override // com.android.systemui.log.table.Diffable
    public final void logDiffs(Diffable diffable, TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
        ImsRegState imsRegState = (ImsRegState) diffable;
        boolean z = imsRegState.voWifiRegState;
        boolean z2 = this.voWifiRegState;
        if (z != z2) {
            tableRowLoggerImpl.logChange("voWifiRegState", z2);
        }
        boolean z3 = imsRegState.voLTERegState;
        boolean z4 = this.voLTERegState;
        if (z3 != z4) {
            tableRowLoggerImpl.logChange("voLTERegState", z4);
        }
        boolean z5 = imsRegState.ePDGRegState;
        boolean z6 = this.ePDGRegState;
        if (z5 != z6) {
            tableRowLoggerImpl.logChange("ePDGRegState", z6);
        }
    }

    public final String toString() {
        boolean z = this.voWifiRegState;
        boolean z2 = this.voLTERegState;
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("ImsRegState(voWifiRegState=", z, ", voLTERegState=", z2, ", ePDGRegState="), this.ePDGRegState, ")");
    }

    public ImsRegState(boolean z, boolean z2, boolean z3) {
        this.voWifiRegState = z;
        this.voLTERegState = z2;
        this.ePDGRegState = z3;
    }

    public /* synthetic */ ImsRegState(boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3);
    }

    @Override // com.android.systemui.log.table.Diffable
    public final void logFull(TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
    }
}
