package androidx.slice;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SliceManagerWrapper extends SliceManager {
    public final android.app.slice.SliceManager mManager;

    public SliceManagerWrapper(Context context) {
        this((android.app.slice.SliceManager) context.getSystemService(android.app.slice.SliceManager.class));
    }

    public SliceManagerWrapper(android.app.slice.SliceManager sliceManager) {
        this.mManager = sliceManager;
    }
}
