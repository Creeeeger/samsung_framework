package com.android.systemui.statusbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BackDropView extends FrameLayout {
    public boolean mIsKwpInitiated;
    public KeyguardWallpaper mKeyguardWallpaper;

    public BackDropView(Context context) {
        super(context);
        this.mIsKwpInitiated = false;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        KeyguardWallpaper keyguardWallpaper;
        super.onFinishInflate();
        if (!this.mIsKwpInitiated && (keyguardWallpaper = this.mKeyguardWallpaper) != null) {
            this.mIsKwpInitiated = true;
            ((KeyguardWallpaperController) keyguardWallpaper).setRootView(this);
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
    }

    public BackDropView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsKwpInitiated = false;
    }

    public BackDropView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsKwpInitiated = false;
    }

    public BackDropView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mIsKwpInitiated = false;
    }
}
