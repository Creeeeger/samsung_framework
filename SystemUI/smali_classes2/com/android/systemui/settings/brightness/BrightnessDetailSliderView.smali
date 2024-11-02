.class public Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider;


# static fields
.field public static mUsingHighBrightnessDialogEnabled:Z


# instance fields
.field public mBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

.field public final mContext:Landroid/content/Context;

.field public mDualSeekBarThreshold:I

.field public mHighBrightnessModeEnter:Z

.field public mHighBrightnessModeToast:Landroid/widget/Toast;

.field public mIsSliderWarning:Z

.field public mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

.field public mOutdoorMode:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

.field public mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field public mSliderDisableToast:Landroid/widget/Toast;

.field public mSliderEnabled:Z

.field public mSystemBrightnessEnabled:Z

.field public mTracking:Z

.field public mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public static -$$Nest$misAutoChecked(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "screen_brightness_mode"

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, -0x2

    .line 12
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    :cond_0
    return v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    .line 8
    .line 9
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-class p2, Landroid/os/PowerManager;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/os/PowerManager;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mPowerManager:Landroid/os/PowerManager;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final initBrightnessIconResources()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->initBrightnessIconResources(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final mirrorTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    .line 5
    .line 6
    const v1, 0x7f0a01aa

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    .line 19
    .line 20
    const v0, 0x7f0a0315

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const v1, 0x7f130f0d

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string/jumbo v1, "pms_notification_panel_brightness_adjustment"

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    const/4 v4, -0x2

    .line 68
    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    move v0, v3

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move v0, v2

    .line 77
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateSystemBrightnessEnabled(Z)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string/jumbo v1, "shown_max_brightness_dialog"

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    .line 95
    move v0, v3

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move v0, v2

    .line 98
    :goto_1
    sput-boolean v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialogEnabled:Z

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "high_brightness_mode_pms_enter"

    .line 107
    .line 108
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    move v0, v3

    .line 115
    goto :goto_2

    .line 116
    :cond_2
    move v0, v2

    .line 117
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateHighBrightnessModeEnter(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "display_outdoor_mode"

    .line 127
    .line 128
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    move v3, v2

    .line 136
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateOutdoorMode(Z)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 140
    .line 141
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;

    .line 142
    .line 143
    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->setDualSeekBarResources(Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->initBrightnessIconResources()V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final setDualSeekBarResources(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mIsSliderWarning:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mIsSliderWarning:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const p1, 0x7f080f00

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const p1, 0x7f080efd

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->getValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->playBrightnessIconAnimation(II)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mOutdoorMode:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 18
    .line 19
    return-void
.end method

.method public final setMax(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f0b00e1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-double v0, v0

    .line 26
    int-to-double v2, p1

    .line 27
    mul-double/2addr v0, v2

    .line 28
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 29
    .line 30
    div-double/2addr v0, v2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    double-to-int p1, v0

    .line 36
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mDualSeekBarThreshold:I

    .line 37
    .line 38
    return-void
.end method

.method public final setOnChangedListener(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    .line 2
    .line 3
    return-void
.end method

.method public final setValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->playBrightnessIconAnimation(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final updateDualSeekBar()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateHighBrightnessModeEnter(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "updateHighBrightnessModeEnter : "

    .line 2
    .line 3
    .line 4
    const-string v1, "BrightnessDetailSlider"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeEnter:Z

    .line 10
    .line 11
    return-void
.end method

.method public final updateOutdoorMode(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mOutdoorMode:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr p1, v1

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "updateSliderEnabled() = "

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", mSystemBrightnessEnabled = "

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    .line 27
    .line 28
    const-string v3, "BrightnessDetailSlider"

    .line 29
    .line 30
    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    .line 42
    .line 43
    if-eq p1, v1, :cond_2

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public final updateSystemBrightnessEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    .line 4
    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final updateUsingHighBrightnessDialog(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialogEnabled:Z

    .line 2
    .line 3
    return-void
.end method
