package com.android.systemui.wallpaper;

import java.util.concurrent.ThreadFactory;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda1 implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        boolean z = KeyguardWallpaperPreviewActivity.sIsActivityAlive;
        return new Thread(runnable, "KeyguardWalPreviewActivity");
    }
}
