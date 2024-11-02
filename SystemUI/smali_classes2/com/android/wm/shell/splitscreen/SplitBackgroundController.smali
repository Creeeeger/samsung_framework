.class public final Lcom/android/wm/shell/splitscreen/SplitBackgroundController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAnimation:Landroid/animation/ValueAnimator;

.field public mBackgroundColor:[F

.field public mBackgroundColorLayer:Landroid/view/SurfaceControl;

.field public final mContext:Landroid/content/Context;

.field public mIsAttached:Z

.field public mIsDividerVisible:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mNightMode:Z

.field public final mRemoteAppTransitionListener:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

.field public mReparentedToTransitionRoot:Z

.field public final mShowAnimDelay:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

.field public final mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

.field public final mSurfaceSession:Landroid/view/SurfaceSession;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public mVisible:Z

.field public mWallpaperVisible:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    sput-boolean v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->DEBUG:Z

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mShowAnimDelay:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 25
    .line 26
    new-instance v0, Landroid/view/SurfaceSession;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mVisible:Z

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mNightMode:Z

    .line 39
    .line 40
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mRemoteAppTransitionListener:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 50
    .line 51
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 52
    .line 53
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundColor()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;I)V

    .line 69
    .line 70
    .line 71
    check-cast p4, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 72
    .line 73
    invoke-virtual {p4, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p5, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final canShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsDividerVisible:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final detach()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 27
    .line 28
    iput-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    .line 32
    .line 33
    return-void
.end method

.method public final getDisplayBounds()Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "SplitBackgroundController"

    .line 18
    .line 19
    const-string v0, "getDisplayBounds: cannot find display"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 32
    .line 33
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundLayerColor(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->getDisplayBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->setCrop(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final reparentToLeash(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    const-string v1, ", callers="

    .line 3
    .line 4
    const-string v2, "SplitBackgroundController"

    .line 5
    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo p1, "reparentToLeash: failed, non-attached state, callers="

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->canShow()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v3, 0x0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v0, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 56
    :goto_1
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mReparentedToTransitionRoot:Z

    .line 57
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v5, "reparentToLeash: leash="

    .line 61
    .line 62
    .line 63
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v5, ", isTransitionRoot="

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p2, ", vis="

    .line 78
    .line 79
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/4 p2, 0x3

    .line 89
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    const/4 p2, -0x1

    .line 104
    if-eqz p3, :cond_4

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 107
    .line 108
    invoke-virtual {p3, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 112
    .line 113
    invoke-virtual {p3, p2, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 118
    .line 119
    invoke-virtual {p3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 124
    .line 125
    invoke-virtual {v1, v2, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 126
    .line 127
    .line 128
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 129
    .line 130
    invoke-virtual {v1, p2, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 137
    .line 138
    .line 139
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string/jumbo p2, "reparentToLeash: failed, invalid leash="

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final updateBackgroundColor()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerColor(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [F

    .line 9
    .line 10
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    const/high16 v3, 0x437f0000    # 255.0f

    .line 16
    .line 17
    div-float/2addr v2, v3

    .line 18
    const/4 v4, 0x0

    .line 19
    aput v2, v1, v4

    .line 20
    .line 21
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    int-to-float v2, v2

    .line 26
    div-float/2addr v2, v3

    .line 27
    const/4 v4, 0x1

    .line 28
    aput v2, v1, v4

    .line 29
    .line 30
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    div-float/2addr v0, v3

    .line 36
    const/4 v2, 0x2

    .line 37
    aput v0, v1, v2

    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColor:[F

    .line 40
    .line 41
    return-void
.end method

.method public final updateBackgroundLayer(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    .line 12
    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 15
    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    const v2, 0x3f666666    # 0.9f

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    :goto_0
    iget v3, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mAlpha:F

    .line 29
    .line 30
    cmpl-float v3, v3, v2

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    iput v2, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mAlpha:F

    .line 35
    .line 36
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    .line 37
    .line 38
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundColor()V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColor:[F

    .line 42
    .line 43
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    .line 44
    .line 45
    if-eq v2, p0, :cond_4

    .line 46
    .line 47
    iput-object p0, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    .line 48
    .line 49
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    .line 50
    .line 51
    :cond_4
    iget-boolean p0, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    .line 52
    .line 53
    if-eq p0, p1, :cond_5

    .line 54
    .line 55
    iput-boolean p1, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    .line 56
    .line 57
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    .line 58
    .line 59
    :cond_5
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final updateBackgroundLayerColor(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mNightMode:Z

    .line 16
    .line 17
    if-ne v1, v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mNightMode:Z

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundColor()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColor:[F

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    .line 36
    .line 37
    if-eq v0, p1, :cond_2

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply()V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method public final updateBackgroundVisibility(ZZ)V
    .locals 5

    .line 1
    const-string/jumbo v0, "updateBackgroundVisibility: visible="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "updateBackgroundVisibility: not attached but called. callers="

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mShowAnimDelay:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/wm/shell/common/HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mShowAnimDelay:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    const-string v3, "SplitBackgroundController"

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    array-length v1, v1

    .line 53
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mVisible:Z

    .line 68
    .line 69
    if-eq v1, p1, :cond_4

    .line 70
    .line 71
    sget-boolean v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->DEBUG:Z

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    const-string v1, "SplitBackgroundController"

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, " animate="

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, " Callers="

    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    array-length v0, v0

    .line 107
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_2
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mVisible:Z

    .line 122
    .line 123
    if-eqz p2, :cond_3

    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 126
    .line 127
    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda1;

    .line 128
    .line 129
    invoke-direct {p2, p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V

    .line 130
    .line 131
    .line 132
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 139
    .line 140
    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    const/4 v0, 0x2

    .line 143
    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;I)V

    .line 144
    .line 145
    .line 146
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_0
    monitor-exit v2

    .line 152
    return-void

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    throw p0
.end method
