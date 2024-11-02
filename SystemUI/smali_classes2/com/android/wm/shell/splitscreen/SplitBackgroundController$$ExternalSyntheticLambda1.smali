.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mVisible:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_4

    .line 12
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundLayer(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_1
    const v2, 0x3f666666    # 0.9f

    .line 24
    .line 25
    .line 26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-boolean v4, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v2, v3

    .line 36
    :goto_0
    const v3, 0x3f19999a    # 0.6f

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    iget-boolean v4, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    .line 41
    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    move v2, v3

    .line 46
    :goto_1
    const/4 v3, 0x0

    .line 47
    move v7, v3

    .line 48
    move v3, v2

    .line 49
    move v2, v7

    .line 50
    :goto_2
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    .line 51
    .line 52
    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    new-array v5, v5, [F

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    aput v3, v5, v6

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    aput v2, v5, v6

    .line 63
    .line 64
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;

    .line 71
    .line 72
    invoke-direct {v5, v0, v4}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;Landroid/view/SurfaceControl$Transaction;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;

    .line 81
    .line 82
    invoke-direct {v5, v0, v1, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;ZFLandroid/view/SurfaceControl$Transaction;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 89
    .line 90
    if-ne p0, v6, :cond_5

    .line 91
    .line 92
    const/16 p0, 0xc8

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    const/16 p0, 0x190

    .line 96
    .line 97
    :goto_3
    int-to-long v2, p0

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    .line 101
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 104
    .line 105
    .line 106
    :goto_4
    return-void
.end method
