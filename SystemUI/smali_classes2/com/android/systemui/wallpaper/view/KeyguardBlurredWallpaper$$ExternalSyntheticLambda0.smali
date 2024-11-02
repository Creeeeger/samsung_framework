.class public final synthetic Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "BlurredWallpaper"

    .line 9
    .line 10
    const-string v1, "capture start "

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCaptureStart:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->updateCapturedBitmap()V

    .line 19
    .line 20
    .line 21
    :cond_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0
.end method
