package com.android.systemui.pluginlock.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MusicData {

    @SerializedName("top_y")
    Integer mTopY = -1;

    @SerializedName("padding_start")
    Integer mPaddingStart = -1;

    @SerializedName("padding_end")
    Integer mPaddingEnd = -1;

    @SerializedName("height")
    Integer mHeight = -1;

    @SerializedName("width")
    Integer mWidth = -1;

    @SerializedName("gravity")
    Integer mGravity = -1;

    @SerializedName("visibility")
    Integer mVisibility = 0;

    @SerializedName("top_y_land")
    Integer mTopYLand = -1;

    @SerializedName("padding_start_land")
    Integer mPaddingStartLand = -1;

    @SerializedName("padding_end_land")
    Integer mPaddingEndLand = -1;

    @SerializedName("height_land")
    Integer mHeightLand = -1;

    @SerializedName("width_land")
    Integer mWidthLand = -1;

    @SerializedName("gravity_land")
    Integer mGravityLand = -1;

    @SerializedName("visibility_land")
    Integer mVisibilityLand = 0;

    public final Object clone() {
        return (MusicData) super.clone();
    }

    public final Integer getGravity() {
        int intValue;
        Integer num = this.mGravity;
        if (num == null) {
            intValue = -1;
        } else {
            intValue = num.intValue();
        }
        return Integer.valueOf(intValue);
    }

    public final Integer getGravityLand() {
        int intValue;
        Integer num = this.mGravityLand;
        if (num == null) {
            intValue = -1;
        } else {
            intValue = num.intValue();
        }
        return Integer.valueOf(intValue);
    }

    public final Integer getPaddingEnd() {
        int intValue;
        Integer num = this.mPaddingEnd;
        if (num == null) {
            intValue = -1;
        } else {
            intValue = num.intValue();
        }
        return Integer.valueOf(intValue);
    }

    public final Integer getPaddingEndLand() {
        int intValue;
        Integer num = this.mPaddingEndLand;
        if (num == null) {
            intValue = -1;
        } else {
            intValue = num.intValue();
        }
        return Integer.valueOf(intValue);
    }

    public final Integer getPaddingStart() {
        int intValue;
        Integer num = this.mPaddingStart;
        if (num == null) {
            intValue = -1;
        } else {
            intValue = num.intValue();
        }
        return Integer.valueOf(intValue);
    }

    public final Integer getPaddingStartLand() {
        int intValue;
        Integer num = this.mPaddingStartLand;
        if (num == null) {
            intValue = -1;
        } else {
            intValue = num.intValue();
        }
        return Integer.valueOf(intValue);
    }

    public final Integer getTopY() {
        return this.mTopY;
    }

    public final Integer getTopYLand() {
        return this.mTopYLand;
    }

    public final Integer getVisibility() {
        int intValue;
        Integer num = this.mVisibility;
        if (num == null) {
            intValue = -1;
        } else {
            intValue = num.intValue();
        }
        return Integer.valueOf(intValue);
    }

    public final Integer getVisibilityLand() {
        int intValue;
        Integer num = this.mVisibilityLand;
        if (num == null) {
            intValue = -1;
        } else {
            intValue = num.intValue();
        }
        return Integer.valueOf(intValue);
    }

    public final void setGravity(Integer num) {
        this.mGravity = num;
    }

    public final void setGravityLand(Integer num) {
        this.mGravityLand = num;
    }

    public final void setHeight(Integer num) {
        this.mHeight = num;
    }

    public final void setHeightLand(Integer num) {
        this.mHeightLand = num;
    }

    public final void setPaddingEnd(Integer num) {
        this.mPaddingEnd = num;
    }

    public final void setPaddingEndLand(Integer num) {
        this.mPaddingEndLand = num;
    }

    public final void setPaddingStart(Integer num) {
        this.mPaddingStart = num;
    }

    public final void setPaddingStartLand(Integer num) {
        this.mPaddingStartLand = num;
    }

    public final void setTopY(Integer num) {
        this.mTopY = num;
    }

    public final void setTopYLand(Integer num) {
        this.mTopYLand = num;
    }

    public final void setVisibility(Integer num) {
        this.mVisibility = num;
    }

    public final void setVisibilityLand(Integer num) {
        this.mVisibilityLand = num;
    }

    public final void setWidth(Integer num) {
        this.mWidth = num;
    }

    public final void setWidthLand(Integer num) {
        this.mWidthLand = num;
    }
}
