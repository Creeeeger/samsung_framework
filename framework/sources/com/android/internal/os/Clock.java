package com.android.internal.os;

import android.os.SystemClock;

/* loaded from: classes5.dex */
public abstract class Clock {
    public static final Clock SYSTEM_CLOCK = new Clock() { // from class: com.android.internal.os.Clock.1
        AnonymousClass1() {
        }

        @Override // com.android.internal.os.Clock
        public long elapsedRealtime() {
            return SystemClock.elapsedRealtime();
        }

        @Override // com.android.internal.os.Clock
        public long uptimeMillis() {
            return SystemClock.uptimeMillis();
        }

        @Override // com.android.internal.os.Clock
        public long currentTimeMillis() {
            return System.currentTimeMillis();
        }
    };

    public long elapsedRealtime() {
        throw new UnsupportedOperationException();
    }

    public long uptimeMillis() {
        throw new UnsupportedOperationException();
    }

    public long currentTimeMillis() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: com.android.internal.os.Clock$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 extends Clock {
        AnonymousClass1() {
        }

        @Override // com.android.internal.os.Clock
        public long elapsedRealtime() {
            return SystemClock.elapsedRealtime();
        }

        @Override // com.android.internal.os.Clock
        public long uptimeMillis() {
            return SystemClock.uptimeMillis();
        }

        @Override // com.android.internal.os.Clock
        public long currentTimeMillis() {
            return System.currentTimeMillis();
        }
    }
}
