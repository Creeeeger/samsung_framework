package com.google.android.setupcompat.logging;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;
import com.google.android.setupcompat.internal.ClockProvider;
import com.google.android.setupcompat.internal.PersistableBundles;
import com.google.android.setupcompat.internal.Preconditions;
import com.google.android.setupcompat.internal.Validations;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CustomEvent implements Parcelable {
    public static final Parcelable.Creator<CustomEvent> CREATOR = new Parcelable.Creator() { // from class: com.google.android.setupcompat.logging.CustomEvent.1
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new CustomEvent(parcel.readLong(), (MetricKey) parcel.readParcelable(MetricKey.class.getClassLoader()), parcel.readPersistableBundle(MetricKey.class.getClassLoader()), parcel.readPersistableBundle(MetricKey.class.getClassLoader()), 0);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new CustomEvent[i];
        }
    };
    static final int MAX_STR_LENGTH = 50;
    static final int MIN_BUNDLE_KEY_LENGTH = 3;
    public final MetricKey metricKey;
    public final PersistableBundle persistableBundle;
    public final PersistableBundle piiValues;
    public final long timestampMillis;

    public /* synthetic */ CustomEvent(long j, MetricKey metricKey, PersistableBundle persistableBundle, PersistableBundle persistableBundle2, int i) {
        this(j, metricKey, persistableBundle, persistableBundle2);
    }

    public static CustomEvent create(MetricKey metricKey, PersistableBundle persistableBundle) {
        PersistableBundle persistableBundle2 = PersistableBundle.EMPTY;
        long millis = TimeUnit.NANOSECONDS.toMillis(ClockProvider.ticker.read());
        PersistableBundles.assertIsValid(persistableBundle);
        PersistableBundles.assertIsValid(persistableBundle2);
        return new CustomEvent(millis, metricKey, persistableBundle, persistableBundle2);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r7 != r8) goto L4
            return r0
        L4:
            boolean r1 = r8 instanceof com.google.android.setupcompat.logging.CustomEvent
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            com.google.android.setupcompat.logging.CustomEvent r8 = (com.google.android.setupcompat.logging.CustomEvent) r8
            long r3 = r7.timestampMillis
            long r5 = r8.timestampMillis
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto L5f
            com.google.android.setupcompat.logging.MetricKey r1 = r7.metricKey
            com.google.android.setupcompat.logging.MetricKey r3 = r8.metricKey
            if (r1 == r3) goto L25
            if (r1 == 0) goto L23
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L23
            goto L25
        L23:
            r1 = r2
            goto L26
        L25:
            r1 = r0
        L26:
            if (r1 == 0) goto L5f
            android.os.PersistableBundle r1 = r7.persistableBundle
            android.os.PersistableBundle r3 = r8.persistableBundle
            if (r1 == r3) goto L3f
            android.util.ArrayMap r1 = com.google.android.setupcompat.internal.PersistableBundles.toMap(r1)
            android.util.ArrayMap r3 = com.google.android.setupcompat.internal.PersistableBundles.toMap(r3)
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L3d
            goto L41
        L3d:
            r1 = r2
            goto L42
        L3f:
            com.google.android.setupcompat.util.Logger r1 = com.google.android.setupcompat.internal.PersistableBundles.LOG
        L41:
            r1 = r0
        L42:
            if (r1 == 0) goto L5f
            android.os.PersistableBundle r7 = r7.piiValues
            android.os.PersistableBundle r8 = r8.piiValues
            if (r7 == r8) goto L5b
            android.util.ArrayMap r7 = com.google.android.setupcompat.internal.PersistableBundles.toMap(r7)
            android.util.ArrayMap r8 = com.google.android.setupcompat.internal.PersistableBundles.toMap(r8)
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L59
            goto L5b
        L59:
            r7 = r2
            goto L5c
        L5b:
            r7 = r0
        L5c:
            if (r7 == 0) goto L5f
            goto L60
        L5f:
            r0 = r2
        L60:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.setupcompat.logging.CustomEvent.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.timestampMillis), this.metricKey, this.persistableBundle, this.piiValues});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.timestampMillis);
        parcel.writeParcelable(this.metricKey, i);
        parcel.writePersistableBundle(this.persistableBundle);
        parcel.writePersistableBundle(this.piiValues);
    }

    private CustomEvent(long j, MetricKey metricKey, PersistableBundle persistableBundle, PersistableBundle persistableBundle2) {
        Preconditions.checkArgument("Timestamp cannot be negative.", j >= 0);
        if (metricKey == null) {
            throw new NullPointerException("MetricKey cannot be null.");
        }
        if (persistableBundle != null) {
            Preconditions.checkArgument("Bundle cannot be empty.", !persistableBundle.isEmpty());
            if (persistableBundle2 != null) {
                for (String str : persistableBundle.keySet()) {
                    Validations.assertLengthInRange(3, 50, str, "bundle key");
                    Object obj = persistableBundle.get(str);
                    if (obj instanceof String) {
                        Preconditions.checkArgument(String.format("Maximum length of string value for key='%s' cannot exceed %s.", str, 50), ((String) obj).length() <= 50);
                    }
                }
                this.timestampMillis = j;
                this.metricKey = metricKey;
                this.persistableBundle = new PersistableBundle(persistableBundle);
                this.piiValues = new PersistableBundle(persistableBundle2);
                return;
            }
            throw new NullPointerException("piiValues cannot be null.");
        }
        throw new NullPointerException("Bundle cannot be null.");
    }
}
