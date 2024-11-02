package androidx.picker3.widget;

import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslRecentColorInfo {
    public Integer mSelectedColor = null;
    public Integer mCurrentColor = null;
    public Integer mNewColor = null;
    public final ArrayList mRecentColorInfo = new ArrayList();

    public final void initRecentColorInfo(int[] iArr) {
        if (iArr != null) {
            int length = iArr.length;
            int i = SeslColorPicker.RECENT_COLOR_SLOT_COUNT;
            ArrayList arrayList = this.mRecentColorInfo;
            int i2 = 0;
            if (length <= i) {
                int length2 = iArr.length;
                while (i2 < length2) {
                    arrayList.add(Integer.valueOf(iArr[i2]));
                    i2++;
                }
                return;
            }
            while (i2 < SeslColorPicker.RECENT_COLOR_SLOT_COUNT) {
                arrayList.add(Integer.valueOf(iArr[i2]));
                i2++;
            }
        }
    }
}
