package com.android.systemui.unfold;

import android.util.Log;
import com.android.internal.util.FrameworkStatsLog;
import com.android.systemui.unfold.updates.FoldStateProvider;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FoldStateLoggingProviderImpl implements FoldStateLoggingProvider, FoldStateProvider.FoldUpdatesListener {
    public Long actionStartMillis;
    public final SystemClock clock;
    public final FoldStateProvider foldStateProvider;
    public Integer lastState;
    public final List outputListeners = new ArrayList();

    public FoldStateLoggingProviderImpl(FoldStateProvider foldStateProvider, SystemClock systemClock) {
        this.foldStateProvider = foldStateProvider;
        this.clock = systemClock;
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        ((ArrayList) this.outputListeners).add((FoldStateLogger) obj);
    }

    public final void dispatchState(int i) {
        ((SystemClockImpl) this.clock).getClass();
        long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
        Integer num = this.lastState;
        Long l = this.actionStartMillis;
        if (num != null && num.intValue() != i && l != null) {
            FoldStateChange foldStateChange = new FoldStateChange(num.intValue(), i, elapsedRealtime - l.longValue());
            Iterator it = this.outputListeners.iterator();
            while (it.hasNext()) {
                ((FoldStateLogger) it.next()).getClass();
                FrameworkStatsLog.write(414, foldStateChange.previous, foldStateChange.current, foldStateChange.dtMillis);
            }
        }
        this.actionStartMillis = null;
        this.lastState = Integer.valueOf(i);
    }

    @Override // com.android.systemui.unfold.updates.FoldStateProvider.FoldUpdatesListener
    public final void onFoldUpdate(int i) {
        ((SystemClockImpl) this.clock).getClass();
        long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            dispatchState(2);
                            return;
                        }
                        return;
                    }
                    dispatchState(1);
                    return;
                }
                dispatchState(3);
                return;
            }
            this.actionStartMillis = Long.valueOf(elapsedRealtime);
            return;
        }
        this.lastState = 2;
        this.actionStartMillis = Long.valueOf(elapsedRealtime);
    }

    @Override // com.android.systemui.unfold.updates.FoldStateProvider.FoldUpdatesListener
    public final void onUnfoldedScreenAvailable() {
        Log.d("FoldStateLoggingProviderImpl", "Unfolded screen available");
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        ((ArrayList) this.outputListeners).remove((FoldStateLogger) obj);
    }
}
