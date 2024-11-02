package com.android.systemui.pluginlock.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CaptureData {

    @SerializedName("type")
    private Integer mCaptureType = 0;

    public final Object clone() {
        return (CaptureData) super.clone();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CaptureData)) {
            return false;
        }
        CaptureData captureData = (CaptureData) obj;
        Integer num = this.mCaptureType;
        if ((num != null || captureData.mCaptureType != null) && (num == null || !num.equals(captureData.mCaptureType))) {
            return false;
        }
        return true;
    }

    public final Integer getType() {
        return this.mCaptureType;
    }
}
