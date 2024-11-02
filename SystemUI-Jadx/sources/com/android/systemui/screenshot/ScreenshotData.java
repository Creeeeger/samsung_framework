package com.android.systemui.screenshot;

import android.content.ComponentName;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.net.Uri;
import android.os.UserHandle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.view.WindowManager;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenshotData {
    public static final Companion Companion = new Companion(null);
    public Bitmap bitmap;
    public final Uri contextUrl;
    public boolean disableCapture;
    public int displayId;
    public final Insets insets;
    public Rect screenBounds;
    public boolean secureLayer;
    public final int source;
    public int taskId;
    public ComponentName topComponent;
    public int type;
    public UserHandle userHandle;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ScreenshotData forTesting() {
            return new ScreenshotData(0, 0, null, null, null, 0, Insets.NONE, null, null, 0, false, false, 3840, null);
        }
    }

    public ScreenshotData(@WindowManager.ScreenshotType int i, @WindowManager.ScreenshotSource int i2, UserHandle userHandle, ComponentName componentName, Rect rect, int i3, Insets insets, Bitmap bitmap, Uri uri, int i4, boolean z, boolean z2) {
        this.type = i;
        this.source = i2;
        this.userHandle = userHandle;
        this.topComponent = componentName;
        this.screenBounds = rect;
        this.taskId = i3;
        this.insets = insets;
        this.bitmap = bitmap;
        this.contextUrl = uri;
        this.displayId = i4;
        this.disableCapture = z;
        this.secureLayer = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScreenshotData)) {
            return false;
        }
        ScreenshotData screenshotData = (ScreenshotData) obj;
        if (this.type == screenshotData.type && this.source == screenshotData.source && Intrinsics.areEqual(this.userHandle, screenshotData.userHandle) && Intrinsics.areEqual(this.topComponent, screenshotData.topComponent) && Intrinsics.areEqual(this.screenBounds, screenshotData.screenBounds) && this.taskId == screenshotData.taskId && Intrinsics.areEqual(this.insets, screenshotData.insets) && Intrinsics.areEqual(this.bitmap, screenshotData.bitmap) && Intrinsics.areEqual(this.contextUrl, screenshotData.contextUrl) && this.displayId == screenshotData.displayId && this.disableCapture == screenshotData.disableCapture && this.secureLayer == screenshotData.secureLayer) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.source, Integer.hashCode(this.type) * 31, 31);
        UserHandle userHandle = this.userHandle;
        int i = 0;
        if (userHandle == null) {
            hashCode = 0;
        } else {
            hashCode = userHandle.hashCode();
        }
        int i2 = (m + hashCode) * 31;
        ComponentName componentName = this.topComponent;
        if (componentName == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = componentName.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Rect rect = this.screenBounds;
        if (rect == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = rect.hashCode();
        }
        int hashCode5 = (this.insets.hashCode() + AppInfoViewData$$ExternalSyntheticOutline0.m(this.taskId, (i3 + hashCode3) * 31, 31)) * 31;
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = bitmap.hashCode();
        }
        int i4 = (hashCode5 + hashCode4) * 31;
        Uri uri = this.contextUrl;
        if (uri != null) {
            i = uri.hashCode();
        }
        int m2 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.displayId, (i4 + i) * 31, 31);
        boolean z = this.disableCapture;
        int i5 = 1;
        int i6 = z;
        if (z != 0) {
            i6 = 1;
        }
        int i7 = (m2 + i6) * 31;
        boolean z2 = this.secureLayer;
        if (!z2) {
            i5 = z2 ? 1 : 0;
        }
        return i7 + i5;
    }

    public final String toString() {
        int i = this.type;
        UserHandle userHandle = this.userHandle;
        ComponentName componentName = this.topComponent;
        Rect rect = this.screenBounds;
        int i2 = this.taskId;
        Bitmap bitmap = this.bitmap;
        int i3 = this.displayId;
        boolean z = this.disableCapture;
        boolean z2 = this.secureLayer;
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("ScreenshotData(type=", i, ", source=");
        m.append(this.source);
        m.append(", userHandle=");
        m.append(userHandle);
        m.append(", topComponent=");
        m.append(componentName);
        m.append(", screenBounds=");
        m.append(rect);
        m.append(", taskId=");
        m.append(i2);
        m.append(", insets=");
        m.append(this.insets);
        m.append(", bitmap=");
        m.append(bitmap);
        m.append(", contextUrl=");
        m.append(this.contextUrl);
        m.append(", displayId=");
        m.append(i3);
        m.append(", disableCapture=");
        m.append(z);
        m.append(", secureLayer=");
        m.append(z2);
        m.append(")");
        return m.toString();
    }

    public /* synthetic */ ScreenshotData(int i, int i2, UserHandle userHandle, ComponentName componentName, Rect rect, int i3, Insets insets, Bitmap bitmap, Uri uri, int i4, boolean z, boolean z2, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, userHandle, componentName, rect, i3, insets, bitmap, (i5 & 256) != 0 ? null : uri, (i5 & 512) != 0 ? 0 : i4, (i5 & 1024) != 0 ? false : z, (i5 & 2048) != 0 ? false : z2);
    }
}
