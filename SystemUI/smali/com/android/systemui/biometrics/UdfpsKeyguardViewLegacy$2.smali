.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFullyInflated:Z

    .line 5
    .line 6
    const v2, 0x7f0a0c67

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 14
    .line 15
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 16
    .line 17
    const v2, 0x7f0a0c6c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 25
    .line 26
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 27
    .line 28
    const v2, 0x7f0a0c6b

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updatePadding()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateColor()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateAlpha()I

    .line 46
    .line 47
    .line 48
    iget-boolean v2, v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUseExpandedOverlay:Z

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .line 58
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 65
    .line 66
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 73
    .line 74
    new-instance v3, Landroid/graphics/RectF;

    .line 75
    .line 76
    iget-object v4, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    new-instance v5, Landroid/graphics/RectF;

    .line 86
    .line 87
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    aget v7, v4, v7

    .line 91
    .line 92
    int-to-float v7, v7

    .line 93
    sub-float/2addr v6, v7

    .line 94
    iget v8, v3, Landroid/graphics/RectF;->top:F

    .line 95
    .line 96
    aget v1, v4, v1

    .line 97
    .line 98
    int-to-float v1, v1

    .line 99
    sub-float/2addr v8, v1

    .line 100
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 101
    .line 102
    sub-float/2addr v4, v7

    .line 103
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 104
    .line 105
    sub-float/2addr v3, v1

    .line 106
    invoke-direct {v5, v6, v8, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 107
    .line 108
    .line 109
    iget v1, v5, Landroid/graphics/RectF;->left:F

    .line 110
    .line 111
    float-to-int v1, v1

    .line 112
    iget v3, v5, Landroid/graphics/RectF;->top:F

    .line 113
    .line 114
    float-to-int v3, v3

    .line 115
    iget v4, v5, Landroid/graphics/RectF;->right:F

    .line 116
    .line 117
    float-to-int v4, v4

    .line 118
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 119
    .line 120
    float-to-int v5, v5

    .line 121
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    iget-object p1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 132
    .line 133
    new-instance p2, Lcom/airbnb/lottie/model/KeyPath;

    .line 134
    .line 135
    const-string v0, "**"

    .line 136
    .line 137
    filled-new-array {v0}, [Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-direct {p2, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 145
    .line 146
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
