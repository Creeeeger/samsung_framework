.class public Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsNightMode:Z

.field public mIsTaskFocused:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    const v1, 0x10302e3

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mIsTaskFocused:Z

    .line 14
    .line 15
    new-instance p2, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const p2, 0x7f070271

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const v0, 0x7f070dae

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const v1, 0x7f070dad

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    sub-int/2addr v0, p1

    .line 50
    div-int/lit8 v0, v0, 0x2

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    sub-int p1, p2, p1

    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const v2, 0x7f080f17

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v7, v1

    .line 72
    check-cast v7, Landroid/graphics/drawable/RippleDrawable;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    sub-int v4, v0, p1

    .line 76
    .line 77
    move-object v1, v7

    .line 78
    move v3, v0

    .line 79
    move v5, v0

    .line 80
    move v6, v0

    .line 81
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v3, 0x0

    .line 93
    if-ge v1, v2, :cond_0

    .line 94
    .line 95
    add-int/2addr p1, v0

    .line 96
    invoke-virtual {v7, v3, p1}, Landroid/graphics/drawable/RippleDrawable;->setLayerInsetBottom(II)V

    .line 97
    .line 98
    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-le p1, p2, :cond_1

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    sub-int/2addr p1, p2

    .line 110
    add-int/2addr p1, v0

    .line 111
    invoke-virtual {v7, v3, p1}, Landroid/graphics/drawable/RippleDrawable;->setLayerInsetStart(II)V

    .line 112
    .line 113
    .line 114
    :cond_1
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->applyIconColor()V

    .line 118
    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public final applyIconColor()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v2, 0x1060384

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mIsNightMode:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const v2, 0x7f060570

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const v2, 0x7f060571

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mIsTaskFocused:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0xff

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v1, 0x9a

    .line 49
    .line 50
    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    .line 55
    .line 56
    const-string v2, "**"

    .line 57
    .line 58
    filled-new-array {v2}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 66
    .line 67
    new-instance v3, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$1;

    .line 68
    .line 69
    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$1;-><init>(Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;Landroid/content/res/ColorStateList;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final createLottieTask(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "createLottieTask: asset="

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "WindowMenuAnimationView"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;Ljava/lang/String;Lcom/airbnb/lottie/LottieTask;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final updateNightMode(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mIsNightMode:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mIsNightMode:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    new-instance p1, Landroid/content/res/Configuration;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mIsNightMode:Z

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const/16 v0, 0x20

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v0, 0x10

    .line 46
    .line 47
    :goto_0
    and-int/lit8 v0, v0, 0x30

    .line 48
    .line 49
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 50
    .line 51
    and-int/lit8 v1, v1, -0x31

    .line 52
    .line 53
    or-int/2addr v0, v1

    .line 54
    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->applyIconColor()V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method
