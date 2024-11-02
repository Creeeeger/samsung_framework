package com.android.systemui.screenshot.sep;

import android.graphics.Bitmap;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SemScreenshotResult {
    public final Bitmap bitmap;
    public final int failedReason;
    public final String secureWindowName;
    public final String targetWindowName;

    public SemScreenshotResult(Bitmap bitmap, int i, String str, String str2) {
        this.bitmap = bitmap;
        this.failedReason = i;
        this.targetWindowName = str;
        this.secureWindowName = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SemScreenshotResult)) {
            return false;
        }
        SemScreenshotResult semScreenshotResult = (SemScreenshotResult) obj;
        if (Intrinsics.areEqual(this.bitmap, semScreenshotResult.bitmap) && this.failedReason == semScreenshotResult.failedReason && Intrinsics.areEqual(this.targetWindowName, semScreenshotResult.targetWindowName) && Intrinsics.areEqual(this.secureWindowName, semScreenshotResult.secureWindowName)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int i = 0;
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            hashCode = 0;
        } else {
            hashCode = bitmap.hashCode();
        }
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.failedReason, hashCode * 31, 31);
        String str = this.targetWindowName;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i2 = (m + hashCode2) * 31;
        String str2 = this.secureWindowName;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        return "SemScreenshotResult(bitmap=" + this.bitmap + ", failedReason=" + this.failedReason + ", targetWindowName=" + this.targetWindowName + ", secureWindowName=" + this.secureWindowName + ")";
    }
}
