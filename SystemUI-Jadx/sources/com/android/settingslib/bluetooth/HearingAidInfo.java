package com.android.settingslib.bluetooth;

import android.util.SparseIntArray;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HearingAidInfo {
    public static final SparseIntArray ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING;
    public static final SparseIntArray ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING;
    public static final SparseIntArray HAP_DEVICE_TYPE_TO_INTERNAL_MODE_MAPPING;
    public final long mHiSyncId;
    public final int mMode;
    public final int mSide;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
        public int mSide = -1;
        public int mMode = -1;
        public long mHiSyncId = 0;

        public final HearingAidInfo build() {
            return new HearingAidInfo(this.mSide, this.mMode, this.mHiSyncId, 0);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING = sparseIntArray;
        sparseIntArray.put(-1, -1);
        sparseIntArray.put(0, 0);
        sparseIntArray.put(1, 1);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING = sparseIntArray2;
        sparseIntArray2.put(-1, -1);
        sparseIntArray2.put(0, 0);
        sparseIntArray2.put(1, 1);
        SparseIntArray sparseIntArray3 = new SparseIntArray();
        HAP_DEVICE_TYPE_TO_INTERNAL_MODE_MAPPING = sparseIntArray3;
        sparseIntArray3.put(-1, -1);
        sparseIntArray3.put(0, 1);
        sparseIntArray3.put(1, 0);
        sparseIntArray3.put(2, 2);
        sparseIntArray3.put(3, -1);
    }

    public /* synthetic */ HearingAidInfo(int i, int i2, long j, int i3) {
        this(i, i2, j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HearingAidInfo)) {
            return false;
        }
        HearingAidInfo hearingAidInfo = (HearingAidInfo) obj;
        if (this.mSide == hearingAidInfo.mSide && this.mMode == hearingAidInfo.mMode && this.mHiSyncId == hearingAidInfo.mHiSyncId) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.mSide), Integer.valueOf(this.mMode), Long.valueOf(this.mHiSyncId));
    }

    public final String toString() {
        return "HearingAidInfo{mSide=" + this.mSide + ", mMode=" + this.mMode + ", mHiSyncId=" + this.mHiSyncId + '}';
    }

    private HearingAidInfo(int i, int i2, long j) {
        this.mSide = i;
        this.mMode = i2;
        this.mHiSyncId = j;
    }
}
