package com.android.systemui.pluginlock.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndicationData {

    @SerializedName("help_text")
    private HelpTextData mHelpTextData;

    @SerializedName("lock_icon")
    private LockIconData mLockIconData;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HelpTextData {

        @SerializedName("visibility")
        Integer mVisibility = 0;

        @SerializedName("padding_bottom")
        Integer mPaddingBottom = -1;

        @SerializedName("height")
        Integer mHeight = -1;

        @SerializedName("visibility_land")
        Integer mVisibilityLand = 0;

        @SerializedName("padding_bottom_land")
        Integer mPaddingBottomLand = -1;

        public HelpTextData(IndicationData indicationData) {
        }

        public final Object clone() {
            return (HelpTextData) super.clone();
        }

        public final Integer getHeight() {
            int intValue;
            Integer num = this.mHeight;
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final Integer getPaddingBottom() {
            int intValue;
            Integer num = this.mPaddingBottom;
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final Integer getPaddingBottomLand() {
            int intValue;
            Integer num = this.mPaddingBottomLand;
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final Integer getVisibility() {
            int intValue;
            Integer num = this.mVisibility;
            if (num == null) {
                intValue = 0;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final Integer getVisibilityLand() {
            int intValue;
            Integer num = this.mVisibilityLand;
            if (num == null) {
                intValue = 0;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final void setHeight(Integer num) {
            this.mHeight = num;
        }

        public final void setPaddingBottom(Integer num) {
            this.mPaddingBottom = num;
        }

        public final void setPaddingBottomLand(Integer num) {
            this.mPaddingBottomLand = num;
        }

        public final void setVisibility(Integer num) {
            this.mVisibility = num;
        }

        public final void setVisibilityLand(Integer num) {
            this.mVisibilityLand = num;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LockIconData {

        @SerializedName("visibility")
        Integer mVisibility = 0;

        @SerializedName("visibility_land")
        Integer mVisibilityLand = 0;

        public LockIconData(IndicationData indicationData) {
        }

        public final Object clone() {
            return (LockIconData) super.clone();
        }

        public final Integer getVisibility() {
            int intValue;
            Integer num = this.mVisibility;
            if (num == null) {
                intValue = 0;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final Integer getVisibilityLand() {
            int intValue;
            Integer num = this.mVisibilityLand;
            if (num == null) {
                intValue = 0;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final void setVisibility(Integer num) {
            this.mVisibility = num;
        }

        public final void setVisibilityLand(Integer num) {
            this.mVisibilityLand = num;
        }
    }

    public final HelpTextData getHelpTextData() {
        if (this.mHelpTextData == null) {
            this.mHelpTextData = new HelpTextData(this);
        }
        return this.mHelpTextData;
    }

    public final LockIconData getLockIconData() {
        if (this.mLockIconData == null) {
            this.mLockIconData = new LockIconData(this);
        }
        return this.mLockIconData;
    }
}
