.class public final Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# static fields
.field public static final VIEW_SCALER_HEIGHT_PROPERTY:Lcom/android/systemui/ExpandHelper$1;


# instance fields
.field public final mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentHeight:F

.field public mEnabled:Z

.field public mEventSource:Landroid/view/View;

.field public mExpanding:Z

.field public mExpansionStyle:I

.field public final mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mGravity:I

.field public mInitialTouchFocusY:F

.field public mInitialTouchSpan:F

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mLastFocusY:F

.field public mLastMotionY:F

.field public mLastSpanY:F

.field public mNaturalHeight:F

.field public mOldHeight:F

.field public mOnlyMovements:Z

.field public final mPullGestureMinXSpan:F

.field public mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mSGD:Landroid/view/ScaleGestureDetector;

.field public final mScaleAnimation:Landroid/animation/ObjectAnimator;

.field public final mScaleGestureListener:Lcom/android/systemui/ExpandHelper$2;

.field public final mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field public mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;

.field public final mSlopMultiplier:F

.field public mSmallSize:I

.field public final mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mWatchingForPull:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/ExpandHelper$1;

    .line 2
    .line 3
    const-string v1, "ViewScalerHeight"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/ExpandHelper$1;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/systemui/ExpandHelper;->VIEW_SCALER_HEIGHT_PROPERTY:Lcom/android/systemui/ExpandHelper$1;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p4, 0x0

    .line 5
    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 9
    .line 10
    new-instance v1, Lcom/android/systemui/ExpandHelper$2;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Lcom/android/systemui/ExpandHelper$2;

    .line 16
    .line 17
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 22
    .line 23
    new-instance p2, Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 29
    .line 30
    const/16 p3, 0x30

    .line 31
    .line 32
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 33
    .line 34
    new-array p3, v0, [F

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    aput v0, p3, p4

    .line 38
    .line 39
    sget-object p4, Lcom/android/systemui/ExpandHelper;->VIEW_SCALER_HEIGHT_PROPERTY:Lcom/android/systemui/ExpandHelper$1;

    .line 40
    .line 41
    invoke-static {p2, p4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const p3, 0x7f070b38

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 59
    .line 60
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 69
    .line 70
    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mSlopMultiplier:F

    .line 75
    .line 76
    new-instance p2, Landroid/view/ScaleGestureDetector;

    .line 77
    .line 78
    invoke-direct {p2, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 82
    .line 83
    new-instance p2, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const p3, 0x3e99999a    # 0.3f

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;F)V

    .line 97
    .line 98
    .line 99
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [I

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    aget v0, v2, v0

    .line 16
    .line 17
    int-to-float v0, v0

    .line 18
    add-float/2addr p1, v0

    .line 19
    aget v0, v2, v1

    .line 20
    .line 21
    int-to-float v0, v0

    .line 22
    add-float/2addr p2, v0

    .line 23
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->$r8$clinit:I

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v1, v1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FZZF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    return-object p0
.end method

.method public final finishExpanding(FZZ)V
    .locals 12

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget-object v1, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4
    iget v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v4, v1

    .line 5
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v2

    cmpl-float v3, v1, v2

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v8

    :goto_0
    const/4 v6, 0x0

    if-nez p2, :cond_6

    cmpl-float p2, v4, v1

    if-eqz v3, :cond_2

    if-lez p2, :cond_3

    cmpl-float p2, p1, v6

    if-ltz p2, :cond_3

    goto :goto_1

    :cond_2
    if-gez p2, :cond_4

    cmpl-float p2, p1, v6

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, v8

    goto :goto_2

    :cond_4
    :goto_1
    move p2, v5

    .line 6
    :goto_2
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    move v1, v5

    goto :goto_3

    :cond_5
    move v1, v8

    :goto_3
    or-int/2addr p2, v1

    goto :goto_4

    :cond_6
    xor-int/lit8 p2, v3, 0x1

    .line 7
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 9
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->expansionStateChanged(Z)V

    .line 10
    iget-object v7, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    iget-object v9, v7, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v10, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v9

    if-eqz p2, :cond_8

    goto :goto_5

    .line 12
    :cond_8
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    :goto_5
    int-to-float v9, v9

    cmpl-float v10, v9, v4

    if-eqz v10, :cond_b

    .line 13
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    if-eqz v11, :cond_b

    if-eqz p3, :cond_b

    new-array p3, v5, [F

    aput v9, p3, v8

    .line 14
    invoke-virtual {v1, p3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 15
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 16
    iget-object p3, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 17
    new-instance v0, Lcom/android/systemui/ExpandHelper$3;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/android/systemui/ExpandHelper$3;-><init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;ZZ)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    cmpl-float p3, p1, v6

    if-ltz p3, :cond_9

    goto :goto_6

    :cond_9
    move v5, v8

    :goto_6
    if-ne p2, v5, :cond_a

    move v6, p1

    .line 18
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float p1, v9, v4

    .line 19
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v3, v1

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 20
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_7

    :cond_b
    if-eqz v10, :cond_c

    .line 21
    iget-object p1, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    float-to-int p3, v9

    .line 22
    invoke-virtual {p1, p3, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    .line 23
    iput v9, v7, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 24
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v2, p1, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->setUserLockedChild(Landroid/view/View;Z)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v3, :cond_d

    .line 27
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 28
    :cond_d
    :goto_7
    iput-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 29
    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    return-void
.end method

.method public finishExpanding(ZF)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(FZZ)V

    return-void
.end method

.method public getScaleAnimation()Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isInside(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FF)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    new-array v3, v1, [I

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 14
    .line 15
    .line 16
    aget p0, v3, v0

    .line 17
    .line 18
    int-to-float p0, p0

    .line 19
    add-float/2addr p2, p0

    .line 20
    aget p0, v3, v2

    .line 21
    .line 22
    int-to-float p0, p0

    .line 23
    add-float/2addr p3, p0

    .line 24
    :cond_1
    new-array p0, v1, [I

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 27
    .line 28
    .line 29
    aget v1, p0, v0

    .line 30
    .line 31
    int-to-float v1, v1

    .line 32
    sub-float/2addr p2, v1

    .line 33
    aget p0, p0, v2

    .line 34
    .line 35
    int-to-float p0, p0

    .line 36
    sub-float/2addr p3, p0

    .line 37
    const/4 p0, 0x0

    .line 38
    cmpl-float v1, p2, p0

    .line 39
    .line 40
    if-lez v1, :cond_4

    .line 41
    .line 42
    cmpl-float p0, p3, p0

    .line 43
    .line 44
    if-lez p0, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    int-to-float p0, p0

    .line 51
    cmpg-float p0, p2, p0

    .line 52
    .line 53
    if-gez p0, :cond_2

    .line 54
    .line 55
    move p0, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move p0, v0

    .line 58
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    int-to-float p1, p1

    .line 63
    cmpg-float p1, p3, p1

    .line 64
    .line 65
    if-gez p1, :cond_3

    .line 66
    .line 67
    move p1, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move p1, v0

    .line 70
    :goto_1
    and-int/2addr p0, p1

    .line 71
    if-eqz p0, :cond_4

    .line 72
    .line 73
    move v0, v2

    .line 74
    :cond_4
    return v0
.end method

.method public final maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    float-to-int v2, v2

    .line 26
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    float-to-int v3, v3

    .line 33
    int-to-float v3, v3

    .line 34
    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 43
    .line 44
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 45
    .line 46
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 47
    .line 48
    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 49
    .line 50
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 62
    .line 63
    .line 64
    return v5

    .line 65
    :cond_1
    const/4 v4, 0x2

    .line 66
    if-ne v0, v4, :cond_2

    .line 67
    .line 68
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 69
    .line 70
    and-int/2addr v6, v5

    .line 71
    if-eqz v6, :cond_2

    .line 72
    .line 73
    return v5

    .line 74
    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    if-eqz v0, :cond_b

    .line 78
    .line 79
    const/4 v2, 0x3

    .line 80
    if-eq v0, v5, :cond_8

    .line 81
    .line 82
    if-eq v0, v4, :cond_3

    .line 83
    .line 84
    if-eq v0, v2, :cond_8

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 95
    .line 96
    cmpl-float v2, v0, v2

    .line 97
    .line 98
    if-lez v2, :cond_4

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    cmpl-float v0, v0, v2

    .line 107
    .line 108
    if-lez v0, :cond_4

    .line 109
    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 111
    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 115
    .line 116
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    .line 117
    .line 118
    .line 119
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 120
    .line 121
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 122
    .line 123
    if-eqz v0, :cond_f

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 130
    .line 131
    sub-float/2addr v0, v2

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 137
    .line 138
    sub-float/2addr v2, v3

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 144
    .line 145
    if-ne v3, v5, :cond_5

    .line 146
    .line 147
    int-to-float v3, v4

    .line 148
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSlopMultiplier:F

    .line 149
    .line 150
    mul-float/2addr v3, v4

    .line 151
    goto :goto_0

    .line 152
    :cond_5
    int-to-float v3, v4

    .line 153
    :goto_0
    cmpl-float v3, v0, v3

    .line 154
    .line 155
    if-lez v3, :cond_f

    .line 156
    .line 157
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    cmpl-float v0, v0, v2

    .line 162
    .line 163
    if-lez v0, :cond_f

    .line 164
    .line 165
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 168
    .line 169
    if-eqz v0, :cond_f

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-ne v2, v3, :cond_7

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_6

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->areChildrenExpanded()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_7

    .line 192
    .line 193
    :cond_6
    move v1, v5

    .line 194
    :cond_7
    if-nez v1, :cond_f

    .line 195
    .line 196
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 197
    .line 198
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_f

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-ne v0, v2, :cond_9

    .line 222
    .line 223
    move v1, v5

    .line 224
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 225
    .line 226
    if-eqz v0, :cond_a

    .line 227
    .line 228
    const/16 v2, 0x3e8

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    goto :goto_1

    .line 240
    :cond_a
    const/4 v0, 0x0

    .line 241
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 242
    .line 243
    .line 244
    iput-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;

    .line 248
    .line 249
    if-eqz v0, :cond_d

    .line 250
    .line 251
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 252
    .line 253
    int-to-float v4, v2

    .line 254
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/systemui/ExpandHelper;->isInside(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FF)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_d

    .line 259
    .line 260
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;

    .line 261
    .line 262
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 263
    .line 264
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 265
    .line 266
    if-nez v0, :cond_c

    .line 267
    .line 268
    move v0, v5

    .line 269
    goto :goto_2

    .line 270
    :cond_c
    move v0, v1

    .line 271
    :goto_2
    if-eqz v0, :cond_d

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_d
    move v5, v1

    .line 275
    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 276
    .line 277
    int-to-float v0, v2

    .line 278
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 283
    .line 284
    if-eqz v0, :cond_e

    .line 285
    .line 286
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 287
    .line 288
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    .line 289
    .line 290
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->canChildBeExpanded(Landroid/view/View;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-nez v0, :cond_e

    .line 295
    .line 296
    iput-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 297
    .line 298
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 299
    .line 300
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 311
    .line 312
    :cond_f
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 319
    .line 320
    .line 321
    iget-boolean p0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 322
    .line 323
    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    float-to-int v3, v3

    .line 37
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 46
    .line 47
    return v1

    .line 48
    :cond_1
    const/4 v4, 0x1

    .line 49
    if-eqz v0, :cond_12

    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    if-eq v0, v4, :cond_e

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    if-eq v0, v3, :cond_3

    .line 56
    .line 57
    if-eq v0, v2, :cond_e

    .line 58
    .line 59
    const/4 v2, 0x5

    .line 60
    if-eq v0, v2, :cond_2

    .line 61
    .line 62
    const/4 v2, 0x6

    .line 63
    if-eq v0, v2, :cond_2

    .line 64
    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :cond_2
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 76
    .line 77
    sub-float/2addr v2, v3

    .line 78
    add-float/2addr v2, v0

    .line 79
    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 80
    .line 81
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 90
    .line 91
    sub-float/2addr v2, v3

    .line 92
    add-float/2addr v2, v0

    .line 93
    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 94
    .line 95
    goto/16 :goto_9

    .line 96
    .line 97
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 98
    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 106
    .line 107
    sub-float/2addr v0, v2

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 113
    .line 114
    sub-float/2addr v2, v3

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 120
    .line 121
    if-ne v3, v4, :cond_4

    .line 122
    .line 123
    int-to-float v3, v5

    .line 124
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSlopMultiplier:F

    .line 125
    .line 126
    mul-float/2addr v3, v5

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    int-to-float v3, v5

    .line 129
    :goto_0
    cmpl-float v3, v0, v3

    .line 130
    .line 131
    if-lez v3, :cond_7

    .line 132
    .line 133
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    cmpl-float v0, v0, v2

    .line 138
    .line 139
    if-lez v0, :cond_7

    .line 140
    .line 141
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-ne v2, v3, :cond_6

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_5

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->areChildrenExpanded()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    :cond_5
    move v0, v4

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    move v0, v1

    .line 172
    :goto_1
    if-nez v0, :cond_7

    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 175
    .line 176
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 193
    .line 194
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 195
    .line 196
    if-eqz v0, :cond_d

    .line 197
    .line 198
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 199
    .line 200
    and-int/2addr v2, v4

    .line 201
    if-eqz v2, :cond_d

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 208
    .line 209
    sub-float/2addr v0, v2

    .line 210
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 211
    .line 212
    add-float/2addr v0, v2

    .line 213
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 214
    .line 215
    int-to-float v3, v2

    .line 216
    cmpg-float v5, v0, v3

    .line 217
    .line 218
    if-gez v5, :cond_8

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_8
    move v3, v0

    .line 222
    :goto_2
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 223
    .line 224
    cmpl-float v6, v3, v5

    .line 225
    .line 226
    if-lez v6, :cond_9

    .line 227
    .line 228
    move v3, v5

    .line 229
    :cond_9
    cmpl-float v5, v0, v5

    .line 230
    .line 231
    if-lez v5, :cond_a

    .line 232
    .line 233
    move v5, v4

    .line 234
    goto :goto_3

    .line 235
    :cond_a
    move v5, v1

    .line 236
    :goto_3
    int-to-float v2, v2

    .line 237
    cmpg-float v0, v0, v2

    .line 238
    .line 239
    if-gez v0, :cond_b

    .line 240
    .line 241
    move v5, v4

    .line 242
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 243
    .line 244
    iget-object v2, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 245
    .line 246
    float-to-int v6, v3

    .line 247
    invoke-virtual {v2, v6, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    .line 248
    .line 249
    .line 250
    iget-object v0, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 251
    .line 252
    iput v3, v0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 259
    .line 260
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 261
    .line 262
    if-eqz v5, :cond_c

    .line 263
    .line 264
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    .line 265
    .line 266
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->expansionStateChanged(Z)V

    .line 267
    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_c
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    .line 271
    .line 272
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->expansionStateChanged(Z)V

    .line 273
    .line 274
    .line 275
    :goto_4
    return v4

    .line 276
    :cond_d
    if-eqz v0, :cond_14

    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 286
    .line 287
    return v4

    .line 288
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 289
    .line 290
    if-eqz v0, :cond_10

    .line 291
    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-ne v0, v2, :cond_f

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_f
    move v0, v1

    .line 300
    goto :goto_6

    .line 301
    :cond_10
    :goto_5
    move v0, v4

    .line 302
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 303
    .line 304
    if-eqz v2, :cond_11

    .line 305
    .line 306
    const/16 v3, 0x3e8

    .line 307
    .line 308
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 309
    .line 310
    .line 311
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 312
    .line 313
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    goto :goto_7

    .line 318
    :cond_11
    const/4 v2, 0x0

    .line 319
    :goto_7
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 320
    .line 321
    .line 322
    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;

    .line 327
    .line 328
    if-eqz v0, :cond_13

    .line 329
    .line 330
    int-to-float v5, v2

    .line 331
    int-to-float v6, v3

    .line 332
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 333
    .line 334
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/systemui/ExpandHelper;->isInside(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FF)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_13

    .line 339
    .line 340
    move v0, v4

    .line 341
    goto :goto_8

    .line 342
    :cond_13
    move v0, v1

    .line 343
    :goto_8
    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 344
    .line 345
    int-to-float v0, v2

    .line 346
    int-to-float v2, v3

    .line 347
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 352
    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 364
    .line 365
    :cond_14
    :goto_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 370
    .line 371
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 372
    .line 373
    .line 374
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 375
    .line 376
    if-eqz p0, :cond_15

    .line 377
    .line 378
    move v1, v4

    .line 379
    :cond_15
    return v1
.end method

.method public startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 15
    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 22
    .line 23
    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->expansionStateChanged(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->setUserLockedChild(Landroid/view/View;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 32
    .line 33
    iput-object p1, v1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 34
    .line 35
    iget v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 36
    .line 37
    int-to-float v2, v2

    .line 38
    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 39
    .line 40
    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->canChildBeExpanded(Landroid/view/View;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iget-object p2, v1, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 49
    .line 50
    iget-object p2, p2, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 53
    .line 54
    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    int-to-float p2, p2

    .line 64
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget p2, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 74
    .line 75
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 76
    .line 77
    :goto_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const/4 p2, 0x3

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 83
    .line 84
    .line 85
    return v0
.end method

.method public final trackVelocity(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    .line 21
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    return-void
.end method

.method public updateExpansion()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 8
    .line 9
    sub-float/2addr v0, v1

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    mul-float/2addr v0, v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 20
    .line 21
    sub-float/2addr v2, v3

    .line 22
    mul-float/2addr v2, v1

    .line 23
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 24
    .line 25
    const/16 v4, 0x50

    .line 26
    .line 27
    if-ne v3, v4, :cond_0

    .line 28
    .line 29
    const/high16 v3, -0x40800000    # -1.0f

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v1

    .line 33
    :goto_0
    mul-float/2addr v2, v3

    .line 34
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    add-float/2addr v4, v3

    .line 43
    add-float/2addr v4, v1

    .line 44
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    mul-float/2addr v1, v2

    .line 49
    div-float/2addr v1, v4

    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    mul-float/2addr v2, v0

    .line 55
    div-float/2addr v2, v4

    .line 56
    add-float/2addr v2, v1

    .line 57
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 58
    .line 59
    add-float/2addr v2, v0

    .line 60
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 61
    .line 62
    int-to-float v0, v0

    .line 63
    cmpg-float v1, v2, v0

    .line 64
    .line 65
    if-gez v1, :cond_1

    .line 66
    .line 67
    move v2, v0

    .line 68
    :cond_1
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 69
    .line 70
    cmpl-float v1, v2, v0

    .line 71
    .line 72
    if-lez v1, :cond_2

    .line 73
    .line 74
    move v2, v0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 78
    .line 79
    float-to-int v3, v2

    .line 80
    const/4 v4, 0x1

    .line 81
    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 85
    .line 86
    iput v2, v0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 103
    .line 104
    return-void
.end method
