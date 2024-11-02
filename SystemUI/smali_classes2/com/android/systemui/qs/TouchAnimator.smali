.class public final Lcom/android/systemui/qs/TouchAnimator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final POSITION:Lcom/android/systemui/qs/TouchAnimator$1;


# instance fields
.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public final mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

.field public mLastT:F

.field public final mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field public final mSpan:F

.field public final mStartDelay:F

.field public final mTargets:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$1;

    .line 2
    .line 3
    const-string/jumbo v1, "position"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$1;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/qs/TouchAnimator;->POSITION:Lcom/android/systemui/qs/TouchAnimator$1;

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/TouchAnimator;->mTargets:[Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/TouchAnimator;->mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    .line 6
    iput p3, p0, Lcom/android/systemui/qs/TouchAnimator;->mStartDelay:F

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    sub-float/2addr p1, p3

    .line 7
    iput p1, p0, Lcom/android/systemui/qs/TouchAnimator;->mSpan:F

    .line 8
    iput-object p5, p0, Lcom/android/systemui/qs/TouchAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9
    iput-object p6, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/qs/TouchAnimator;-><init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;)V

    return-void
.end method


# virtual methods
.method public final setPosition(F)V
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mStartDelay:F

    .line 9
    .line 10
    sub-float/2addr p1, v0

    .line 11
    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mSpan:F

    .line 12
    .line 13
    div-float/2addr p1, v0

    .line 14
    const/4 v0, 0x0

    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    .line 30
    .line 31
    cmpl-float v3, p1, v2

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 37
    .line 38
    if-eqz v3, :cond_7

    .line 39
    .line 40
    cmpl-float v4, p1, v1

    .line 41
    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    invoke-interface {v3}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationAtEnd()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    cmpl-float v4, p1, v0

    .line 49
    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    invoke-interface {v3}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationAtStart()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    cmpg-float v0, v2, v0

    .line 57
    .line 58
    if-lez v0, :cond_5

    .line 59
    .line 60
    cmpl-float v0, v2, v1

    .line 61
    .line 62
    if-nez v0, :cond_6

    .line 63
    .line 64
    :cond_5
    invoke-interface {v3}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationStarted()V

    .line 65
    .line 66
    .line 67
    :cond_6
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    .line 68
    .line 69
    :cond_7
    const/4 v0, 0x0

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/TouchAnimator;->mTargets:[Ljava/lang/Object;

    .line 71
    .line 72
    array-length v2, v1

    .line 73
    if-ge v0, v2, :cond_8

    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    .line 76
    .line 77
    aget-object v2, v2, v0

    .line 78
    .line 79
    aget-object v1, v1, v0

    .line 80
    .line 81
    iget v3, v2, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    .line 82
    .line 83
    div-float v4, p1, v3

    .line 84
    .line 85
    float-to-double v4, v4

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    double-to-int v4, v4

    .line 91
    iget v5, v2, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mSize:I

    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    sub-int/2addr v5, v6

    .line 95
    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(III)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    add-int/lit8 v5, v4, -0x1

    .line 100
    .line 101
    int-to-float v5, v5

    .line 102
    mul-float/2addr v5, v3

    .line 103
    sub-float v5, p1, v5

    .line 104
    .line 105
    div-float/2addr v5, v3

    .line 106
    invoke-virtual {v2, v4, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->interpolate(IFLjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_8
    return-void
.end method
