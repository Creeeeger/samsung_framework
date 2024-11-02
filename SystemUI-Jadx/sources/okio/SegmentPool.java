package okio;

import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SegmentPool {
    public static final SegmentPool INSTANCE = new SegmentPool();
    public static long byteCount;
    public static Segment next;

    private SegmentPool() {
    }

    public final void recycle(Segment segment) {
        boolean z;
        if (segment.next == null && segment.prev == null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (segment.shared) {
                return;
            }
            synchronized (this) {
                long j = byteCount + 8192;
                if (j > 65536) {
                    return;
                }
                byteCount = j;
                segment.next = next;
                segment.limit = 0;
                segment.pos = 0;
                next = segment;
                Unit unit = Unit.INSTANCE;
                return;
            }
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public final Segment take() {
        synchronized (this) {
            Segment segment = next;
            if (segment != null) {
                next = segment.next;
                segment.next = null;
                byteCount -= 8192;
                return segment;
            }
            return new Segment();
        }
    }
}
