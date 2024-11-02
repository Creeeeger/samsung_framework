.class public Lcom/android/wm/shell/common/split/DividerView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final DIVIDER_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$1;

.field public static final DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$3;

.field public static final DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$2;


# instance fields
.field public final mAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$4;

.field public mBackground:Landroid/view/View;

.field public mDividerBar:Landroid/widget/FrameLayout;

.field public final mDividerBounds:Landroid/graphics/Rect;

.field public mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

.field public mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

.field public mDividerRoundedCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mH:Landroid/os/Handler;

.field public mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

.field public final mHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$5;

.field public final mHandleHoverListener:Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mInteractive:Z

.field public final mIsCellDivider:Z

.field public final mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

.field public final mMouseOutAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$9;

.field public final mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

.field public final mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

.field public final mMouseOverAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$8;

.field public final mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

.field public mMouseOverBgScaleSize:I

.field public final mMouseOverRoundedCornerAnimator:Landroid/animation/ValueAnimator;

.field public mMoving:Z

.field public final mMultiSplitHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$12;

.field public mNeedUpdateCursorWhenMoving:Z

.field public final mRoundedCornerUpdateListener:Lcom/android/wm/shell/common/split/DividerView$7;

.field public mSetTouchRegion:Z

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

.field public mStartPos:I

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTouchElevation:I

.field public final mTouchSlop:I

.field public mTouching:Z

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public static synthetic $r8$lambda$xjbJZubBp3a6wlufPhmpfDd1Ohw(Lcom/android/wm/shell/common/split/DividerView;Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x7

    .line 18
    if-eq p1, v1, :cond_3

    .line 19
    .line 20
    const/16 v0, 0x9

    .line 21
    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    const/16 v0, 0xa

    .line 25
    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

    .line 71
    .line 72
    const-wide/16 v0, 0x64

    .line 73
    .line 74
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    .line 79
    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->updateCursorType()V

    .line 83
    .line 84
    .line 85
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    .line 86
    .line 87
    :cond_4
    :goto_0
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$1;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Integer;

    .line 4
    .line 5
    const-string v2, "height"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$1;

    .line 11
    .line 12
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$2;

    .line 13
    .line 14
    const-string/jumbo v3, "width"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v3}, Lcom/android/wm/shell/common/split/DividerView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$2;

    .line 21
    .line 22
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$3;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerView$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$3;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchSlop:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    .line 4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    .line 5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 6
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    .line 7
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouching:Z

    .line 10
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 13
    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$4;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$4;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$4;

    .line 14
    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$5;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$5;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$5;

    .line 15
    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$7;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$7;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mRoundedCornerUpdateListener:Lcom/android/wm/shell/common/split/DividerView$7;

    .line 16
    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$8;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$8;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$8;

    .line 17
    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$9;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$9;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$9;

    .line 18
    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$10;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$10;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

    .line 19
    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$11;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$11;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

    .line 20
    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerView;I)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleHoverListener:Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;

    .line 21
    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$12;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$12;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMultiSplitHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$12;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/common/split/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchSlop:I

    const/4 p3, 0x1

    .line 26
    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    .line 27
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    .line 28
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 29
    new-instance p4, Landroid/animation/ValueAnimator;

    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    .line 30
    new-instance p4, Landroid/animation/ValueAnimator;

    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    .line 31
    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    const/4 p4, 0x0

    .line 32
    iput-boolean p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouching:Z

    .line 33
    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/DividerView$4;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$4;

    .line 37
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$5;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/DividerView$5;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$5;

    .line 38
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$7;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/DividerView$7;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mRoundedCornerUpdateListener:Lcom/android/wm/shell/common/split/DividerView$7;

    .line 39
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$8;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/DividerView$8;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$8;

    .line 40
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$9;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/DividerView$9;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$9;

    .line 41
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$10;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/DividerView$10;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

    .line 42
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$11;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/DividerView$11;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

    .line 43
    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerView;I)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleHoverListener:Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;

    .line 44
    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$12;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/split/DividerView$12;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mMultiSplitHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$12;

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lcom/android/wm/shell/R$styleable;->DividerView:[I

    invoke-virtual {p3, p2, v0, p4, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    .line 46
    :try_start_0
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mInputManager:Landroid/hardware/input/InputManager;

    return-void

    :catchall_0
    move-exception p0

    .line 49
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    throw p0
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final getCurrentPosition()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 17
    .line 18
    :goto_0
    return p0
.end method

.method public final isLandscape()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final isVerticalDivision()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->isLandscape()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0350

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBar:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    const v0, 0x7f0a035d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 25
    .line 26
    const v0, 0x7f0a035c

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackground:Landroid/view/View;

    .line 34
    .line 35
    const v0, 0x7f0a0352

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerRoundedCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/DividerView;->updateBackgroundColor(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 51
    .line 52
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const v2, 0x7f07122c

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverBgScaleSize:I

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleHoverListener:Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const v2, 0x7f0702ed

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchElevation:I

    .line 87
    .line 88
    new-instance v1, Landroid/view/GestureDetector;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-instance v3, Lcom/android/wm/shell/common/split/DividerView$DoubleTapListener;

    .line 95
    .line 96
    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/common/split/DividerView$DoubleTapListener;-><init>(Lcom/android/wm/shell/common/split/DividerView;I)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    .line 104
    .line 105
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    .line 107
    .line 108
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ACCESSIBILITY:Z

    .line 109
    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMultiSplitHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$12;

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$5;

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    return-void
.end method

.method public final onInsetsChanged(Landroid/view/InsetsState;Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroid/graphics/Rect;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    .line 37
    .line 38
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x1

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    sub-int/2addr v0, v1

    .line 54
    :goto_1
    if-ltz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-ne v3, v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/InsetsSource;->insetsRoundedCornerFrame()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    iget-boolean v0, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->getCurrentPosition()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/DividerResizeController;->finishResizing(I)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_5

    .line 112
    .line 113
    if-eqz p2, :cond_4

    .line 114
    .line 115
    sget-object p1, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$1;

    .line 116
    .line 117
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    filled-new-array {p2, v0}, [I

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    sget-object p2, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    .line 141
    .line 142
    const-wide/16 v0, 0x12c

    .line 143
    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$4;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    sget-object p1, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$1;

    .line 157
    .line 158
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 159
    .line 160
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/common/split/DividerView$1;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    .line 172
    .line 173
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    .line 174
    .line 175
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 176
    .line 177
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 23
    .line 24
    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    iget-object p5, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 29
    .line 30
    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    .line 31
    .line 32
    .line 33
    move-result p5

    .line 34
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackground:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v0, -0x1

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 26
    .line 27
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 28
    .line 29
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 38
    .line 39
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 40
    .line 41
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 42
    .line 43
    const/16 p0, 0x10

    .line 44
    .line 45
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_28

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    .line 7
    .line 8
    if-eqz p1, :cond_28

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p2, p1, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    and-int/lit16 p1, p1, 0xff

    .line 33
    .line 34
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->isLandscape()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_0
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :goto_1
    float-to-int v2, v2

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    return v0

    .line 66
    :cond_3
    const/4 v3, 0x1

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x3

    .line 69
    if-eqz p1, :cond_24

    .line 70
    .line 71
    if-eq p1, v3, :cond_20

    .line 72
    .line 73
    const/4 v6, 0x2

    .line 74
    if-eq p1, v6, :cond_4

    .line 75
    .line 76
    if-eq p1, v5, :cond_20

    .line 77
    .line 78
    goto/16 :goto_13

    .line 79
    .line 80
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 83
    .line 84
    .line 85
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    .line 86
    .line 87
    const-string v1, "DividerResizeController"

    .line 88
    .line 89
    if-nez p1, :cond_b

    .line 90
    .line 91
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mStartPos:I

    .line 92
    .line 93
    sub-int p1, v2, p1

    .line 94
    .line 95
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iget v7, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchSlop:I

    .line 100
    .line 101
    if-le p1, v7, :cond_b

    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 104
    .line 105
    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 106
    .line 107
    iget-boolean v8, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    .line 108
    .line 109
    if-eqz v8, :cond_5

    .line 110
    .line 111
    const-string/jumbo p1, "startResizing: failed, already resizing state!"

    .line 112
    .line 113
    .line 114
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto/16 :goto_6

    .line 118
    .line 119
    :cond_5
    iget-boolean v8, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mUseGuideViewByMultiStar:Z

    .line 120
    .line 121
    sput-boolean v8, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 122
    .line 123
    iput-boolean v3, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    .line 124
    .line 125
    iput-object v7, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 126
    .line 127
    iput-object p0, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 128
    .line 129
    iget v7, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 130
    .line 131
    iput v7, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerSize:I

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    xor-int/2addr v7, v3

    .line 138
    iput-boolean v7, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsHorizontalDivision:Z

    .line 139
    .line 140
    iget-object v7, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 141
    .line 142
    invoke-virtual {v7}, Lcom/android/wm/shell/common/split/DividerView;->getCurrentPosition()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    iput v7, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mCurrentDividerPosition:I

    .line 147
    .line 148
    iget-object v7, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    const v8, 0x7f070951

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    iput v7, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDefaultHandleMoveThreshold:I

    .line 162
    .line 163
    const v7, 0x7f0d00d3

    .line 164
    .line 165
    .line 166
    iget-object v8, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 167
    .line 168
    invoke-virtual {v8, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 173
    .line 174
    iput-object v4, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 175
    .line 176
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    .line 177
    .line 178
    if-eqz v4, :cond_7

    .line 179
    .line 180
    iget-object v4, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_7

    .line 187
    .line 188
    iget-object v4, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 189
    .line 190
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-nez v4, :cond_6

    .line 195
    .line 196
    move v4, v3

    .line 197
    goto :goto_2

    .line 198
    :cond_6
    move v4, v0

    .line 199
    :goto_2
    iput v4, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mHalfSplitStageType:I

    .line 200
    .line 201
    :cond_7
    iget-object v4, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    .line 207
    .line 208
    iget-object v8, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 209
    .line 210
    if-eqz v7, :cond_9

    .line 211
    .line 212
    iget-object v7, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 213
    .line 214
    if-eqz v7, :cond_8

    .line 215
    .line 216
    iget-boolean v7, v7, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 217
    .line 218
    if-eqz v7, :cond_8

    .line 219
    .line 220
    move v7, v3

    .line 221
    goto :goto_3

    .line 222
    :cond_8
    move v7, v0

    .line 223
    :goto_3
    if-eqz v7, :cond_9

    .line 224
    .line 225
    iget-object v7, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 226
    .line 227
    invoke-virtual {v7}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    goto :goto_4

    .line 232
    :cond_9
    iget-object v7, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 233
    .line 234
    iget-object v7, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 235
    .line 236
    :goto_4
    iput-object v7, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 237
    .line 238
    iget-boolean v7, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsHorizontalDivision:Z

    .line 239
    .line 240
    if-eqz v7, :cond_a

    .line 241
    .line 242
    iget-object v7, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 243
    .line 244
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    new-instance v8, Landroid/graphics/Rect;

    .line 248
    .line 249
    iget-object v7, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 250
    .line 251
    invoke-direct {v8, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    goto :goto_5

    .line 259
    :cond_a
    iget-object v7, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 260
    .line 261
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    new-instance v8, Landroid/graphics/Rect;

    .line 265
    .line 266
    iget-object v7, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 267
    .line 268
    invoke-direct {v8, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    :goto_5
    iput v7, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDisplaySize:I

    .line 276
    .line 277
    iget-object v7, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 278
    .line 279
    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 284
    .line 285
    iput v7, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    .line 286
    .line 287
    iget-object v7, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 288
    .line 289
    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 294
    .line 295
    iput v7, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mMiddleTargetPosition:I

    .line 296
    .line 297
    iget-object v7, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 298
    .line 299
    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 304
    .line 305
    iput v7, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    .line 306
    .line 307
    iget v8, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    .line 308
    .line 309
    div-int/lit8 v9, v8, 0x2

    .line 310
    .line 311
    iput v9, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    .line 312
    .line 313
    iget v10, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDisplaySize:I

    .line 314
    .line 315
    sub-int v11, v10, v7

    .line 316
    .line 317
    div-int/2addr v11, v6

    .line 318
    sub-int/2addr v10, v11

    .line 319
    iput v10, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    .line 320
    .line 321
    sub-int/2addr v8, v9

    .line 322
    int-to-float v8, v8

    .line 323
    const/high16 v11, 0x3f200000    # 0.625f

    .line 324
    .line 325
    mul-float/2addr v8, v11

    .line 326
    float-to-int v8, v8

    .line 327
    add-int/2addr v9, v8

    .line 328
    iput v9, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstFadeOutPosition:I

    .line 329
    .line 330
    sub-int v7, v10, v7

    .line 331
    .line 332
    int-to-float v7, v7

    .line 333
    mul-float/2addr v7, v11

    .line 334
    float-to-int v7, v7

    .line 335
    sub-int/2addr v10, v7

    .line 336
    iput v10, v4, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastFadeOutPosition:I

    .line 337
    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string v8, "ResizeAlgorithm_init: "

    .line 341
    .line 342
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    iget-object v7, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 356
    .line 357
    iget-object v8, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 358
    .line 359
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 360
    .line 361
    invoke-virtual {v7, p0, v8, p1, v4}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->init(Lcom/android/wm/shell/common/split/DividerView;Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;)V

    .line 362
    .line 363
    .line 364
    :goto_6
    iput-boolean v3, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    .line 365
    .line 366
    :cond_b
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    .line 367
    .line 368
    if-eqz p1, :cond_27

    .line 369
    .line 370
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-ne p1, v5, :cond_c

    .line 375
    .line 376
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    .line 377
    .line 378
    if-eqz p1, :cond_c

    .line 379
    .line 380
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->updateCursorType()V

    .line 381
    .line 382
    .line 383
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    .line 384
    .line 385
    :cond_c
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->getCurrentPosition()I

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    add-int/2addr p1, v2

    .line 390
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerView;->mStartPos:I

    .line 391
    .line 392
    sub-int/2addr p1, v2

    .line 393
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 394
    .line 395
    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    .line 396
    .line 397
    if-eqz v2, :cond_27

    .line 398
    .line 399
    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsFinishing:Z

    .line 400
    .line 401
    if-eqz v2, :cond_d

    .line 402
    .line 403
    goto/16 :goto_13

    .line 404
    .line 405
    :cond_d
    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 406
    .line 407
    if-eqz v2, :cond_e

    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_e
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mCurrentDividerPosition:I

    .line 411
    .line 412
    sub-int/2addr v2, p1

    .line 413
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDefaultHandleMoveThreshold:I

    .line 418
    .line 419
    if-le v2, v4, :cond_10

    .line 420
    .line 421
    iput-boolean v3, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 422
    .line 423
    const-string/jumbo v2, "validateMoveEvent: start move divider, pos="

    .line 424
    .line 425
    .line 426
    invoke-static {v2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 427
    .line 428
    .line 429
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 430
    .line 431
    if-eqz v1, :cond_f

    .line 432
    .line 433
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 434
    .line 435
    .line 436
    move-result p2

    .line 437
    if-ne p2, v5, :cond_f

    .line 438
    .line 439
    const-string p2, "1000"

    .line 440
    .line 441
    const-string v1, "From Mouse snapping"

    .line 442
    .line 443
    invoke-static {p2, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :cond_f
    :goto_7
    move p2, v3

    .line 447
    goto :goto_8

    .line 448
    :cond_10
    move p2, v0

    .line 449
    :goto_8
    if-nez p2, :cond_11

    .line 450
    .line 451
    goto/16 :goto_13

    .line 452
    .line 453
    :cond_11
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    .line 454
    .line 455
    invoke-static {p2, p1}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->-$$Nest$mupdate(Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;I)V

    .line 456
    .line 457
    .line 458
    sget-boolean p1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 459
    .line 460
    if-eqz p1, :cond_12

    .line 461
    .line 462
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->getSnapTargetPosition()I

    .line 463
    .line 464
    .line 465
    move-result p1

    .line 466
    goto :goto_c

    .line 467
    :cond_12
    iget p1, p2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    .line 468
    .line 469
    iget v1, p2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    .line 470
    .line 471
    if-ge p1, v1, :cond_13

    .line 472
    .line 473
    move v2, v3

    .line 474
    goto :goto_9

    .line 475
    :cond_13
    move v2, v0

    .line 476
    :goto_9
    if-eqz v2, :cond_14

    .line 477
    .line 478
    :goto_a
    move p1, v1

    .line 479
    goto :goto_c

    .line 480
    :cond_14
    iget v1, p2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    .line 481
    .line 482
    if-le p1, v1, :cond_15

    .line 483
    .line 484
    move v2, v3

    .line 485
    goto :goto_b

    .line 486
    :cond_15
    move v2, v0

    .line 487
    :goto_b
    if-eqz v2, :cond_16

    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_16
    :goto_c
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->getSnapTargetPosition()I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 495
    .line 496
    iget p2, p2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    .line 497
    .line 498
    const/high16 v2, 0x3f800000    # 1.0f

    .line 499
    .line 500
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 501
    .line 502
    .line 503
    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 504
    .line 505
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    sub-int/2addr v4, v3

    .line 510
    :goto_d
    if-ltz v4, :cond_27

    .line 511
    .line 512
    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 513
    .line 514
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    check-cast v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 519
    .line 520
    if-eqz v5, :cond_1f

    .line 521
    .line 522
    iget-object v7, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 523
    .line 524
    iget-object v8, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    .line 525
    .line 526
    if-nez p2, :cond_17

    .line 527
    .line 528
    invoke-virtual {v5, p1, v8}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->calculateBoundsForPosition(ILandroid/graphics/Rect;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 532
    .line 533
    .line 534
    iput-boolean v3, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mShouldPlayHaptic:Z

    .line 535
    .line 536
    goto :goto_e

    .line 537
    :cond_17
    invoke-virtual {v5, v1, v8}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->calculateBoundsForPosition(ILandroid/graphics/Rect;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 541
    .line 542
    .line 543
    :goto_e
    iget-boolean v9, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mIsResizing:Z

    .line 544
    .line 545
    iget-object v10, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 546
    .line 547
    if-nez v9, :cond_1a

    .line 548
    .line 549
    iput-boolean v3, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mIsResizing:Z

    .line 550
    .line 551
    iget-object v9, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    .line 552
    .line 553
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    .line 558
    .line 559
    iget-object v9, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 560
    .line 561
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    .line 563
    .line 564
    sget-boolean v9, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 565
    .line 566
    if-eqz v9, :cond_18

    .line 567
    .line 568
    iget-object v9, v10, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    .line 569
    .line 570
    if-eqz v9, :cond_18

    .line 571
    .line 572
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    .line 574
    .line 575
    :cond_18
    const-wide/16 v11, 0x12c

    .line 576
    .line 577
    invoke-virtual {v5, v7, v3, v11, v12}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startBoundsAnimation(Landroid/graphics/Rect;ZJ)V

    .line 578
    .line 579
    .line 580
    iget-object v7, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 581
    .line 582
    if-eqz v7, :cond_19

    .line 583
    .line 584
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->end()V

    .line 585
    .line 586
    .line 587
    :cond_19
    new-array v7, v6, [F

    .line 588
    .line 589
    fill-array-data v7, :array_0

    .line 590
    .line 591
    .line 592
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 593
    .line 594
    .line 595
    move-result-object v7

    .line 596
    iput-object v7, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 597
    .line 598
    new-instance v9, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;

    .line 599
    .line 600
    invoke-direct {v9, v5, v3}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 604
    .line 605
    .line 606
    iget-object v7, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 607
    .line 608
    new-instance v9, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$2;

    .line 609
    .line 610
    invoke-direct {v9, v5}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$2;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 614
    .line 615
    .line 616
    iget-object v7, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 617
    .line 618
    sget-object v9, Lcom/android/wm/shell/common/split/DividerResizeLayout;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    .line 619
    .line 620
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 621
    .line 622
    .line 623
    iget-object v7, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 624
    .line 625
    const-wide/16 v11, 0x64

    .line 626
    .line 627
    invoke-virtual {v7, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 628
    .line 629
    .line 630
    iget-object v7, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 631
    .line 632
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    .line 636
    .line 637
    .line 638
    :cond_1a
    invoke-virtual {v5, p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->updateDismissSide(I)Z

    .line 639
    .line 640
    .line 641
    move-result v7

    .line 642
    if-eqz v7, :cond_1c

    .line 643
    .line 644
    if-nez p2, :cond_1b

    .line 645
    .line 646
    move v7, v3

    .line 647
    goto :goto_f

    .line 648
    :cond_1b
    move v7, v0

    .line 649
    :goto_f
    invoke-virtual {v5, v7}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    .line 650
    .line 651
    .line 652
    const-wide/16 v11, 0x190

    .line 653
    .line 654
    invoke-virtual {v5, v8, v0, v11, v12}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startBoundsAnimation(Landroid/graphics/Rect;ZJ)V

    .line 655
    .line 656
    .line 657
    :cond_1c
    iget-object v7, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 658
    .line 659
    if-eqz v7, :cond_1d

    .line 660
    .line 661
    move v7, v3

    .line 662
    goto :goto_10

    .line 663
    :cond_1d
    move v7, v0

    .line 664
    :goto_10
    if-nez v7, :cond_1e

    .line 665
    .line 666
    invoke-virtual {v5, v8}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->updateViewBounds(Landroid/graphics/Rect;)V

    .line 667
    .line 668
    .line 669
    :cond_1e
    iget-boolean v7, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mShouldPlayHaptic:Z

    .line 670
    .line 671
    if-eqz v7, :cond_1f

    .line 672
    .line 673
    if-eqz p2, :cond_1f

    .line 674
    .line 675
    iput-boolean v0, v5, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mShouldPlayHaptic:Z

    .line 676
    .line 677
    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 678
    .line 679
    .line 680
    :cond_1f
    add-int/lit8 v4, v4, -0x1

    .line 681
    .line 682
    goto/16 :goto_d

    .line 683
    .line 684
    :cond_20
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->releaseTouching()V

    .line 685
    .line 686
    .line 687
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 688
    .line 689
    .line 690
    move-result p1

    .line 691
    if-ne p1, v5, :cond_21

    .line 692
    .line 693
    iput-boolean v3, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    .line 694
    .line 695
    :cond_21
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 696
    .line 697
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 698
    .line 699
    .line 700
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 701
    .line 702
    const/16 p2, 0x3e8

    .line 703
    .line 704
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 705
    .line 706
    .line 707
    if-eqz v1, :cond_22

    .line 708
    .line 709
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 710
    .line 711
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 712
    .line 713
    .line 714
    goto :goto_11

    .line 715
    :cond_22
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 716
    .line 717
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 718
    .line 719
    .line 720
    :goto_11
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 721
    .line 722
    if-eqz p1, :cond_23

    .line 723
    .line 724
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 725
    .line 726
    if-eqz p1, :cond_23

    .line 727
    .line 728
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 729
    .line 730
    iget p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 731
    .line 732
    goto :goto_12

    .line 733
    :cond_23
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 734
    .line 735
    iget p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 736
    .line 737
    :goto_12
    add-int/2addr p1, v2

    .line 738
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mStartPos:I

    .line 739
    .line 740
    sub-int/2addr p1, p2

    .line 741
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 742
    .line 743
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/split/DividerResizeController;->finishResizing(I)V

    .line 744
    .line 745
    .line 746
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    .line 747
    .line 748
    goto :goto_13

    .line 749
    :cond_24
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 750
    .line 751
    .line 752
    move-result-object p1

    .line 753
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 754
    .line 755
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/DividerView;->setSlippery(Z)V

    .line 759
    .line 760
    .line 761
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 762
    .line 763
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 764
    .line 765
    .line 766
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 767
    .line 768
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 773
    .line 774
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 775
    .line 776
    .line 777
    move-result-object p1

    .line 778
    const-wide/16 v6, 0x96

    .line 779
    .line 780
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 781
    .line 782
    .line 783
    move-result-object p1

    .line 784
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchElevation:I

    .line 785
    .line 786
    int-to-float v1, v1

    .line 787
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 788
    .line 789
    .line 790
    move-result-object p1

    .line 791
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 792
    .line 793
    .line 794
    iput-boolean v3, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouching:Z

    .line 795
    .line 796
    iput v2, p0, Lcom/android/wm/shell/common/split/DividerView;->mStartPos:I

    .line 797
    .line 798
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    .line 799
    .line 800
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 801
    .line 802
    iget-object v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 803
    .line 804
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 805
    .line 806
    .line 807
    move-result-object p1

    .line 808
    const/16 v2, 0x34

    .line 809
    .line 810
    invoke-static {v2, v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 811
    .line 812
    .line 813
    move-result-object p1

    .line 814
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 815
    .line 816
    .line 817
    move-result v1

    .line 818
    if-nez v1, :cond_25

    .line 819
    .line 820
    invoke-virtual {p1, v4}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 821
    .line 822
    .line 823
    :cond_25
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 828
    .line 829
    .line 830
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 831
    .line 832
    .line 833
    move-result p1

    .line 834
    if-ne p1, v5, :cond_26

    .line 835
    .line 836
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->updateCursorType()V

    .line 837
    .line 838
    .line 839
    :cond_26
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 840
    .line 841
    .line 842
    :cond_27
    :goto_13
    return v3

    .line 843
    :cond_28
    return v0

    .line 844
    nop

    .line 845
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final openDividerPanelIfNeeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerPanel;->isSupportPanelOpenPolicy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 32
    .line 33
    :goto_0
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 56
    .line 57
    if-ltz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 68
    .line 69
    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 v2, 0x0

    .line 75
    :goto_1
    if-nez v2, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    const/4 v0, 0x0

    .line 79
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeHandleMenu(Z)V

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->updateDividerPanel()V

    .line 85
    .line 86
    .line 87
    :cond_6
    :goto_3
    return-void
.end method

.method public final releaseTouching()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/DividerView;->setSlippery(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-wide/16 v1, 0xc8

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouching:Z

    .line 38
    .line 39
    return-void
.end method

.method public final setSlippery(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 13
    .line 14
    const/high16 v2, 0x20000000

    .line 15
    .line 16
    and-int v3, v1, v2

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ne v3, p1, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    if-eqz p1, :cond_3

    .line 27
    .line 28
    or-int p1, v1, v2

    .line 29
    .line 30
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const p1, -0x20000001

    .line 34
    .line 35
    .line 36
    and-int/2addr p1, v1

    .line 37
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 38
    .line 39
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final updateBackgroundColor(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackground:Landroid/view/View;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const v0, 0x1060425

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackground:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final updateCursorType()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/16 p0, 0x278a

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p0, 0x278b

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
