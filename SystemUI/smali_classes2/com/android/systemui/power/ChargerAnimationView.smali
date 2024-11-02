.class public Lcom/android/systemui/power/ChargerAnimationView;
.super Landroid/widget/RelativeLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

.field public mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

.field public mAnimationPlaying:Z

.field public mBackGroundView:Landroid/widget/LinearLayout;

.field public mBatteryLevelTextView:Landroid/widget/TextView;

.field public mBatteryTextContainer:Landroid/widget/LinearLayout;

.field public mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mChargerContainer:Landroid/widget/RelativeLayout;

.field public mChargingIconView:Landroid/widget/ImageView;

.field public mCircleBackgroundView:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBatteryLevel:I

.field public mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public final mDisplayStateLock:Landroid/os/IBinder;

.field public mDozeChargingPartialWakelock:Landroid/os/PowerManager$WakeLock;

.field public mFadeInAnimation:Landroid/animation/ObjectAnimator;

.field public mIsSubscreenOff:Z

.field public mNeedFullScreenBlur:Z

.field public mPercentTextView:Landroid/widget/TextView;

.field public mPercentTextViewRtl:Landroid/widget/TextView;

.field public mPluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public mStartedInDoze:Z

.field public mSuperFastChargingType:I

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public static -$$Nest$mreleaseDisplayStateLimit(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 3

    .line 1
    const-string v0, "PowerUI.ChargerAnimationView"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "display"

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 18
    .line 19
    :cond_0
    :try_start_0
    const-string/jumbo v1, "setDisplayStateLimit(Display.STATE_UNKNOWN)"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayStateLock:Landroid/os/IBinder;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-interface {v1, v0, v2}, Landroid/hardware/display/IDisplayManager;->setDisplayStateLimit(Landroid/os/IBinder;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p0, "mDisplayManager is null. Error case"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 7
    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 8
    new-instance p3, Landroid/os/Binder;

    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayStateLock:Landroid/os/IBinder;

    .line 9
    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsSubscreenOff:Z

    .line 10
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mToken:Landroid/os/IBinder;

    .line 11
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "power"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a011f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const v0, 0x7f0a024d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextContainer:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    const v0, 0x7f0a024b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 36
    .line 37
    const v0, 0x7f0a024a

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerContainer:Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    const v0, 0x7f0a0148

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 58
    .line 59
    const v0, 0x7f0a0149

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    .line 69
    .line 70
    const v0, 0x7f0a014a

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    .line 80
    .line 81
    const v0, 0x7f0a024e

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    .line 91
    .line 92
    const v0, 0x7f0a0249

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/ImageView;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    .line 102
    .line 103
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 104
    .line 105
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelText()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final setBatteryLevelText()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f070185

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 15
    .line 16
    const v2, 0x7f07017f

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(ILandroid/widget/TextView;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 23
    .line 24
    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const v4, 0x7f1310ac

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "%"

    .line 44
    .line 45
    const-string v4, ""

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v5, " "

    .line 52
    .line 53
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextContainer:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v4, "iw"

    .line 77
    .line 78
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/4 v5, 0x0

    .line 83
    if-nez v4, :cond_1

    .line 84
    .line 85
    const-string/jumbo v4, "ur"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_1

    .line 93
    .line 94
    const-string/jumbo v4, "tr"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_1

    .line 102
    .line 103
    const-string v4, "eu"

    .line 104
    .line 105
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_0

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    move v2, v5

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 115
    :goto_1
    const/16 v4, 0x8

    .line 116
    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextContainer:Landroid/widget/LinearLayout;

    .line 157
    .line 158
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
