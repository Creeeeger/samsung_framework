.class public final Lcom/android/wm/shell/back/CrossActivityAnimation;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ENTER_PROGRESS_PROP:Lcom/android/wm/shell/back/CrossActivityAnimation$1;

.field public static final INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LEAVE_PROGRESS_PROP:Lcom/android/wm/shell/back/CrossActivityAnimation$2;


# instance fields
.field public final mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

.field public mBackInProgress:Z

.field public final mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

.field public final mClosingRect:Landroid/graphics/RectF;

.field public mClosingTarget:Landroid/view/RemoteAnimationTarget;

.field public final mCornerRadius:F

.field public mEnteringProgress:F

.field public final mEnteringProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field public final mEnteringRect:Landroid/graphics/RectF;

.field public final mEnteringStartRect:Landroid/graphics/Rect;

.field public mEnteringTarget:Landroid/view/RemoteAnimationTarget;

.field public mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final mInitialTouchPos:Landroid/graphics/PointF;

.field public mLeavingProgress:F

.field public final mLeavingProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field public final mProgressAnimator:Landroid/window/BackProgressAnimator;

.field public final mStartTaskRect:Landroid/graphics/Rect;

.field public final mTmpFloat9:[F

.field public final mTouchPos:Landroid/graphics/PointF;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mTransformMatrix:Landroid/graphics/Matrix;

.field public final mWindowXShift:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    new-instance v0, Lcom/android/wm/shell/back/CrossActivityAnimation$1;

    .line 9
    .line 10
    const-string v1, "enter-alpha"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/android/wm/shell/back/CrossActivityAnimation$1;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->ENTER_PROGRESS_PROP:Lcom/android/wm/shell/back/CrossActivityAnimation$1;

    .line 16
    .line 17
    new-instance v0, Lcom/android/wm/shell/back/CrossActivityAnimation$2;

    .line 18
    .line 19
    const-string v1, "leave-alpha"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/android/wm/shell/back/CrossActivityAnimation$2;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->LEAVE_PROGRESS_PROP:Lcom/android/wm/shell/back/CrossActivityAnimation$2;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingRect:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringRect:Landroid/graphics/RectF;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgress:F

    .line 34
    .line 35
    iput v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgress:F

    .line 36
    .line 37
    new-instance v0, Landroid/graphics/PointF;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    .line 43
    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 50
    .line 51
    const/16 v0, 0x9

    .line 52
    .line 53
    new-array v0, v0, [F

    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTmpFloat9:[F

    .line 56
    .line 57
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackInProgress:Z

    .line 66
    .line 67
    new-instance v1, Landroid/graphics/PointF;

    .line 68
    .line 69
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTouchPos:Landroid/graphics/PointF;

    .line 73
    .line 74
    new-instance v1, Landroid/window/BackProgressAnimator;

    .line 75
    .line 76
    invoke-direct {v1}, Landroid/window/BackProgressAnimator;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iput v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mCornerRadius:F

    .line 86
    .line 87
    new-instance v1, Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 88
    .line 89
    new-instance v2, Lcom/android/wm/shell/back/CrossActivityAnimation$Callback;

    .line 90
    .line 91
    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/back/CrossActivityAnimation$Callback;-><init>(Lcom/android/wm/shell/back/CrossActivityAnimation;I)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;

    .line 95
    .line 96
    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CrossActivityAnimation;I)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 103
    .line 104
    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 105
    .line 106
    new-instance p2, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 107
    .line 108
    sget-object v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->ENTER_PROGRESS_PROP:Lcom/android/wm/shell/back/CrossActivityAnimation$1;

    .line 109
    .line 110
    invoke-direct {p2, p0, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    .line 111
    .line 112
    .line 113
    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 114
    .line 115
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 116
    .line 117
    invoke-direct {v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    .line 118
    .line 119
    .line 120
    const v1, 0x44bb8000    # 1500.0f

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/high16 v2, 0x3f800000    # 1.0f

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p2, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 134
    .line 135
    .line 136
    new-instance p2, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 137
    .line 138
    sget-object v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->LEAVE_PROGRESS_PROP:Lcom/android/wm/shell/back/CrossActivityAnimation$2;

    .line 139
    .line 140
    invoke-direct {p2, p0, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    .line 141
    .line 142
    .line 143
    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 144
    .line 145
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 146
    .line 147
    invoke-direct {v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p2, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const/4 p2, 0x1

    .line 170
    const/high16 v0, 0x42c00000    # 96.0f

    .line 171
    .line 172
    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iput p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mWindowXShift:F

    .line 177
    .line 178
    return-void
.end method


# virtual methods
.method public final applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-float v2, v2

    .line 12
    div-float/2addr v0, v2

    .line 13
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 19
    .line 20
    .line 21
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 22
    .line 23
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 24
    .line 25
    invoke-virtual {v2, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p3, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTmpFloat9:[F

    .line 35
    .line 36
    invoke-virtual {p2, p1, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mCornerRadius:F

    .line 45
    .line 46
    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final finishAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/back/BackAnimationBackground;->removeBackground(Landroid/view/SurfaceControl$Transaction;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackInProgress:Z

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    :try_start_0
    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final transformWithProgress(FFLandroid/view/SurfaceControl;Landroid/graphics/RectF;FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTouchPos:Landroid/graphics/PointF;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sget-object v3, Lcom/android/wm/shell/back/CrossActivityAnimation;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 16
    .line 17
    check-cast v3, Landroid/view/animation/DecelerateInterpolator;

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/high16 v3, 0x3f800000    # 1.0f

    .line 24
    .line 25
    const v4, 0x3dccccd0    # 0.100000024f

    .line 26
    .line 27
    .line 28
    const v5, 0x3f666666    # 0.9f

    .line 29
    .line 30
    .line 31
    invoke-static {v3, p1, v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    int-to-float v1, v1

    .line 36
    mul-float/2addr v3, v1

    .line 37
    int-to-float v2, v2

    .line 38
    div-float v4, v2, v1

    .line 39
    .line 40
    mul-float/2addr v4, v3

    .line 41
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    int-to-float v0, v0

    .line 44
    sub-float/2addr v1, v3

    .line 45
    const/high16 v5, 0x40000000    # 2.0f

    .line 46
    .line 47
    div-float/2addr v1, v5

    .line 48
    add-float/2addr v1, v0

    .line 49
    sub-float/2addr p6, p5

    .line 50
    mul-float/2addr p6, p1

    .line 51
    add-float/2addr p6, p5

    .line 52
    add-float/2addr p6, v1

    .line 53
    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    .line 54
    .line 55
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 56
    .line 57
    sub-float/2addr v2, v4

    .line 58
    const/high16 p1, 0x3f000000    # 0.5f

    .line 59
    .line 60
    mul-float/2addr v2, p1

    .line 61
    add-float/2addr v3, p6

    .line 62
    add-float/2addr v4, v2

    .line 63
    invoke-virtual {p4, p6, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 64
    .line 65
    .line 66
    const p1, 0x3c23d70a    # 0.01f

    .line 67
    .line 68
    .line 69
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
