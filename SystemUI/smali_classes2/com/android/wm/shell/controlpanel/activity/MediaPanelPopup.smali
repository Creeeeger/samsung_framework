.class public final Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;
.super Lcom/android/wm/shell/controlpanel/activity/FloatingUI;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mIsNext:Z

.field public mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mSeekTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mIsNext:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final connectUIObject()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mIsNext:Z

    .line 2
    .line 3
    const v1, 0x7f0a05ec

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const v0, 0x7f0d01f0

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 27
    .line 28
    const-string v1, "flex_panel_seek_media_popup_forward.json"

    .line 29
    .line 30
    invoke-static {v3, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    invoke-direct {v2, p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda2;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda2;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const v0, 0x7f0d01f1

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 67
    .line 68
    const-string v1, "flex_panel_seek_media_popup_rewind.json"

    .line 69
    .line 70
    invoke-static {v3, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;

    .line 75
    .line 76
    invoke-direct {v2, p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda2;

    .line 83
    .line 84
    invoke-direct {v0}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda2;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 91
    .line 92
    const/4 v1, -0x1

    .line 93
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 97
    .line 98
    const v1, 0x7f0a09be

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/widget/TextView;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mSeekTextView:Landroid/widget/TextView;

    .line 108
    .line 109
    return-void
.end method

.method public final fadeInAnimation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f010295

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;Landroid/view/animation/Animation;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v3, 0xc8

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setAppendLayoutParams()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 11
    .line 12
    const/16 v1, 0x7d2

    .line 13
    .line 14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Point;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 22
    .line 23
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const v4, 0x7f07083d

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    const/4 v3, -0x2

    .line 50
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 73
    .line 74
    sub-int/2addr v0, v1

    .line 75
    div-int/lit8 v0, v0, 0x2

    .line 76
    .line 77
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 78
    .line 79
    div-int/lit8 v1, v1, 0x2

    .line 80
    .line 81
    sub-int/2addr v0, v1

    .line 82
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 83
    .line 84
    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 91
    .line 92
    const/16 v1, 0xc8

    .line 93
    .line 94
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 98
    .line 99
    const/16 v1, 0x64

    .line 100
    .line 101
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 102
    .line 103
    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mIsNext:Z

    .line 104
    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 108
    .line 109
    const/16 v0, 0x35

    .line 110
    .line 111
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 115
    .line 116
    const/16 v0, 0x33

    .line 117
    .line 118
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 119
    .line 120
    :goto_1
    return-void
.end method
