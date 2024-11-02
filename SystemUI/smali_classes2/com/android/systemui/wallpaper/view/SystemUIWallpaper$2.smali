.class public final Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "scaleView@onAnimationEnd: mIsScreenOffAnimation = "

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsScreenOffAnimation:Z

    .line 12
    .line 13
    const-string v1, "SystemUIWallpaper"

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsScreenOffAnimation:Z

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 30
    .line 31
    const-string v0, "TransitionAnimationListener@onAnimationEnd: isScreenOff = "

    .line 32
    .line 33
    const-string v1, "KeyguardWallpaperController"

    .line 34
    .line 35
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 41
    .line 42
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    if-eqz p0, :cond_2

    .line 52
    .line 53
    iget-object p0, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 54
    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    new-instance p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 58
    .line 59
    iget-object v1, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v2, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    iget-object v4, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 65
    .line 66
    iget-object v5, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 67
    .line 68
    iget-object v6, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    iget-object v8, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 72
    .line 73
    iget-boolean v9, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 74
    .line 75
    move-object v0, p0

    .line 76
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;Z)V

    .line 77
    .line 78
    .line 79
    iput-object p0, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 80
    .line 81
    move-object v0, p0

    .line 82
    check-cast v0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 83
    .line 84
    iget-object v0, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mUpdateListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    .line 87
    .line 88
    iget-object v0, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    check-cast p0, Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget-object p0, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 98
    .line 99
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->update()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-object p0, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 104
    .line 105
    if-eqz p0, :cond_3

    .line 106
    .line 107
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->cleanUp()V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "scaleView@onAnimationStart: mIsScreenOffAnimation = "

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsScreenOffAnimation:Z

    .line 12
    .line 13
    const-string v1, "SystemUIWallpaper"

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsScreenOffAnimation:Z

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 30
    .line 31
    const-string v0, "TransitionAnimationListener@onAnimationStart: isScreenOff = "

    .line 32
    .line 33
    const-string v1, ", mDozeParameters.shouldControlScreenOff() = "

    .line 34
    .line 35
    invoke-static {v0, p0, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 40
    .line 41
    iget-object v1, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 42
    .line 43
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 44
    .line 45
    const-string v2, "KeyguardWallpaperController"

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 51
    .line 52
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    if-eqz p0, :cond_1

    .line 62
    .line 63
    iget-object p0, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 64
    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 66
    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    iput-boolean p0, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChangeForTransition:Z

    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method
