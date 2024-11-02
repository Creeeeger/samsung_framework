package com.android.systemui;

import com.android.systemui.assist.PhoneStateMonitor;
import com.android.systemui.assist.PhoneStateMonitor$$ExternalSyntheticLambda0;
import com.android.systemui.assist.PhoneStateMonitor$$ExternalSyntheticLambda2;
import com.android.systemui.dump.DumpManager;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BootCompleteCacheImpl implements BootCompleteCache, Dumpable {
    public final AtomicBoolean bootComplete;
    public final List listeners;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
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

    public BootCompleteCacheImpl(DumpManager dumpManager) {
        DumpManager.registerDumpable$default(dumpManager, "BootCompleteCacheImpl", this);
        this.listeners = new ArrayList();
        this.bootComplete = new AtomicBoolean(false);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("BootCompleteCache state:");
        printWriter.println("  boot complete: " + isBootComplete());
        if (!isBootComplete()) {
            printWriter.println("  listeners:");
            synchronized (this.listeners) {
                Iterator it = ((ArrayList) this.listeners).iterator();
                while (it.hasNext()) {
                    printWriter.println("    " + ((WeakReference) it.next()));
                }
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public final boolean isBootComplete() {
        return this.bootComplete.get();
    }

    public final void setBootComplete() {
        if (this.bootComplete.compareAndSet(false, true)) {
            synchronized (this.listeners) {
                Iterator it = this.listeners.iterator();
                while (it.hasNext()) {
                    PhoneStateMonitor$$ExternalSyntheticLambda0 phoneStateMonitor$$ExternalSyntheticLambda0 = (PhoneStateMonitor$$ExternalSyntheticLambda0) ((WeakReference) it.next()).get();
                    if (phoneStateMonitor$$ExternalSyntheticLambda0 != null) {
                        PhoneStateMonitor phoneStateMonitor = phoneStateMonitor$$ExternalSyntheticLambda0.f$0;
                        phoneStateMonitor.getClass();
                        phoneStateMonitor.mBgHandler.post(new PhoneStateMonitor$$ExternalSyntheticLambda2(phoneStateMonitor, 0));
                    }
                }
                ((ArrayList) this.listeners).clear();
                Unit unit = Unit.INSTANCE;
            }
        }
    }
}
