package kotlin.time;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Duration implements Comparable {
    public static final Companion Companion = new Companion(null);
    public static final long INFINITE;
    public static final long NEG_INFINITE;
    public final long rawValue;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        int i = DurationJvmKt.$r8$clinit;
        INFINITE = DurationKt.durationOfMillis(4611686018427387903L);
        NEG_INFINITE = DurationKt.durationOfMillis(-4611686018427387903L);
    }

    /* renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    public static final long m2572addValuesMixedRangesUwyO8pc(long j, long j2) {
        long j3 = 1000000;
        long j4 = j2 / j3;
        long j5 = j + j4;
        if (new LongRange(-4611686018426L, 4611686018426L).contains(j5)) {
            long j6 = ((j5 * j3) + (j2 - (j4 * j3))) << 1;
            int i = DurationJvmKt.$r8$clinit;
            return j6;
        }
        return DurationKt.durationOfMillis(RangesKt___RangesKt.coerceIn(j5));
    }

    /* renamed from: appendFractional-impl, reason: not valid java name */
    public static final void m2573appendFractionalimpl(StringBuilder sb, int i, int i2, int i3, String str) {
        boolean z;
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String padStart = StringsKt__StringsKt.padStart(String.valueOf(i2), i3);
            int i4 = -1;
            int length = padStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (padStart.charAt(length) != '0') {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (i6 < 3) {
                sb.append((CharSequence) padStart, 0, i6);
            } else {
                sb.append((CharSequence) padStart, 0, ((i6 + 2) / 3) * 3);
            }
        }
        sb.append(str);
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m2574compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        boolean z = false;
        if (j3 >= 0 && (((int) j3) & 1) != 0) {
            int i = (((int) j) & 1) - (((int) j2) & 1);
            if (j < 0) {
                z = true;
            }
            if (z) {
                return -i;
            }
            return i;
        }
        if (j < j2) {
            return -1;
        }
        if (j == j2) {
            return 0;
        }
        return 1;
    }

    /* renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m2575getInWholeMillisecondsimpl(long j) {
        boolean z;
        if ((((int) j) & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z && (!m2576isInfiniteimpl(j))) {
            return j >> 1;
        }
        return m2578toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    /* renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m2576isInfiniteimpl(long j) {
        if (j != INFINITE && j != NEG_INFINITE) {
            return false;
        }
        return true;
    }

    /* renamed from: toDouble-impl, reason: not valid java name */
    public static final double m2577toDoubleimpl(long j, DurationUnit durationUnit) {
        DurationUnit durationUnit2;
        double convert;
        if (j == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (j == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        boolean z = true;
        double d = j >> 1;
        if ((((int) j) & 1) != 0) {
            z = false;
        }
        if (z) {
            durationUnit2 = DurationUnit.NANOSECONDS;
        } else {
            durationUnit2 = DurationUnit.MILLISECONDS;
        }
        long convert2 = durationUnit.getTimeUnit$kotlin_stdlib().convert(1L, durationUnit2.getTimeUnit$kotlin_stdlib());
        if (convert2 > 0) {
            convert = d * convert2;
        } else {
            convert = d / durationUnit2.getTimeUnit$kotlin_stdlib().convert(1L, durationUnit.getTimeUnit$kotlin_stdlib());
        }
        return convert;
    }

    /* renamed from: toLong-impl, reason: not valid java name */
    public static final long m2578toLongimpl(long j, DurationUnit durationUnit) {
        DurationUnit durationUnit2;
        if (j == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        boolean z = true;
        long j2 = j >> 1;
        if ((((int) j) & 1) != 0) {
            z = false;
        }
        if (z) {
            durationUnit2 = DurationUnit.NANOSECONDS;
        } else {
            durationUnit2 = DurationUnit.MILLISECONDS;
        }
        return durationUnit.getTimeUnit$kotlin_stdlib().convert(j2, durationUnit2.getTimeUnit$kotlin_stdlib());
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2579toStringimpl(long j) {
        boolean z;
        boolean z2;
        int m2578toLongimpl;
        int m2578toLongimpl2;
        int m2578toLongimpl3;
        boolean z3;
        long j2;
        int i;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int i2;
        long j3 = j;
        if (j3 == 0) {
            return "0s";
        }
        if (j3 == INFINITE) {
            return "Infinity";
        }
        if (j3 == NEG_INFINITE) {
            return "-Infinity";
        }
        if (j3 < 0) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append('-');
        }
        if (j3 < 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            j3 = (((int) j3) & 1) + ((-(j3 >> 1)) << 1);
            int i3 = DurationJvmKt.$r8$clinit;
        }
        long m2578toLongimpl4 = m2578toLongimpl(j3, DurationUnit.DAYS);
        if (m2576isInfiniteimpl(j3)) {
            m2578toLongimpl = 0;
        } else {
            m2578toLongimpl = (int) (m2578toLongimpl(j3, DurationUnit.HOURS) % 24);
        }
        if (m2576isInfiniteimpl(j3)) {
            m2578toLongimpl2 = 0;
        } else {
            m2578toLongimpl2 = (int) (m2578toLongimpl(j3, DurationUnit.MINUTES) % 60);
        }
        if (m2576isInfiniteimpl(j3)) {
            m2578toLongimpl3 = 0;
        } else {
            m2578toLongimpl3 = (int) (m2578toLongimpl(j3, DurationUnit.SECONDS) % 60);
        }
        if (m2576isInfiniteimpl(j3)) {
            i = 0;
        } else {
            if ((((int) j3) & 1) == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                j2 = ((j3 >> 1) % 1000) * 1000000;
            } else {
                j2 = (j3 >> 1) % 1000000000;
            }
            i = (int) j2;
        }
        if (m2578toLongimpl4 != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (m2578toLongimpl != 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (m2578toLongimpl2 != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (m2578toLongimpl3 == 0 && i == 0) {
            z7 = false;
        } else {
            z7 = true;
        }
        if (z4) {
            sb.append(m2578toLongimpl4);
            sb.append('d');
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (z5 || (z4 && (z6 || z7))) {
            int i4 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            sb.append(m2578toLongimpl);
            sb.append('h');
            i2 = i4;
        }
        if (z6 || (z7 && (z5 || z4))) {
            int i5 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            sb.append(m2578toLongimpl2);
            sb.append('m');
            i2 = i5;
        }
        if (z7) {
            int i6 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            if (m2578toLongimpl3 == 0 && !z4 && !z5 && !z6) {
                if (i >= 1000000) {
                    m2573appendFractionalimpl(sb, i / 1000000, i % 1000000, 6, "ms");
                } else if (i >= 1000) {
                    m2573appendFractionalimpl(sb, i / 1000, i % 1000, 3, "us");
                } else {
                    sb.append(i);
                    sb.append("ns");
                }
            } else {
                m2573appendFractionalimpl(sb, m2578toLongimpl3, i, 9, "s");
            }
            i2 = i6;
        }
        if (z && i2 > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return m2574compareToLRDsOJo(this.rawValue, ((Duration) obj).rawValue);
    }

    public final boolean equals(Object obj) {
        long j = this.rawValue;
        if (!(obj instanceof Duration) || j != ((Duration) obj).rawValue) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Long.hashCode(this.rawValue);
    }

    public final String toString() {
        return m2579toStringimpl(this.rawValue);
    }
}
