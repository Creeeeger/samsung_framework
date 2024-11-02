package kotlin.time;

import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.Duration;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class DurationKt {
    public static final long durationOfMillis(long j) {
        long j2 = (j << 1) + 1;
        Duration.Companion companion = Duration.Companion;
        int i = DurationJvmKt.$r8$clinit;
        return j2;
    }

    public static final long toDuration(int i, DurationUnit durationUnit) {
        if (durationUnit.compareTo(DurationUnit.SECONDS) <= 0) {
            long convert = DurationUnit.NANOSECONDS.getTimeUnit$kotlin_stdlib().convert(i, durationUnit.getTimeUnit$kotlin_stdlib()) << 1;
            Duration.Companion companion = Duration.Companion;
            int i2 = DurationJvmKt.$r8$clinit;
            return convert;
        }
        long j = i;
        DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
        long convert2 = durationUnit.getTimeUnit$kotlin_stdlib().convert(4611686018426999999L, durationUnit2.getTimeUnit$kotlin_stdlib());
        if (new LongRange(-convert2, convert2).contains(j)) {
            long convert3 = durationUnit2.getTimeUnit$kotlin_stdlib().convert(j, durationUnit.getTimeUnit$kotlin_stdlib()) << 1;
            Duration.Companion companion2 = Duration.Companion;
            int i3 = DurationJvmKt.$r8$clinit;
            return convert3;
        }
        return durationOfMillis(RangesKt___RangesKt.coerceIn(DurationUnit.MILLISECONDS.getTimeUnit$kotlin_stdlib().convert(j, durationUnit.getTimeUnit$kotlin_stdlib())));
    }
}
