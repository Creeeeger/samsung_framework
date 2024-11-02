.class public final Lcom/android/systemui/settings/brightness/BrightnessController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;


# static fields
.field public static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public static final HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

.field public static final SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

.field public static final SYSTEM_BRIGHTNESS_ENABLED_URI:Landroid/net/Uri;

.field public static final USING_HIGH_BRIGHTNESS_DIALOG_URI:Landroid/net/Uri;

.field public static mIsHighBrightnessMode:Z


# instance fields
.field public volatile mAutomatic:Z

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public mBrightness:F

.field public mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

.field public final mBrightnessListener:Lcom/android/systemui/settings/brightness/BrightnessController$1;

.field public final mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

.field public final mChangeCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

.field public mControlValueInitialized:Z

.field public final mDetailTag:Ljava/lang/String;

.field public final mDisplayId:I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public mExternalChange:Z

.field public final mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

.field public final mHighBrightnessModeEnterRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$14;

.field public volatile mIsVrModeEnabled:Z

.field public mListening:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMaximumBacklight:F

.field public final mMinimumBacklight:F

.field public final mOutdoorModeRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$15;

.field public mSliderAnimationDuration:I

.field public mSliderAnimator:Landroid/animation/ValueAnimator;

.field public final mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

.field public final mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$3;

.field public final mSystemBrightnessEnabledRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$13;

.field public final mUpdateModeRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$4;

.field public final mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$5;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mUsingHighBrightnessDialogRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$12;

.field public final mVrManager:Landroid/service/vr/IVrManager;

.field public final mVrStateCallbacks:Lcom/android/systemui/settings/brightness/BrightnessController$6;


# direct methods
.method public static -$$Nest$mupdateSlider(Lcom/android/systemui/settings/brightness/BrightnessController;F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, -0x1

    .line 23
    const/4 v2, -0x2

    .line 24
    const-string v3, "auto_brightness_transition_time"

    .line 25
    .line 26
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimationDuration:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDetailTag:Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "CentralSurfaces.BrightnessController"

    .line 36
    .line 37
    if-eq v1, v0, :cond_2

    .line 38
    .line 39
    if-gez v0, :cond_1

    .line 40
    .line 41
    move v0, v2

    .line 42
    :cond_1
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimationDuration:I

    .line 43
    .line 44
    invoke-static {v4, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v5, "updateSliderAnimationDuration() : "

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v5, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimationDuration:I

    .line 57
    .line 58
    invoke-static {v1, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    const-string/jumbo v0, "updateSlider() - BrightnessDialog resetTimer()"

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    .line 72
    .line 73
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 92
    .line 93
    .line 94
    :cond_5
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklight:F

    .line 95
    .line 96
    mul-float/2addr v0, p1

    .line 97
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklight:F

    .line 98
    .line 99
    sub-float/2addr v0, v1

    .line 100
    float-to-int v0, v0

    .line 101
    invoke-static {v4, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string/jumbo v5, "updateSlider() = "

    .line 108
    .line 109
    .line 110
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v5, ", brightnessValue = "

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, ", min = "

    .line 125
    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-static {v4, v1, v3}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 133
    .line 134
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_6
    invoke-interface {v1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    .line 140
    .line 141
    .line 142
    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 144
    .line 145
    :goto_0
    invoke-interface {v1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    filled-new-array {p1, v0}, [I

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 158
    .line 159
    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 168
    .line 169
    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessController$11;

    .line 170
    .line 171
    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$11;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    sub-int/2addr p1, v0

    .line 182
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    mul-int/2addr p1, v2

    .line 187
    const v0, 0xffff

    .line 188
    .line 189
    .line 190
    div-int/2addr p1, v0

    .line 191
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 192
    .line 193
    invoke-interface {v1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getTag()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v1, "brightness_dialog"

    .line 198
    .line 199
    if-eq v0, v1, :cond_7

    .line 200
    .line 201
    iget v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimationDuration:I

    .line 202
    .line 203
    :cond_7
    int-to-long v0, v2

    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "shown_max_brightness_dialog"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->USING_HIGH_BRIGHTNESS_DIALOG_URI:Landroid/net/Uri;

    .line 9
    .line 10
    const-string/jumbo v0, "pms_notification_panel_brightness_adjustment"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->SYSTEM_BRIGHTNESS_ENABLED_URI:Landroid/net/Uri;

    .line 18
    .line 19
    const-string/jumbo v0, "screen_brightness_mode"

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 27
    .line 28
    const-string v0, "high_brightness_mode_pms_enter"

    .line 29
    .line 30
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    .line 35
    .line 36
    const-string v0, "display_outdoor_mode"

    .line 37
    .line 38
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDetailTag:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimationDuration:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessListener:Lcom/android/systemui/settings/brightness/BrightnessController$1;

    .line 24
    .line 25
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 31
    .line 32
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$3;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$3;

    .line 38
    .line 39
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$4;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$4;

    .line 45
    .line 46
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$5;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$5;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$5;

    .line 52
    .line 53
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$6;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$6;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Lcom/android/systemui/settings/brightness/BrightnessController$6;

    .line 59
    .line 60
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$7;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 66
    .line 67
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$8;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$8;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 73
    .line 74
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$12;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$12;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUsingHighBrightnessDialogRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$12;

    .line 80
    .line 81
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$13;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$13;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSystemBrightnessEnabledRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$13;

    .line 87
    .line 88
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$14;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$14;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHighBrightnessModeEnterRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$14;

    .line 94
    .line 95
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$15;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$15;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mOutdoorModeRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$15;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 105
    .line 106
    iput-object p5, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 107
    .line 108
    iput-object p6, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 109
    .line 110
    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 111
    .line 112
    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 113
    .line 114
    new-instance p3, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    .line 115
    .line 116
    invoke-direct {p3, p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;Landroid/os/Handler;)V

    .line 117
    .line 118
    .line 119
    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    .line 126
    .line 127
    const-class p3, Landroid/os/PowerManager;

    .line 128
    .line 129
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    check-cast p3, Landroid/os/PowerManager;

    .line 134
    .line 135
    const-class p4, Landroid/hardware/display/DisplayManager;

    .line 136
    .line 137
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 142
    .line 143
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 144
    .line 145
    const-string/jumbo p1, "vrmanager"

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 157
    .line 158
    invoke-virtual {p3}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    int-to-float p1, p1

    .line 163
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklight:F

    .line 164
    .line 165
    invoke-virtual {p3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    int-to-float p3, p3

    .line 170
    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklight:F

    .line 171
    .line 172
    sub-float/2addr p3, p1

    .line 173
    float-to-int p0, p3

    .line 174
    invoke-interface {p2, p0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    .line 175
    .line 176
    .line 177
    return-void
.end method


# virtual methods
.method public final checkRestrictionAndSetEnabled()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$10;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$10;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onChanged(IZZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const-string v1, "CentralSurfaces.BrightnessController"

    .line 8
    .line 9
    if-nez p2, :cond_3

    .line 10
    .line 11
    sget-boolean v2, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsHighBrightnessMode:Z

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const-string p0, "info is null "

    .line 28
    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v4, "info.brightness: "

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v4, v2, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 41
    .line 42
    invoke-static {v3, v4, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v2, v2, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 46
    .line 47
    iput v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightness:F

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$5;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-gtz v3, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p0, 0x0

    .line 66
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    .line 82
    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    const/16 v2, 0xdb

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    const/16 v2, 0xda

    .line 89
    .line 90
    :goto_1
    iget v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklight:F

    .line 91
    .line 92
    iget v4, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklight:F

    .line 93
    .line 94
    int-to-float p1, p1

    .line 95
    add-float/2addr p1, v3

    .line 96
    div-float/2addr p1, v4

    .line 97
    if-eqz p3, :cond_6

    .line 98
    .line 99
    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-static {p3, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 106
    .line 107
    .line 108
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDetailTag:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "onChanged() = "

    .line 125
    .line 126
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 140
    .line 141
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    .line 142
    .line 143
    invoke-virtual {p3, v1, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    .line 144
    .line 145
    .line 146
    if-nez p2, :cond_7

    .line 147
    .line 148
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessController$9;

    .line 149
    .line 150
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController$9;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;F)V

    .line 151
    .line 152
    .line 153
    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_8

    .line 167
    .line 168
    return-void

    .line 169
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    throw v0
.end method
