package com.android.systemui.pluginlock.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WallpaperData {

    @SerializedName("update_style")
    private Integer mUpdateStyle = 0;

    @SerializedName("recover_type")
    private Integer mRecoverType = 0;

    @SerializedName("path")
    private String mPath = "";

    @SerializedName("id")
    private Integer mId = -1;

    public final Object clone() {
        return (WallpaperData) super.clone();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof WallpaperData)) {
            return false;
        }
        WallpaperData wallpaperData = (WallpaperData) obj;
        Integer num = this.mUpdateStyle;
        if ((num != null || wallpaperData.mUpdateStyle != null) && (num == null || !num.equals(wallpaperData.mUpdateStyle))) {
            return false;
        }
        String str = this.mPath;
        if ((str != null || wallpaperData.mPath != null) && (str == null || !str.equals(wallpaperData.mPath))) {
            return false;
        }
        Integer num2 = this.mId;
        if ((num2 != null || wallpaperData.mId != null) && (num2 == null || !num2.equals(wallpaperData.mId))) {
            return false;
        }
        Integer num3 = this.mRecoverType;
        if ((num3 != null || wallpaperData.mRecoverType != null) && (num3 == null || !num3.equals(wallpaperData.mRecoverType))) {
            return false;
        }
        return true;
    }

    public final Integer getRecoverType() {
        Integer num = this.mRecoverType;
        if (num != null) {
            return num;
        }
        return 1;
    }

    public final Integer getUpdateStyle() {
        return this.mUpdateStyle;
    }
}
