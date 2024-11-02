package com.android.systemui.pluginlock.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationData {

    @SerializedName("noti_card_info")
    private NotificationCardData mNotificationCardData;

    @SerializedName("noti_icon_info")
    private NotificationIconOnlyData mNotificationIconOnlyData;

    @SerializedName("noti_type")
    private Integer mNotiType = 0;

    @SerializedName("recover_type")
    private Integer mRecoverType = 0;

    @SerializedName("visibility")
    private Integer mVisibility = -1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotificationCardData {

        @SerializedName("top_y")
        Integer mTopY = -1;

        @SerializedName("padding_start")
        Integer mPaddingStart = -1;

        @SerializedName("card_numbers")
        Integer mNotiCardNumbers = -1;

        @SerializedName("top_y_land")
        Integer mTopYLand = -1;

        @SerializedName("padding_start_land")
        Integer mPaddingStartLand = -1;

        @SerializedName("card_numbers_land")
        Integer mNotiCardNumbersLand = -1;

        public NotificationCardData(NotificationData notificationData) {
        }

        public final Object clone() {
            return (NotificationCardData) super.clone();
        }

        public final Integer getNotiCardNumbers() {
            int intValue;
            Integer num = this.mNotiCardNumbers;
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final Integer getNotiCardNumbersLand() {
            int intValue;
            Integer num = this.mNotiCardNumbersLand;
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
            int intValue;
            Integer num = this.mTopY;
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final Integer getTopYLand() {
            int intValue;
            Integer num = this.mTopYLand;
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final void setNotiCardNumbers(Integer num) {
            this.mNotiCardNumbers = num;
        }

        public final void setNotiCardNumbersLand(Integer num) {
            this.mNotiCardNumbersLand = num;
        }

        public final void setTopY(Integer num) {
            this.mTopY = num;
        }

        public final void setTopYLand(Integer num) {
            this.mTopYLand = num;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotificationIconOnlyData {

        @SerializedName("gravity")
        Integer mGravity = -1;

        @SerializedName("padding_start")
        Integer mPaddingStart = -1;

        @SerializedName("padding_end")
        Integer mPaddingEnd = -1;

        @SerializedName("top")
        Integer mTop = -1;

        @SerializedName("gravity_land")
        Integer mGravityLand = -1;

        @SerializedName("padding_start_land")
        Integer mPaddingStartLand = -1;

        @SerializedName("padding_end_land")
        Integer mPaddingEndLand = -1;

        @SerializedName("top_land")
        Integer mTopLand = -1;

        public NotificationIconOnlyData(NotificationData notificationData) {
        }

        public final Object clone() {
            return (NotificationIconOnlyData) super.clone();
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
            int intValue;
            Integer num = this.mTop;
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            return Integer.valueOf(intValue);
        }

        public final Integer getTopYLand() {
            int intValue;
            Integer num = this.mTopLand;
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
            this.mTop = num;
        }

        public final void setTopYLand(Integer num) {
            this.mTopLand = num;
        }
    }

    public final Object clone() {
        return (NotificationData) super.clone();
    }

    public final NotificationCardData getCardData() {
        if (this.mNotificationCardData == null) {
            this.mNotificationCardData = new NotificationCardData(this);
        }
        return this.mNotificationCardData;
    }

    public final NotificationIconOnlyData getIconOnlyData() {
        if (this.mNotificationIconOnlyData == null) {
            this.mNotificationIconOnlyData = new NotificationIconOnlyData(this);
        }
        return this.mNotificationIconOnlyData;
    }

    public final Integer getNotiType() {
        return this.mNotiType;
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

    public final void setNotiType(Integer num) {
        this.mNotiType = num;
    }

    public final void setVisibility(Integer num) {
        this.mVisibility = num;
    }
}
