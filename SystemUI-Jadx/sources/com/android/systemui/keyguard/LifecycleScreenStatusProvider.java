package com.android.systemui.keyguard;

import android.os.Trace;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.systemui.unfold.updates.DeviceFoldStateProvider;
import com.android.systemui.unfold.updates.hinge.HingeAngleProvider;
import com.android.systemui.unfold.updates.screen.ScreenStatusProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LifecycleScreenStatusProvider implements ScreenStatusProvider, ScreenLifecycle.Observer {
    public final List listeners;

    public LifecycleScreenStatusProvider(ScreenLifecycle screenLifecycle) {
        screenLifecycle.addObserver(this);
        this.listeners = new ArrayList();
    }

    @Override // com.android.systemui.unfold.util.CallbackController
    public final void addCallback(Object obj) {
        ((ArrayList) this.listeners).add((DeviceFoldStateProvider.ScreenStatusListener) obj);
    }

    @Override // com.android.systemui.keyguard.ScreenLifecycle.Observer
    public final void onScreenTurnedOn() {
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        List list = this.listeners;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, "LifecycleScreenStatusProvider#onScreenTurnedOn");
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((DeviceFoldStateProvider.ScreenStatusListener) it.next()).onScreenTurnedOn();
                }
                Unit unit = Unit.INSTANCE;
                return;
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((DeviceFoldStateProvider.ScreenStatusListener) it2.next()).onScreenTurnedOn();
        }
    }

    @Override // com.android.systemui.keyguard.ScreenLifecycle.Observer
    public final void onScreenTurningOff() {
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        List list = this.listeners;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, "LifecycleScreenStatusProvider#onScreenTurningOff");
            try {
                Iterator it = ((ArrayList) list).iterator();
                while (it.hasNext()) {
                    DeviceFoldStateProvider deviceFoldStateProvider = DeviceFoldStateProvider.this;
                    deviceFoldStateProvider.isScreenOn = false;
                    deviceFoldStateProvider.hingeAngleProvider.stop();
                }
                Unit unit = Unit.INSTANCE;
                return;
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        Iterator it2 = ((ArrayList) list).iterator();
        while (it2.hasNext()) {
            DeviceFoldStateProvider deviceFoldStateProvider2 = DeviceFoldStateProvider.this;
            deviceFoldStateProvider2.isScreenOn = false;
            deviceFoldStateProvider2.hingeAngleProvider.stop();
        }
    }

    @Override // com.android.systemui.keyguard.ScreenLifecycle.Observer
    public final void onScreenTurningOn() {
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        List list = this.listeners;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, "LifecycleScreenStatusProvider#onScreenTurningOn");
            try {
                Iterator it = ((ArrayList) list).iterator();
                while (it.hasNext()) {
                    DeviceFoldStateProvider deviceFoldStateProvider = DeviceFoldStateProvider.this;
                    deviceFoldStateProvider.isScreenOn = true;
                    boolean z = deviceFoldStateProvider.isFolded;
                    HingeAngleProvider hingeAngleProvider = deviceFoldStateProvider.hingeAngleProvider;
                    if (!z) {
                        hingeAngleProvider.start();
                    } else {
                        hingeAngleProvider.stop();
                    }
                }
                Unit unit = Unit.INSTANCE;
                return;
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        Iterator it2 = ((ArrayList) list).iterator();
        while (it2.hasNext()) {
            DeviceFoldStateProvider deviceFoldStateProvider2 = DeviceFoldStateProvider.this;
            deviceFoldStateProvider2.isScreenOn = true;
            boolean z2 = deviceFoldStateProvider2.isFolded;
            HingeAngleProvider hingeAngleProvider2 = deviceFoldStateProvider2.hingeAngleProvider;
            if (!z2) {
                hingeAngleProvider2.start();
            } else {
                hingeAngleProvider2.stop();
            }
        }
    }
}
