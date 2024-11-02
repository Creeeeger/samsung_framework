package com.android.systemui.statusbar.pipeline.mobile.data.model;

import com.android.systemui.log.table.Diffable;
import com.android.systemui.log.table.TableLogBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SimCardModel implements Diffable {
    public final String simState;
    public final SimType simType;

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

    public SimCardModel(SimType simType, String str) {
        this.simType = simType;
        this.simState = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SimCardModel)) {
            return false;
        }
        SimCardModel simCardModel = (SimCardModel) obj;
        if (this.simType == simCardModel.simType && Intrinsics.areEqual(this.simState, simCardModel.simState)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.simState.hashCode() + (this.simType.hashCode() * 31);
    }

    @Override // com.android.systemui.log.table.Diffable
    public final void logDiffs(Diffable diffable, TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
        SimCardModel simCardModel = (SimCardModel) diffable;
        SimType simType = simCardModel.simType;
        SimType simType2 = this.simType;
        if (simType != simType2) {
            tableRowLoggerImpl.logChange("simCard", simType2.toString());
        }
        String str = simCardModel.simState;
        String str2 = this.simState;
        if (!Intrinsics.areEqual(str, str2)) {
            tableRowLoggerImpl.logChange("simCard", str2);
        }
    }

    public final String toString() {
        return "SimCardModel(simType=" + this.simType + ", simState=" + this.simState + ")";
    }

    @Override // com.android.systemui.log.table.Diffable
    public final void logFull(TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
    }
}
