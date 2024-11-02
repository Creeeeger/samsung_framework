.class public final Lcom/android/wm/shell/back/CustomizeActivityAnimation;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ENTER_PROGRESS_PROP:Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;


# instance fields
.field public final mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

.field public final mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCloseAnimation:Landroid/view/animation/Animation;

.field public mClosingTarget:Landroid/view/RemoteAnimationTarget;

.field public final mCornerRadius:F

.field public final mCustomAnimationLoader:Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;

.field public final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public mEnterAnimation:Landroid/view/animation/Animation;

.field public mEnteringTarget:Landroid/view/RemoteAnimationTarget;

.field public mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public mLatestProgress:F

.field public mNextBackgroundColor:I

.field public final mProgressAnimator:Landroid/window/BackProgressAnimator;

.field public final mProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field public final mTmpFloat9:[F

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;

    .line 2
    .line 3
    const-string v1, "enter"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->ENTER_PROGRESS_PROP:Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Landroid/view/SurfaceControl$Transaction;Landroid/view/Choreographer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Landroid/view/SurfaceControl$Transaction;Landroid/view/Choreographer;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/window/BackProgressAnimator;

    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTmpFloat9:[F

    .line 6
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 7
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransformation:Landroid/view/animation/Transformation;

    .line 8
    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCornerRadius:F

    .line 9
    iput-object p2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 10
    new-instance p2, Lcom/android/wm/shell/back/BackAnimationRunner;

    new-instance v0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Callback;-><init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;I)V

    new-instance v2, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;I)V

    invoke-direct {p2, v0, v2}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    iput-object p2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 11
    new-instance p2, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCustomAnimationLoader:Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;

    .line 12
    new-instance p1, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->ENTER_PROGRESS_PROP:Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 13
    new-instance p2, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    const v0, 0x44bb8000    # 1500.0f

    .line 14
    invoke-virtual {p2, v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p2, v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-nez p3, :cond_0

    .line 17
    new-instance p3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p4, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final applyTransform(Landroid/view/SurfaceControl;FLandroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransformation:Landroid/view/animation/Transformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p2, v0}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object p3, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTmpFloat9:[F

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    invoke-virtual {v1, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const p3, 0x3ba3d70a    # 0.005f

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {v1, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 32
    .line 33
    .line 34
    iget p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCornerRadius:F

    .line 35
    .line 36
    invoke-virtual {v1, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final applyTransformTransaction(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->applyTransform(Landroid/view/SurfaceControl;FLandroid/view/animation/Animation;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->applyTransform(Landroid/view/SurfaceControl;FLandroid/view/animation/Animation;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mChoreographer:Landroid/view/Choreographer;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/Choreographer;->getVsyncId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final finishAnimation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/back/BackAnimationBackground;->removeBackground(Landroid/view/SurfaceControl$Transaction;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mChoreographer:Landroid/view/Choreographer;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/Choreographer;->getVsyncId()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransformation:Landroid/view/animation/Transformation;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    iput v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mNextBackgroundColor:I

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    :try_start_0
    invoke-interface {v2}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 87
    .line 88
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 94
    .line 95
    .line 96
    return-void
.end method
