package com.android.keyguard.clock;

import android.graphics.Bitmap;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ClockInfo {
    public final String mId;
    public final String mName;
    public final Supplier mPreview;
    public final Supplier mThumbnail;
    public final Supplier mTitle;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
    }

    public /* synthetic */ ClockInfo(String str, Supplier supplier, String str2, Supplier supplier2, Supplier supplier3, int i) {
        this(str, supplier, str2, supplier2, supplier3);
    }

    private ClockInfo(String str, Supplier<String> supplier, String str2, Supplier<Bitmap> supplier2, Supplier<Bitmap> supplier3) {
        this.mName = str;
        this.mTitle = supplier;
        this.mId = str2;
        this.mThumbnail = supplier2;
        this.mPreview = supplier3;
    }
}
