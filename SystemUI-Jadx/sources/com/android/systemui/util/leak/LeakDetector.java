package com.android.systemui.util.leak;

import android.os.Build;
import android.os.SystemClock;
import android.util.ArrayMap;
import android.util.IndentingPrintWriter;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.util.leak.TrackedGarbage;
import java.io.PrintWriter;
import java.lang.ref.Reference;
import java.util.Iterator;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LeakDetector implements Dumpable {
    public static final boolean ENABLED = Build.IS_DEBUGGABLE;
    public final TrackedCollections mTrackedCollections;
    public final TrackedGarbage mTrackedGarbage;

    public LeakDetector(TrackedCollections trackedCollections, TrackedGarbage trackedGarbage, TrackedObjects trackedObjects, DumpManager dumpManager) {
        this.mTrackedCollections = trackedCollections;
        this.mTrackedGarbage = trackedGarbage;
        dumpManager.registerDumpable("LeakDetector", this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        boolean z;
        PrintWriter indentingPrintWriter = new IndentingPrintWriter(printWriter, "  ");
        indentingPrintWriter.println("SYSUI LEAK DETECTOR");
        indentingPrintWriter.increaseIndent();
        if (this.mTrackedCollections != null && this.mTrackedGarbage != null) {
            indentingPrintWriter.println("TrackedCollections:");
            indentingPrintWriter.increaseIndent();
            this.mTrackedCollections.dump(indentingPrintWriter, new LeakDetector$$ExternalSyntheticLambda0(0));
            indentingPrintWriter.decreaseIndent();
            indentingPrintWriter.println();
            indentingPrintWriter.println("TrackedObjects:");
            indentingPrintWriter.increaseIndent();
            this.mTrackedCollections.dump(indentingPrintWriter, new LeakDetector$$ExternalSyntheticLambda0(1));
            indentingPrintWriter.decreaseIndent();
            indentingPrintWriter.println();
            indentingPrintWriter.print("TrackedGarbage:");
            indentingPrintWriter.increaseIndent();
            TrackedGarbage trackedGarbage = this.mTrackedGarbage;
            synchronized (trackedGarbage) {
                while (true) {
                    Reference poll = trackedGarbage.mRefQueue.poll();
                    if (poll == null) {
                        break;
                    } else {
                        trackedGarbage.mGarbage.remove(poll);
                    }
                }
                long uptimeMillis = SystemClock.uptimeMillis();
                ArrayMap arrayMap = new ArrayMap();
                ArrayMap arrayMap2 = new ArrayMap();
                Iterator it = trackedGarbage.mGarbage.iterator();
                while (it.hasNext()) {
                    TrackedGarbage.LeakReference leakReference = (TrackedGarbage.LeakReference) it.next();
                    Class cls = leakReference.clazz;
                    arrayMap.put(cls, Integer.valueOf(((Integer) arrayMap.getOrDefault(cls, 0)).intValue() + 1));
                    if (leakReference.createdUptimeMillis + 60000 < uptimeMillis) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        Class cls2 = leakReference.clazz;
                        arrayMap2.put(cls2, Integer.valueOf(((Integer) arrayMap2.getOrDefault(cls2, 0)).intValue() + 1));
                    }
                }
                for (Map.Entry entry : arrayMap.entrySet()) {
                    indentingPrintWriter.print(((Class) entry.getKey()).getName());
                    indentingPrintWriter.print(": ");
                    indentingPrintWriter.print(entry.getValue());
                    indentingPrintWriter.print(" total, ");
                    indentingPrintWriter.print(arrayMap2.getOrDefault(entry.getKey(), 0));
                    indentingPrintWriter.print(" old");
                    indentingPrintWriter.println();
                }
            }
            indentingPrintWriter.decreaseIndent();
        } else {
            indentingPrintWriter.println("disabled");
        }
        indentingPrintWriter.decreaseIndent();
        indentingPrintWriter.println();
    }

    public final void trackGarbage(Object obj) {
        TrackedGarbage trackedGarbage = this.mTrackedGarbage;
        if (trackedGarbage != null) {
            synchronized (trackedGarbage) {
                while (true) {
                    Reference poll = trackedGarbage.mRefQueue.poll();
                    if (poll != null) {
                        trackedGarbage.mGarbage.remove(poll);
                    } else {
                        trackedGarbage.mGarbage.add(new TrackedGarbage.LeakReference(obj, trackedGarbage.mRefQueue));
                        trackedGarbage.mTrackedCollections.track(trackedGarbage.mGarbage, "Garbage");
                    }
                }
            }
        }
    }
}
