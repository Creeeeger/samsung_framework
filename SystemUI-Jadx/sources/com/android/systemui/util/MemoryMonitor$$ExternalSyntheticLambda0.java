package com.android.systemui.util;

import android.os.Debug;
import android.util.Slog;
import android.view.View;
import android.view.ViewRootImpl;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class MemoryMonitor$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MemoryMonitor f$0;

    public /* synthetic */ MemoryMonitor$$ExternalSyntheticLambda0(MemoryMonitor memoryMonitor, int i) {
        this.$r8$classId = i;
        this.f$0 = memoryMonitor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                MemoryMonitor memoryMonitor = this.f$0;
                memoryMonitor.mCurrentNotiCount = ((NotifPipeline) memoryMonitor.mNotifCollection).getAllNotifs().size();
                return;
            case 1:
                this.f$0.startMonitoring(3600000, true);
                return;
            case 2:
                MemoryMonitor memoryMonitor2 = this.f$0;
                memoryMonitor2.getClass();
                new Thread(new MemoryMonitor$$ExternalSyntheticLambda0(memoryMonitor2, 3), "printMemoryInfo").start();
                return;
            default:
                MemoryMonitor memoryMonitor3 = this.f$0;
                memoryMonitor3.getClass();
                Slog.d("MemoryMonitor", "check again after GC");
                Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
                Debug.getMemoryInfo(memoryInfo);
                if (memoryMonitor3.isLeakSuspect(memoryInfo, Debug.countInstancesOfClass(View.class), Debug.countInstancesOfClass(ViewRootImpl.class))) {
                    memoryMonitor3.mHeapDumpHelper.dump(memoryMonitor3.mReason);
                    return;
                } else {
                    Slog.d("MemoryMonitor", "no issue");
                    return;
                }
        }
    }
}
