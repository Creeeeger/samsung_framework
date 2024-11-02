package android.os;

import java.time.Clock;
import java.time.Instant;
import java.time.ZoneId;

/* loaded from: classes3.dex */
public abstract class SimpleClock extends Clock {
    private final ZoneId zone;

    @Override // java.time.Clock, java.time.InstantSource
    public abstract long millis();

    public SimpleClock(ZoneId zone) {
        this.zone = zone;
    }

    @Override // java.time.Clock
    public ZoneId getZone() {
        return this.zone;
    }

    /* renamed from: android.os.SimpleClock$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends SimpleClock {
        AnonymousClass1(ZoneId zone) {
            super(zone);
        }

        @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
        public long millis() {
            return SimpleClock.this.millis();
        }
    }

    @Override // java.time.Clock, java.time.InstantSource
    public Clock withZone(ZoneId zone) {
        return new SimpleClock(zone) { // from class: android.os.SimpleClock.1
            AnonymousClass1(ZoneId zone2) {
                super(zone2);
            }

            @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
            public long millis() {
                return SimpleClock.this.millis();
            }
        };
    }

    @Override // java.time.Clock, java.time.InstantSource
    public Instant instant() {
        return Instant.ofEpochMilli(millis());
    }
}
