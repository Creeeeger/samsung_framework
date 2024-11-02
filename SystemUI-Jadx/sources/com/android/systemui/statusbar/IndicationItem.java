package com.android.systemui.statusbar;

import android.content.res.ColorStateList;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndicationItem implements Comparable {
    public final long mDurationTime;
    public final IndicationEventType mEventType;
    public final boolean mIsAnimation;
    public final int mItemId;
    public final int mPriority;
    public final CharSequence mText;

    public IndicationItem(int i, IndicationEventType indicationEventType, CharSequence charSequence, ColorStateList colorStateList, long j, boolean z) {
        this.mItemId = i;
        this.mEventType = indicationEventType;
        this.mPriority = indicationEventType.getPriority();
        this.mText = charSequence;
        this.mIsAnimation = z;
        this.mDurationTime = j;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        IndicationItem indicationItem = (IndicationItem) obj;
        int i = this.mPriority;
        int i2 = indicationItem.mPriority;
        if (i == i2) {
            return indicationItem.mItemId - this.mItemId;
        }
        return i2 - i;
    }

    public final String toString() {
        boolean z;
        Object valueOf;
        StringBuilder sb = new StringBuilder("[id=");
        sb.append(this.mItemId);
        sb.append("|ty=");
        sb.append(this.mEventType);
        sb.append("|pr=");
        sb.append(this.mPriority);
        sb.append("|txt=");
        sb.append((Object) this.mText);
        sb.append("|ti=duration=");
        long j = this.mDurationTime;
        if (j == -1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            valueOf = "PERSISTENT";
        } else {
            valueOf = Long.valueOf(j);
        }
        sb.append(valueOf);
        sb.append("|an=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.mIsAnimation, "]");
    }
}
