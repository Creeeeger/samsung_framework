.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 8
    .line 9
    iget-boolean v3, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    .line 10
    .line 11
    if-ne v3, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iput-boolean v1, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->canShow()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_6

    .line 22
    .line 23
    if-nez p0, :cond_6

    .line 24
    .line 25
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz p0, :cond_5

    .line 29
    .line 30
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const v0, 0x3f666666    # 0.9f

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    .line 42
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 48
    .line 49
    iget v3, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mAlpha:F

    .line 50
    .line 51
    cmpl-float v3, v3, v0

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    iput v0, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mAlpha:F

    .line 56
    .line 57
    iput-boolean v1, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundColor()V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColor:[F

    .line 63
    .line 64
    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    .line 65
    .line 66
    if-eq v0, p0, :cond_4

    .line 67
    .line 68
    iput-object p0, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    .line 69
    .line 70
    iput-boolean v1, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    .line 71
    .line 72
    :cond_4
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 77
    .line 78
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 83
    .line 84
    invoke-virtual {p0, v2, v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-void
.end method
