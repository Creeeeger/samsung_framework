package com.android.systemui.pluginlock.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NonSwipeModeData {

    @SerializedName("mode")
    private Integer mNonSwipeMode = 0;

    @SerializedName("angle")
    private Integer mAngle = 45;

    public final Object clone() {
        return (NonSwipeModeData) super.clone();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof NonSwipeModeData)) {
            return false;
        }
        NonSwipeModeData nonSwipeModeData = (NonSwipeModeData) obj;
        Integer num = this.mNonSwipeMode;
        if ((num != null || nonSwipeModeData.mNonSwipeMode != null) && (num == null || !num.equals(nonSwipeModeData.mNonSwipeMode))) {
            return false;
        }
        Integer num2 = this.mAngle;
        if ((num2 != null || nonSwipeModeData.mAngle != null) && (num2 == null || !num2.equals(nonSwipeModeData.mAngle))) {
            return false;
        }
        return true;
    }

    public final Integer getAngle() {
        return this.mAngle;
    }

    public final Integer getMode() {
        return this.mNonSwipeMode;
    }
}
