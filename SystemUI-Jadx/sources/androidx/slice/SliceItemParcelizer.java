package androidx.slice;

import androidx.versionedparcelable.VersionedParcel;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SliceItemParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0092, code lost:
    
        if (r6.equals("bundle") == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static androidx.slice.SliceItem read(androidx.versionedparcelable.VersionedParcel r10) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.SliceItemParcelizer.read(androidx.versionedparcelable.VersionedParcel):androidx.slice.SliceItem");
    }

    public static void write(SliceItem sliceItem, VersionedParcel versionedParcel) {
        versionedParcel.getClass();
        sliceItem.getClass();
        sliceItem.mHolder = new SliceItemHolder(sliceItem.mFormat, sliceItem.mObj, false);
        if (!Arrays.equals(Slice.NO_HINTS, sliceItem.mHints)) {
            versionedParcel.writeArray(1, sliceItem.mHints);
        }
        if (!"text".equals(sliceItem.mFormat)) {
            versionedParcel.writeString(2, sliceItem.mFormat);
        }
        String str = sliceItem.mSubType;
        if (str != null) {
            versionedParcel.writeString(3, str);
        }
        SliceItemHolder sliceItemHolder = sliceItem.mHolder;
        versionedParcel.setOutputField(4);
        versionedParcel.writeVersionedParcelable(sliceItemHolder);
    }
}
