.class public final synthetic Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableUpdateVisibility:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setSurfaceAlpha(F)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    if-eqz p0, :cond_3

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setSurfaceAlpha(F)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 45
    .line 46
    sget v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->$r8$clinit:I

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setEngineVisibility(Z)V

    .line 49
    .line 50
    .line 51
    :goto_2
    return-void
.end method
