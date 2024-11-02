package kotlin.collections;

import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class ArraysKt__ArraysJVMKt {
    public static final void copyOfRangeToIndexCheck(int i, int i2) {
        if (i <= i2) {
        } else {
            throw new IndexOutOfBoundsException(SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("toIndex (", i, ") is greater than size (", i2, ")."));
        }
    }
}
