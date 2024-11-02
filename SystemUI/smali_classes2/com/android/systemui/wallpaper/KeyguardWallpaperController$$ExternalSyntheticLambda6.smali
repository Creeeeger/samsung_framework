.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field public final synthetic f$1:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 9
    .line 10
    .line 11
    iget-object p0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    new-instance p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    iget-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    iget-boolean v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 28
    .line 29
    iget-object v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZLcom/samsung/android/graphics/SemGfxImageFilter;)V

    .line 33
    .line 34
    .line 35
    iput-object p0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 36
    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "initBlurredView: mBlurredView = "

    .line 40
    .line 41
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v1, "KeyguardWallpaperController"

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    iput-boolean p0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    .line 67
    .line 68
    iput-boolean p0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    .line 69
    .line 70
    :cond_0
    return-void
.end method
