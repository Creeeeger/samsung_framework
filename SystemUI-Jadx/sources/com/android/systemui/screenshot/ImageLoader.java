package com.android.systemui.screenshot;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import java.io.File;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ImageLoader {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Result {
        public Bitmap bitmap;
        public File fileName;

        public final String toString() {
            return "Result{uri=null, fileName=" + this.fileName + ", bitmap=" + this.bitmap + '}';
        }
    }

    public ImageLoader(ContentResolver contentResolver) {
    }
}
