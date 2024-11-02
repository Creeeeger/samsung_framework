package com.android.app.motiontool;

import com.android.app.viewcapture.data.FrameData;
import com.android.app.viewcapture.data.MotionWindowData;
import com.google.protobuf.Internal;
import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TraceMetadata {
    public long lastPolledTime;
    public final Function0 stopTrace;
    public final String windowId;

    public TraceMetadata(String str, long j, Function0 function0) {
        this.windowId = str;
        this.lastPolledTime = j;
        this.stopTrace = function0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TraceMetadata)) {
            return false;
        }
        TraceMetadata traceMetadata = (TraceMetadata) obj;
        if (Intrinsics.areEqual(this.windowId, traceMetadata.windowId) && this.lastPolledTime == traceMetadata.lastPolledTime && Intrinsics.areEqual(this.stopTrace, traceMetadata.stopTrace)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.stopTrace.hashCode() + TraceMetadata$$ExternalSyntheticOutline0.m(this.lastPolledTime, this.windowId.hashCode() * 31, 31);
    }

    public final String toString() {
        return "TraceMetadata(windowId=" + this.windowId + ", lastPolledTime=" + this.lastPolledTime + ", stopTrace=" + this.stopTrace + ")";
    }

    public final void updateLastPolledTime(MotionWindowData motionWindowData) {
        Long l;
        Internal.ProtobufList frameDataList = motionWindowData.getFrameDataList();
        if (frameDataList != null) {
            Iterator<E> it = frameDataList.iterator();
            if (!it.hasNext()) {
                l = null;
            } else {
                Long valueOf = Long.valueOf(((FrameData) it.next()).getTimestamp());
                while (it.hasNext()) {
                    Long valueOf2 = Long.valueOf(((FrameData) it.next()).getTimestamp());
                    if (valueOf.compareTo(valueOf2) < 0) {
                        valueOf = valueOf2;
                    }
                }
                l = valueOf;
            }
            if (l != null) {
                this.lastPolledTime = l.longValue();
            }
        }
    }
}
