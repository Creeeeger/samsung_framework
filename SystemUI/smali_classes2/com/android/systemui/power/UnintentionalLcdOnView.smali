.class public Lcom/android/systemui/power/UnintentionalLcdOnView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCenterXOnScreen:F

.field public mCenterYOnScreen:F

.field public mCircleImage:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public final mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

.field public mDCircleAnimator:Landroid/animation/ValueAnimator;

.field public final mDCircleEndListener:Lcom/android/systemui/power/UnintentionalLcdOnView$2;

.field public mDCircleRadius:F

.field public mDragDistanceY:F

.field public mIsCoverState:Z

.field public mIsLockerSelected:Z

.field public mLockerImage:Landroid/widget/ImageView;

.field public mLockerRing:Landroid/widget/ImageView;

.field public final mPaintColor:Landroid/graphics/Paint;

.field public final mPreviewClipRect:Landroid/graphics/RectF;

.field public final mRoundRectPath:Landroid/graphics/Path;

.field public final mSineInOut33:Landroid/view/animation/PathInterpolator;

.field public mStartY:F

.field public mTouchListener:Lcom/android/systemui/power/SecPowerNotificationWarnings;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static -$$Nest$monLockerActionMove(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartY:F

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-float/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    .line 19
    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-ltz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    add-float/2addr v1, v2

    .line 38
    cmpg-float v0, v0, v1

    .line 39
    .line 40
    if-lez v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    int-to-float v0, v0

    .line 52
    add-float/2addr p1, v0

    .line 53
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    int-to-float v0, v0

    .line 60
    cmpl-float p1, p1, v0

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    const/4 v1, 0x4

    .line 64
    if-ltz p1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setPreviewClipRect()V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 70
    .line 71
    filled-new-array {p1}, [Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    aget-object p1, p1, v0

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-ne p1, v1, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 93
    .line 94
    filled-new-array {p1}, [Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    aget-object p1, p1, v0

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setPreviewClipRect()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->onLockerActionUp(Landroid/view/MotionEvent;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 6
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 8
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPreviewClipRect:Landroid/graphics/RectF;

    .line 9
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRoundRectPath:Landroid/graphics/Path;

    const/4 p3, 0x0

    .line 10
    iput-boolean p3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 11
    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$2;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleEndListener:Lcom/android/systemui/power/UnintentionalLcdOnView$2;

    .line 12
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    .line 13
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v2, p2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    .line 14
    new-instance p2, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-direct {p2}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    .line 15
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPaintColor:Landroid/graphics/Paint;

    .line 16
    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f060033

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 18
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final animateWhiteCircle(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8
    .line 9
    .line 10
    const-wide/16 v0, 0xfa

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v2, 0x3eb33333    # 0.35f

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$4;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$4;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$5;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$5;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    const/high16 v2, 0x40000000    # 2.0f

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRoundRectPath:Landroid/graphics/Path;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr v1, v2

    .line 31
    add-float/2addr v1, v0

    .line 32
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    int-to-float v2, v2

    .line 41
    add-float/2addr v0, v2

    .line 42
    iget v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPaintColor:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    int-to-float v3, v3

    .line 66
    add-float/2addr v0, v3

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 69
    .line 70
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRoundRectPath:Landroid/graphics/Path;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    .line 82
    .line 83
    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    int-to-float v3, v3

    .line 90
    div-float/2addr v3, v2

    .line 91
    add-float/2addr v3, v1

    .line 92
    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    int-to-float v2, v2

    .line 101
    add-float/2addr v1, v2

    .line 102
    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPaintColor:Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a05df

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 14
    .line 15
    const v0, 0x7f0a05dd

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 25
    .line 26
    const v0, 0x7f0a05de

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 38
    .line 39
    new-instance v1, Lcom/android/systemui/power/UnintentionalLcdOnView$1;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$1;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    new-array p1, p1, [I

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    aget p2, p1, p2

    .line 14
    .line 15
    int-to-float p2, p2

    .line 16
    iput p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    aget p1, p1, p2

    .line 20
    .line 21
    int-to-float p1, p1

    .line 22
    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    .line 23
    .line 24
    return-void
.end method

.method public final onLockerActionUp(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onLockerActionUp - mIsLockerSelected  = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " mDragDistanceY = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mLockerImage = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " mCircleImage = "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "PowerUI.UnintentionalLcdOnView"

    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    int-to-float v2, v2

    .line 73
    add-float/2addr v0, v2

    .line 74
    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    int-to-float v2, v2

    .line 81
    cmpl-float v0, v0, v2

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    if-ltz v0, :cond_0

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move v0, v2

    .line 89
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->animateWhiteCircle(Z)V

    .line 90
    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setDCircleAnimator(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 105
    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    iput v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 109
    .line 110
    iput-boolean v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iget v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    .line 119
    .line 120
    cmpl-float v0, v0, v3

    .line 121
    .line 122
    if-ltz v0, :cond_3

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    int-to-float v3, v3

    .line 137
    add-float/2addr v0, v3

    .line 138
    cmpg-float p1, p1, v0

    .line 139
    .line 140
    if-gtz p1, :cond_3

    .line 141
    .line 142
    const-string p1, "drag distance > WhiteCircleRadius"

    .line 143
    .line 144
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 148
    .line 149
    if-eqz p1, :cond_2

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissUnintentionalLcdOnWindow()V

    .line 152
    .line 153
    .line 154
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    new-instance p1, Landroid/content/Intent;

    .line 157
    .line 158
    const-string v0, "com.samsung.intent.action.KSO_CLICK_OK"

    .line 159
    .line 160
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    const-string/jumbo p1, "showDescription of unintentional locker"

    .line 168
    .line 169
    .line 170
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 174
    .line 175
    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 181
    .line 182
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    :cond_4
    :goto_1
    return-void
.end method

.method public final setCoverState(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsCoverState:Z

    .line 2
    .line 3
    const p1, 0x7f0a0c71

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/widget/TextView;

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsCoverState:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const v0, 0x7f1311ac

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const v0, 0x7f1311af

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const v0, 0x7f1311a9

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final setDCircleAnimator(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 4
    .line 5
    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [F

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput v0, v1, v2

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    aput v2, v1, v0

    .line 18
    .line 19
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    const-wide/16 v1, 0x64

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/android/systemui/power/UnintentionalLcdOnView$3;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$3;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleEndListener:Lcom/android/systemui/power/UnintentionalLcdOnView$2;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final setPreviewClipRect()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPreviewClipRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    int-to-float v3, v3

    .line 14
    add-float/2addr v2, v3

    .line 15
    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-float v3, v3

    .line 22
    sub-float/2addr v2, v3

    .line 23
    iget v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    int-to-float v4, v4

    .line 32
    add-float/2addr v3, v4

    .line 33
    iget v4, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    .line 34
    .line 35
    iget-object v5, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    int-to-float v5, v5

    .line 42
    add-float/2addr v4, v5

    .line 43
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRoundRectPath:Landroid/graphics/Path;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPreviewClipRect:Landroid/graphics/RectF;

    .line 49
    .line 50
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 51
    .line 52
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 53
    .line 54
    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
