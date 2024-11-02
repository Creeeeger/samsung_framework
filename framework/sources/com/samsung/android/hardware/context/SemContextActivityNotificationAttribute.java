package com.samsung.android.hardware.context;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public class SemContextActivityNotificationAttribute extends SemContextAttribute {
    public static final Parcelable.Creator<SemContextActivityNotificationAttribute> CREATOR = new Parcelable.Creator<SemContextActivityNotificationAttribute>() { // from class: com.samsung.android.hardware.context.SemContextActivityNotificationAttribute.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemContextActivityNotificationAttribute createFromParcel(Parcel in) {
            return new SemContextActivityNotificationAttribute(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemContextActivityNotificationAttribute[] newArray(int size) {
            return new SemContextActivityNotificationAttribute[size];
        }
    };
    private static final int STATUS_MAX = 5;
    private static final String TAG = "SemContextActivityNotificationAttribute";
    private int[] mActivityFilter;

    /* renamed from: com.samsung.android.hardware.context.SemContextActivityNotificationAttribute$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements Parcelable.Creator<SemContextActivityNotificationAttribute> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemContextActivityNotificationAttribute createFromParcel(Parcel in) {
            return new SemContextActivityNotificationAttribute(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemContextActivityNotificationAttribute[] newArray(int size) {
            return new SemContextActivityNotificationAttribute[size];
        }
    }

    public SemContextActivityNotificationAttribute() {
        this.mActivityFilter = null;
        this.mActivityFilter = new int[]{4};
        setAttribute();
    }

    SemContextActivityNotificationAttribute(Parcel src) {
        super(src);
        this.mActivityFilter = null;
    }

    public SemContextActivityNotificationAttribute(int[] activityFilter) {
        this.mActivityFilter = null;
        if (activityFilter != null) {
            int[] iArr = new int[activityFilter.length];
            this.mActivityFilter = iArr;
            System.arraycopy(activityFilter, 0, iArr, 0, activityFilter.length);
            setAttribute();
            return;
        }
        Log.e(TAG, "The activityFilter is wrong.");
    }

    @Override // com.samsung.android.hardware.context.SemContextAttribute
    public boolean checkAttribute() {
        if (this.mActivityFilter == null) {
            return false;
        }
        ArrayList<Integer> list = new ArrayList<>();
        int i = 0;
        while (true) {
            int[] iArr = this.mActivityFilter;
            if (i < iArr.length) {
                int i2 = iArr[i];
                if (i2 < 0 || i2 > 5) {
                    break;
                }
                list.add(Integer.valueOf(i2));
                for (int j = 0; j < i; j++) {
                    if (list.get(i).equals(list.get(j))) {
                        Log.e(TAG, "This activity status cannot have duplicated status.");
                        return false;
                    }
                }
                i++;
            } else {
                return true;
            }
        }
        Log.e(TAG, "The activity status is wrong.");
        return false;
    }

    private void setAttribute() {
        Bundle attribute = new Bundle();
        attribute.putIntArray("activity_filter", this.mActivityFilter);
        super.setAttribute(27, attribute);
    }
}
