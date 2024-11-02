package com.android.systemui.wallpapers;

import com.android.systemui.wallpapers.ImageWallpaper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ImageWallpaper$GLEngine$2$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ImageWallpaper.GLEngine.AnonymousClass2 f$0;

    public /* synthetic */ ImageWallpaper$GLEngine$2$$ExternalSyntheticLambda0(ImageWallpaper.GLEngine.AnonymousClass2 anonymousClass2, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ImageWallpaper.GLEngine gLEngine = this.f$0.this$1;
                gLEngine.updateWallpaperOffset(gLEngine.mRotation);
                return;
            default:
                ImageWallpaper.GLEngine gLEngine2 = this.f$0.this$1;
                gLEngine2.updateWallpaperOffset(gLEngine2.mRotation);
                return;
        }
    }
}
