.class public interface abstract Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract getCapturedWallpaper()Landroid/graphics/Bitmap;
.end method

.method public abstract getCapturedWallpaperForBlur()Landroid/graphics/Bitmap;
.end method

.method public getCurrentPosition()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract getWallpaperBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract handleTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onBackDropLayoutChange()V
.end method

.method public abstract onFaceAuthError()V
.end method

.method public abstract onFingerprintAuthSuccess(Z)V
.end method

.method public abstract onKeyguardBouncerFullyShowingChanged(Z)V
.end method

.method public abstract onKeyguardShowing(Z)V
.end method

.method public abstract onOccluded(Z)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onUnlock()V
.end method

.method public abstract reset()V
.end method

.method public setStartPosition(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setThumbnailVisibility(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setTransitionAnimationListener(Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract update()V
.end method

.method public abstract updateBlurState(Z)V
.end method

.method public updateDrawState(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateThumbnail()V
    .locals 0

    .line 1
    return-void
.end method
