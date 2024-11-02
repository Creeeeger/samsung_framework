package android.os;

import android.app.IAlarmManager;
import android.app.time.UnixEpochTime;
import android.app.timedetector.ITimeDetectorService;
import android.location.ILocationManager;
import android.location.LocationTime;
import android.util.Slog;
import dalvik.annotation.optimization.CriticalNative;
import java.time.Clock;
import java.time.DateTimeException;
import java.time.ZoneId;
import java.time.ZoneOffset;

/* loaded from: classes3.dex */
public final class SystemClock {
    private static final String TAG = "SystemClock";
    private static volatile IAlarmManager sIAlarmManager;

    @CriticalNative
    public static native long currentThreadTimeMicro();

    @CriticalNative
    public static native long currentThreadTimeMillis();

    @CriticalNative
    public static native long currentTimeMicro();

    @CriticalNative
    public static native long elapsedRealtime();

    @CriticalNative
    public static native long elapsedRealtimeNanos();

    @CriticalNative
    public static native long uptimeMillis();

    @CriticalNative
    public static native long uptimeNanos();

    private SystemClock() {
    }

    public static void sleep(long ms) {
        long start = uptimeMillis();
        long duration = ms;
        boolean interrupted = false;
        do {
            try {
                Thread.sleep(duration);
            } catch (InterruptedException e) {
                interrupted = true;
            }
            duration = (start + ms) - uptimeMillis();
        } while (duration > 0);
        if (interrupted) {
            Thread.currentThread().interrupt();
        }
    }

    public static boolean setCurrentTimeMillis(long millis) {
        IAlarmManager mgr = getIAlarmManager();
        if (mgr == null) {
            Slog.e(TAG, "Unable to set RTC: mgr == null");
            return false;
        }
        try {
            return mgr.setTime(millis);
        } catch (RemoteException e) {
            Slog.e(TAG, "Unable to set RTC", e);
            return false;
        } catch (SecurityException e2) {
            Slog.e(TAG, "Unable to set RTC", e2);
            return false;
        }
    }

    private static IAlarmManager getIAlarmManager() {
        if (sIAlarmManager == null) {
            sIAlarmManager = IAlarmManager.Stub.asInterface(ServiceManager.getService("alarm"));
        }
        return sIAlarmManager;
    }

    /* renamed from: android.os.SystemClock$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends SimpleClock {
        AnonymousClass1(ZoneId zone) {
            super(zone);
        }

        @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
        public long millis() {
            return SystemClock.uptimeMillis();
        }
    }

    public static Clock uptimeClock() {
        return new SimpleClock(ZoneOffset.UTC) { // from class: android.os.SystemClock.1
            AnonymousClass1(ZoneId zone) {
                super(zone);
            }

            @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
            public long millis() {
                return SystemClock.uptimeMillis();
            }
        };
    }

    /* renamed from: android.os.SystemClock$2 */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends SimpleClock {
        AnonymousClass2(ZoneId zone) {
            super(zone);
        }

        @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
        public long millis() {
            return SystemClock.elapsedRealtime();
        }
    }

    public static Clock elapsedRealtimeClock() {
        return new SimpleClock(ZoneOffset.UTC) { // from class: android.os.SystemClock.2
            AnonymousClass2(ZoneId zone) {
                super(zone);
            }

            @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
            public long millis() {
                return SystemClock.elapsedRealtime();
            }
        };
    }

    public static long currentNetworkTimeMillis() {
        ITimeDetectorService timeDetectorService = ITimeDetectorService.Stub.asInterface(ServiceManager.getService("time_detector"));
        if (timeDetectorService != null) {
            try {
                UnixEpochTime time = timeDetectorService.latestNetworkTime();
                if (time == null) {
                    throw new DateTimeException("Network based time is not available.");
                }
                long currentMillis = elapsedRealtime();
                long deltaMs = currentMillis - time.getElapsedRealtimeMillis();
                return time.getUnixEpochTimeMillis() + deltaMs;
            } catch (ParcelableException e) {
                e.maybeRethrow(DateTimeException.class);
                throw new RuntimeException(e);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        throw new RuntimeException(new DeadSystemException());
    }

    /* renamed from: android.os.SystemClock$3 */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends SimpleClock {
        AnonymousClass3(ZoneId zone) {
            super(zone);
        }

        @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
        public long millis() {
            return SystemClock.currentNetworkTimeMillis();
        }
    }

    public static Clock currentNetworkTimeClock() {
        return new SimpleClock(ZoneOffset.UTC) { // from class: android.os.SystemClock.3
            AnonymousClass3(ZoneId zone) {
                super(zone);
            }

            @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
            public long millis() {
                return SystemClock.currentNetworkTimeMillis();
            }
        };
    }

    /* renamed from: android.os.SystemClock$4 */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends SimpleClock {
        private final ILocationManager mMgr = ILocationManager.Stub.asInterface(ServiceManager.getService("location"));

        AnonymousClass4(ZoneId zone) {
            super(zone);
            this.mMgr = ILocationManager.Stub.asInterface(ServiceManager.getService("location"));
        }

        @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
        public long millis() {
            try {
                LocationTime time = this.mMgr.getGnssTimeMillis();
                if (time == null) {
                    throw new DateTimeException("Gnss based time is not available.");
                }
                long currentNanos = SystemClock.elapsedRealtimeNanos();
                long deltaMs = (currentNanos - time.getElapsedRealtimeNanos()) / 1000000;
                return time.getUnixEpochTimeMillis() + deltaMs;
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public static Clock currentGnssTimeClock() {
        return new SimpleClock(ZoneOffset.UTC) { // from class: android.os.SystemClock.4
            private final ILocationManager mMgr = ILocationManager.Stub.asInterface(ServiceManager.getService("location"));

            AnonymousClass4(ZoneId zone) {
                super(zone);
                this.mMgr = ILocationManager.Stub.asInterface(ServiceManager.getService("location"));
            }

            @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
            public long millis() {
                try {
                    LocationTime time = this.mMgr.getGnssTimeMillis();
                    if (time == null) {
                        throw new DateTimeException("Gnss based time is not available.");
                    }
                    long currentNanos = SystemClock.elapsedRealtimeNanos();
                    long deltaMs = (currentNanos - time.getElapsedRealtimeNanos()) / 1000000;
                    return time.getUnixEpochTimeMillis() + deltaMs;
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            }
        };
    }
}
