package com.android.server.timezonedetector;

/* loaded from: classes3.dex */
public interface DeviceActivityMonitor extends Dumpable {

    /* loaded from: classes3.dex */
    public interface Listener {
        void onFlightComplete();
    }

    void addListener(Listener listener);
}
