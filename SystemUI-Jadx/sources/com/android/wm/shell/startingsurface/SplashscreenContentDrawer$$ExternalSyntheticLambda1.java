package com.android.wm.shell.startingsurface;

import android.content.Context;
import java.util.function.IntSupplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplashscreenContentDrawer$$ExternalSyntheticLambda1 implements IntSupplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SplashscreenContentDrawer f$0;
    public final /* synthetic */ Context f$1;

    public /* synthetic */ SplashscreenContentDrawer$$ExternalSyntheticLambda1(SplashscreenContentDrawer splashscreenContentDrawer, Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = splashscreenContentDrawer;
        this.f$1 = context;
    }

    @Override // java.util.function.IntSupplier
    public final int getAsInt() {
        switch (this.$r8$classId) {
            case 0:
                return SplashscreenContentDrawer.peekWindowBGColor(this.f$1, this.f$0.mTmpAttrs);
            default:
                return SplashscreenContentDrawer.peekWindowBGColor(this.f$1, this.f$0.mTmpAttrs);
        }
    }
}
