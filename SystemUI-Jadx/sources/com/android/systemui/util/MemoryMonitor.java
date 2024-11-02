package com.android.systemui.util;

import android.app.Notification;
import android.os.Debug;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Slog;
import android.view.View;
import android.view.ViewRootImpl;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.BootCompleteCache;
import com.android.systemui.BootCompleteCacheImpl;
import com.android.systemui.Dumpable;
import com.android.systemui.HeapDumpHelper;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import com.android.systemui.shared.system.UncaughtExceptionPreHandlerManager;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import java.io.PrintWriter;
import java.lang.Thread;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MemoryMonitor implements Dumpable {
    public final BootCompleteCache mBootCompleteCache;
    public final HeapDumpHelper mHeapDumpHelper;
    public String mLastMemoryInfoLogTime;
    public final Handler mMainHandler;
    public final CommonNotifCollection mNotifCollection;
    public final UncaughtExceptionPreHandlerManager mPreHandlerManager;
    public Long mLastMemoryInfoCalcTime = -180000L;
    public boolean mIsInCalcMemInfo = false;
    public String mReason = "";
    public int mCurrentNotiCount = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SystemUIExceptionHandler implements Thread.UncaughtExceptionHandler {
        public /* synthetic */ SystemUIExceptionHandler(MemoryMonitor memoryMonitor, int i) {
            this();
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            if (th instanceof OutOfMemoryError) {
                MemoryMonitor.this.mHeapDumpHelper.dump("OutOfMemoryError");
            }
            MemoryMonitor.this.printMemoryInfo(false);
        }

        private SystemUIExceptionHandler() {
        }
    }

    public MemoryMonitor(Handler handler, BootCompleteCache bootCompleteCache, HeapDumpHelper heapDumpHelper, DumpManager dumpManager, UncaughtExceptionPreHandlerManager uncaughtExceptionPreHandlerManager, CommonNotifCollection commonNotifCollection) {
        this.mMainHandler = handler;
        this.mBootCompleteCache = bootCompleteCache;
        this.mHeapDumpHelper = heapDumpHelper;
        dumpManager.registerDumpable(this);
        this.mPreHandlerManager = uncaughtExceptionPreHandlerManager;
        this.mNotifCollection = commonNotifCollection;
        handler.postDelayed(new MemoryMonitor$$ExternalSyntheticLambda0(this, 1), 3600000L);
    }

    public final void dispatchTrimMemory() {
        if (!((BootCompleteCacheImpl) this.mBootCompleteCache).isBootComplete()) {
            Slog.d("MemoryMonitor", "didn't receive BOOT_COMPLETED");
        } else if (this.mLastMemoryInfoCalcTime.longValue() + 180000 > SystemClock.elapsedRealtime()) {
            Slog.d("MemoryMonitor", String.format("Last Info is %s. It still remains until reset time. So skip this.", this.mLastMemoryInfoLogTime));
        } else {
            startMonitoring(0, false);
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        HeapDumpHelper heapDumpHelper = this.mHeapDumpHelper;
        if (heapDumpHelper.isDumped) {
            StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "SystemUI Leak Info", "    isLeakSuspect : ");
            m.append(this.mReason);
            printWriter.println(m.toString());
            KeyboardUI$$ExternalSyntheticOutline0.m(new StringBuilder("    path : "), heapDumpHelper.mHeapDumpFilePath, printWriter);
        }
    }

    public final boolean isLeakSuspect(Debug.MemoryInfo memoryInfo, long j, long j2) {
        int i;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        if (!this.mHeapDumpHelper.isDumped) {
            int parseInt = Integer.parseInt(memoryInfo.getMemoryStat("summary.java-heap"));
            int intValue = Integer.valueOf(memoryInfo.getMemoryStat("summary.native-heap")).intValue();
            if (memoryInfo.hasSwappedOutPss) {
                i = memoryInfo.nativeSwappedOutPss;
            } else {
                i = memoryInfo.nativeSwappedOut;
            }
            int i2 = intValue + i;
            int parseInt2 = Integer.parseInt(memoryInfo.getMemoryStat("summary.graphics"));
            int parseInt3 = Integer.parseInt(memoryInfo.getMemoryStat("summary.total-pss"));
            if (parseInt > 225280 || i2 > 819200 || parseInt2 > 512000 || parseInt3 > 1024000 || ((j > 20000 && this.mCurrentNotiCount < 100) || j2 > 50)) {
                StringBuilder sb = new StringBuilder("J=");
                if (parseInt > 225280) {
                    obj = Integer.valueOf(parseInt);
                } else {
                    obj = Boolean.FALSE;
                }
                sb.append(obj);
                sb.append(", N=");
                if (i2 > 819200) {
                    obj2 = Integer.valueOf(i2);
                } else {
                    obj2 = Boolean.FALSE;
                }
                sb.append(obj2);
                sb.append(", G=");
                if (parseInt2 > 512000) {
                    obj3 = Integer.valueOf(parseInt2);
                } else {
                    obj3 = Boolean.FALSE;
                }
                sb.append(obj3);
                sb.append(", T=");
                if (parseInt3 > 1024000) {
                    obj4 = Integer.valueOf(parseInt3);
                } else {
                    obj4 = Boolean.FALSE;
                }
                sb.append(obj4);
                sb.append(", V=");
                if (j > 20000) {
                    obj5 = j + "/" + this.mCurrentNotiCount;
                } else {
                    obj5 = Boolean.FALSE;
                }
                sb.append(obj5);
                sb.append(", VR=");
                if (j2 > 50) {
                    obj6 = Long.valueOf(j2);
                } else {
                    obj6 = Boolean.FALSE;
                }
                sb.append(obj6);
                this.mReason = sb.toString();
                Slog.d("MemoryMonitor", "isLeakSuspect :" + this.mReason);
                return true;
            }
            return false;
        }
        return false;
    }

    public final void printMemoryInfo(final boolean z) {
        int i;
        int otherSwappedOut;
        int i2;
        final int i3;
        Slog.d("MemoryMonitor", " - Memory Information -");
        Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
        Debug.getMemoryInfo(memoryInfo);
        long countInstancesOfClass = Debug.countInstancesOfClass(View.class);
        long countInstancesOfClass2 = Debug.countInstancesOfClass(ViewRootImpl.class);
        long countInstancesOfClass3 = Debug.countInstancesOfClass(Notification.class);
        StringBuilder sb = new StringBuilder("Dalvik Heap : ");
        int i4 = memoryInfo.dalvikPrivateDirty;
        if (memoryInfo.hasSwappedOutPss) {
            i = memoryInfo.dalvikSwappedOutPss;
        } else {
            i = memoryInfo.dalvikSwappedOut;
        }
        int otherPrivateDirty = memoryInfo.getOtherPrivateDirty(0);
        if (memoryInfo.hasSwappedOutPss) {
            otherSwappedOut = memoryInfo.getOtherSwappedOutPss(0);
        } else {
            otherSwappedOut = memoryInfo.getOtherSwappedOut(0);
        }
        sb.append(i4 + i + otherPrivateDirty + otherSwappedOut);
        Slog.d("MemoryMonitor", sb.toString());
        StringBuilder sb2 = new StringBuilder("Native Heap : ");
        int intValue = Integer.valueOf(memoryInfo.getMemoryStat("summary.native-heap")).intValue();
        if (memoryInfo.hasSwappedOutPss) {
            i2 = memoryInfo.nativeSwappedOutPss;
        } else {
            i2 = memoryInfo.nativeSwappedOut;
        }
        sb2.append(intValue + i2);
        Slog.d("MemoryMonitor", sb2.toString());
        Slog.d("MemoryMonitor", "Graphics : " + memoryInfo.getMemoryStat("summary.graphics"));
        Slog.d("MemoryMonitor", "Total PSS : " + memoryInfo.getMemoryStat("summary.total-pss"));
        Slog.d("MemoryMonitor", " - View count -");
        Slog.d("MemoryMonitor", "View=" + countInstancesOfClass);
        Slog.d("MemoryMonitor", "ViewRootImpl=" + countInstancesOfClass2);
        Slog.d("MemoryMonitor", "Notification=" + countInstancesOfClass3);
        boolean isLeakSuspect = isLeakSuspect(memoryInfo, countInstancesOfClass, countInstancesOfClass2);
        Handler handler = this.mMainHandler;
        if (isLeakSuspect) {
            Runtime.getRuntime().gc();
            Runtime.getRuntime().runFinalization();
            handler.postDelayed(new MemoryMonitor$$ExternalSyntheticLambda0(this, 2), 5000L);
        }
        if (z) {
            int parseInt = Integer.parseInt(memoryInfo.getMemoryStat("summary.total-pss"));
            if (parseInt < 512000) {
                i3 = 10800000;
            } else if (parseInt < 819200) {
                i3 = 3600000;
            } else {
                i3 = 900000;
            }
            handler.postDelayed(new Runnable() { // from class: com.android.systemui.util.MemoryMonitor$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MemoryMonitor.this.startMonitoring(i3, z);
                }
            }, i3);
        }
    }

    public final void startMonitoring(int i, boolean z) {
        if (this.mIsInCalcMemInfo) {
            Slog.d("MemoryMonitor", "Already in calculating memory info. So skip this.");
            return;
        }
        this.mIsInCalcMemInfo = true;
        Slog.d("MemoryMonitor", "Starting getMemoryInfo in MemoryInfoReporter thread. Delay Time: " + i);
        MemoryMonitor$$ExternalSyntheticLambda0 memoryMonitor$$ExternalSyntheticLambda0 = new MemoryMonitor$$ExternalSyntheticLambda0(this, 0);
        Handler handler = this.mMainHandler;
        handler.post(memoryMonitor$$ExternalSyntheticLambda0);
        handler.postDelayed(new MemoryMonitor$$ExternalSyntheticLambda1(this, z, 0), 3000L);
    }
}
