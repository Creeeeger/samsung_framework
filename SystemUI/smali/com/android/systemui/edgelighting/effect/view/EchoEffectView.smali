.class public Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;
.super Landroid/widget/RelativeLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final ALPHA:[F

.field public final ALPHA_IN_DURATION:[I

.field public final ALPHA_OUT_DELAY:[I

.field public final LINE_HEIGHT:[F

.field public final mAnimList:Ljava/util/ArrayList;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

.field public final mLeftLine:Ljava/util/ArrayList;

.field public final mRightLine:Ljava/util/ArrayList;

.field public mScreenHeight:I

.field public mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 6
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    const/16 v0, 0x190

    const/16 v1, 0x12c

    .line 7
    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    const/16 v0, 0x320

    const/16 v1, 0x384

    .line 8
    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    new-array p1, p1, [F

    .line 9
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    .line 10
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f2b851f    # 0.67f
        0x3f051eb8    # 0.52f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    const/4 p1, 0x3

    new-array p2, p1, [F

    .line 16
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    const/16 p2, 0x190

    const/16 v0, 0x12c

    .line 17
    filled-new-array {p2, v0, v0}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    const/16 p2, 0x320

    const/16 v0, 0x384

    .line 18
    filled-new-array {p2, v0, v0}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    new-array p1, p1, [F

    .line 19
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    .line 20
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f2b851f    # 0.67f
        0x3f051eb8    # 0.52f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    const/4 p1, 0x3

    new-array p2, p1, [F

    .line 26
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    const/16 p2, 0x190

    const/16 p3, 0x12c

    .line 27
    filled-new-array {p2, p3, p3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    const/16 p2, 0x320

    const/16 p3, 0x384

    .line 28
    filled-new-array {p2, p3, p3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    new-array p1, p1, [F

    .line 29
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    .line 30
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f2b851f    # 0.67f
        0x3f051eb8    # 0.52f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    const/4 p1, 0x3

    new-array p2, p1, [F

    .line 36
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    const/16 p2, 0x190

    const/16 p3, 0x12c

    .line 37
    filled-new-array {p2, p3, p3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    const/16 p2, 0x320

    const/16 p3, 0x384

    .line 38
    filled-new-array {p2, p3, p3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    new-array p1, p1, [F

    .line 39
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    .line 40
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f2b851f    # 0.67f
        0x3f051eb8    # 0.52f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public static makeGradientBg(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 4
    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/16 v5, 0x1e

    .line 18
    .line 19
    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-static {v5, v3, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    filled-new-array {v2, p0, v3}, [I

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 44
    .line 45
    .line 46
    const/high16 p0, 0x42b40000    # 90.0f

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method


# virtual methods
.method public final getAnim(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 13

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    mul-int/lit16 v1, p2, 0x12c

    .line 7
    .line 8
    int-to-long v1, v1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    const/4 v3, 0x2

    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    .line 17
    new-array v4, v3, [F

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    aput v5, v4, v1

    .line 21
    .line 22
    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    .line 23
    .line 24
    aget v5, v5, p2

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    aput v5, v4, v6

    .line 28
    .line 29
    const-string v5, "alpha"

    .line 30
    .line 31
    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    mul-int/lit16 v7, v2, 0x578

    .line 36
    .line 37
    int-to-long v8, v7

    .line 38
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 39
    .line 40
    .line 41
    iget-object v10, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    .line 42
    .line 43
    aget v10, v10, p2

    .line 44
    .line 45
    int-to-long v10, v10

    .line 46
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    .line 48
    .line 49
    const v10, 0x3e2e147b    # 0.17f

    .line 50
    .line 51
    .line 52
    const v11, 0x3f547ae1    # 0.83f

    .line 53
    .line 54
    .line 55
    invoke-static {v10, v10, v11, v11, v4}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 56
    .line 57
    .line 58
    new-array v3, v3, [F

    .line 59
    .line 60
    iget-object v12, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    .line 61
    .line 62
    aget v12, v12, p2

    .line 63
    .line 64
    aput v12, v3, v1

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    aput v12, v3, v6

    .line 68
    .line 69
    invoke-static {p1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-wide/16 v5, 0x190

    .line 74
    .line 75
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    .line 77
    .line 78
    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    .line 79
    .line 80
    aget v5, v5, p2

    .line 81
    .line 82
    add-int/2addr v7, v5

    .line 83
    int-to-long v5, v7

    .line 84
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 85
    .line 86
    .line 87
    invoke-static {v10, v10, v11, v11, v3}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 88
    .line 89
    .line 90
    const/4 v5, 0x2

    .line 91
    new-array v5, v5, [F

    .line 92
    .line 93
    fill-array-data v5, :array_0

    .line 94
    .line 95
    .line 96
    const-string/jumbo v6, "scaleY"

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 104
    .line 105
    .line 106
    const-wide/16 v6, 0x1f4

    .line 107
    .line 108
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    .line 110
    .line 111
    invoke-static {v10, v10, v11, v11, v5}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 112
    .line 113
    .line 114
    filled-new-array {v4, v3, v5}, [Landroid/animation/Animator;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    return-object v0

    .line 125
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    const/4 v1, 0x3

    .line 24
    if-ge v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->getAnim(Landroid/view/View;I)Landroid/animation/Animator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->getAnim(Landroid/view/View;I)Landroid/animation/Animator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 80
    .line 81
    .line 82
    return-void
.end method
