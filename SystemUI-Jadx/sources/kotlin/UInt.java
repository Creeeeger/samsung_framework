package kotlin;

import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class UInt implements Comparable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final int data;

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
        new Companion(null);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Intrinsics.compare(this.data ^ VideoPlayer.MEDIA_ERROR_SYSTEM, ((UInt) obj).data ^ VideoPlayer.MEDIA_ERROR_SYSTEM);
    }

    public final boolean equals(Object obj) {
        int i = this.data;
        if (!(obj instanceof UInt) || i != ((UInt) obj).data) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Integer.hashCode(this.data);
    }

    public final String toString() {
        return String.valueOf(this.data & 4294967295L);
    }
}
