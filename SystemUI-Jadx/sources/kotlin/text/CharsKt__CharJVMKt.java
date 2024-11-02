package kotlin.text;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import kotlin.ranges.IntRange;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class CharsKt__CharJVMKt {
    public static final void checkRadix(int i) {
        boolean z;
        IntRange intRange = new IntRange(2, 36);
        if (intRange.first <= i && i <= intRange.last) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("radix ", i, " was not in valid range ");
        m.append(new IntRange(2, 36));
        throw new IllegalArgumentException(m.toString());
    }

    public static final boolean isWhitespace(char c) {
        if (!Character.isWhitespace(c) && !Character.isSpaceChar(c)) {
            return false;
        }
        return true;
    }
}
