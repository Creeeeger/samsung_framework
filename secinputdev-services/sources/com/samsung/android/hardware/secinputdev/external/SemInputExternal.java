package com.samsung.android.hardware.secinputdev.external;

/* loaded from: classes.dex */
public interface SemInputExternal {

    public interface IBroadcastReceiver {
        void onBatteryChanged(int i, int i2);

        void onBatteryTxIdChanged(int i);

        void onCoverAttached(boolean z, int i);

        void onGameMode(String str, String str2);

        void onLazybootCompleted();

        void onRFDetected(boolean z);

        void onShutdown();

        void onUserSwitched();
    }

    public interface IExternalEventRegister {
        boolean registerBroadcastReceiver(Event event, IBroadcastReceiver iBroadcastReceiver);

        boolean registerServiceListener(Event event, IServiceListener iServiceListener);
    }

    public interface IServiceListener {
        void onBodyDetected(int i);

        void onDesktopModeStateChanged(int i);

        void onDisplayChanged(int i);

        void onDisplayStateChanged(boolean z, int i, int i2, int i3);

        void onFoldStateChanged(boolean z);

        void onLpScanSensorChanged(int i);

        void onSemUEvent(String str);
    }

    public enum Event {
        OBSERVER_UEVENT(1),
        LISTENER_DISPLAY_STATE(11),
        LISTENER_DISPLAY(12),
        LISTENER_FOLD_STATE(13),
        LISTENER_DEX(14),
        LISTENER_PROX_LP_SCAN(15),
        LISTENER_SENSOR_WATCH(16),
        SETTING_AOT(21),
        SETTING_SPEN(22),
        SETTING_TSP_EXTRA(23),
        BROADCAST_BATTERY(31),
        BROADCAST_SHUTDOWN(32),
        BROADCAST_LAZY_BOOT(33),
        BROADCAST_GAME(34),
        BROADCAST_COVER(35),
        BROADCAST_USER_SWITCHED(36),
        BROADCAST_RF_DETECTED(37),
        BROADCAST_RF_OFF_DETECTED(38),
        BROADCAST_BATTERY_EXTRA(39);

        private int event;

        Event(int event) {
            this.event = event;
        }
    }
}
