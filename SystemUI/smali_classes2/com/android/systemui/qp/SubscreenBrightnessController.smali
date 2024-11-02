.class public final Lcom/android/systemui/qp/SubscreenBrightnessController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

.field public static mControlValueInitialized:Z = false

.field public static mExternalChange:Z = false

.field public static mIsHighBrightnessMode:Z = false

.field public static mTracking:Z

.field public static mUsingHighBrightnessDialogEnabled:Z


# instance fields
.field public BRIGHTNESS_DIALOG_TAG:Ljava/lang/String;

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public mBrightness:F

.field public mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

.field public mBrightnessMax:F

.field public mBrightnessMin:F

.field public final mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

.field public final mContext:Landroid/content/Context;

.field public mDetailActivity:Z

.field public mDisplay:Landroid/view/Display;

.field public mDisplayId:I

.field public final mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

.field public mListening:Z

.field public final mMaximumBacklight:F

.field public final mMinimumBacklight:F

.field public final mSeekListener:Lcom/android/systemui/qp/SubscreenBrightnessController$4;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSliderAnimationDuration:I

.field public mSliderAnimator:Landroid/animation/ValueAnimator;

.field public final mStartListeningRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$7;

.field public final mStopListeningRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$8;

.field public final mUpdateSliderRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$2;

.field public mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;


# direct methods
.method public static -$$Nest$mupdateSlider(Lcom/android/systemui/qp/SubscreenBrightnessController;F)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mMinimumBacklight="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMinimumBacklight:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, " mMaximumBacklight="

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMaximumBacklight:F

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, " mBrightnessMin="

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessMin:F

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " mBrightnessMax="

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessMax:F

    .line 39
    .line 40
    const-string v4, "SubscreenBrightnessController"

    .line 41
    .line 42
    invoke-static {v0, v3, v4}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 48
    .line 49
    const-string v3, "auto_brightness_transition_time"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const-string v3, "animation duration: "

    .line 60
    .line 61
    invoke-static {v3, v0, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimationDuration:I

    .line 65
    .line 66
    if-eq v3, v0, :cond_1

    .line 67
    .line 68
    if-gez v0, :cond_0

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    :cond_0
    iput v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimationDuration:I

    .line 72
    .line 73
    :cond_1
    mul-float v0, p1, v2

    .line 74
    .line 75
    sub-float/2addr v0, v1

    .line 76
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string/jumbo v5, "updateSlider() = "

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v5, ", brightnessValue = "

    .line 92
    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, ", min = "

    .line 100
    .line 101
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " max = "

    .line 108
    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 123
    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    .line 127
    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    const-string/jumbo p1, "updateSlider() - BrightnessDialog resetTimer()"

    .line 131
    .line 132
    .line 133
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    .line 137
    .line 138
    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 139
    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 143
    .line 144
    .line 145
    :cond_2
    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 146
    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 150
    .line 151
    .line 152
    :cond_3
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 153
    .line 154
    if-eqz p1, :cond_4

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 157
    .line 158
    .line 159
    :cond_4
    sget-boolean p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mControlValueInitialized:Z

    .line 160
    .line 161
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 162
    .line 163
    if-eqz p1, :cond_8

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_5

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 173
    .line 174
    if-eqz p1, :cond_6

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_6

    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 185
    .line 186
    .line 187
    :cond_6
    iget-object p1, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    filled-new-array {p1, v0}, [I

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 202
    .line 203
    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda0;

    .line 204
    .line 205
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 212
    .line 213
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->BRIGHTNESS_DIALOG_TAG:Ljava/lang/String;

    .line 214
    .line 215
    const-string v1, "brightness_dialog_subscreen"

    .line 216
    .line 217
    if-eq v0, v1, :cond_7

    .line 218
    .line 219
    iget v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimationDuration:I

    .line 220
    .line 221
    int-to-long v0, v0

    .line 222
    goto :goto_0

    .line 223
    :cond_7
    const-wide/16 v0, 0x0

    .line 224
    .line 225
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 226
    .line 227
    .line 228
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_8
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setProgress(I)V

    .line 235
    .line 236
    .line 237
    const/4 p0, 0x1

    .line 238
    sput-boolean p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mControlValueInitialized:Z

    .line 239
    .line 240
    :goto_2
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "high_brightness_mode_pms_enter"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/qp/SubroomBrightnessSettingsView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessMin:F

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    iput v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessMax:F

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimationDuration:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->BRIGHTNESS_DIALOG_TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$1;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    .line 23
    .line 24
    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController$2;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$2;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$2;

    .line 30
    .line 31
    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$3;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    .line 37
    .line 38
    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessController$4;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$4;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSeekListener:Lcom/android/systemui/qp/SubscreenBrightnessController$4;

    .line 44
    .line 45
    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessController$7;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$7;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mStartListeningRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$7;

    .line 51
    .line 52
    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessController$8;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$8;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mStopListeningRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$8;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    const-class p2, Landroid/hardware/display/DisplayManager;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 70
    .line 71
    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 72
    .line 73
    sget-object p2, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 74
    .line 75
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Landroid/os/Handler;

    .line 80
    .line 81
    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 82
    .line 83
    const-class p2, Landroid/os/PowerManager;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/os/PowerManager;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    int-to-float p2, p2

    .line 96
    iput p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMinimumBacklight:F

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    int-to-float p1, p1

    .line 103
    iput p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMaximumBacklight:F

    .line 104
    .line 105
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 112
    .line 113
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 114
    .line 115
    new-instance p1, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    .line 116
    .line 117
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;Landroid/os/Handler;)V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    .line 121
    .line 122
    return-void
.end method


# virtual methods
.method public final onChanged(IZZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onChanged: mExternalChange="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    .line 9
    .line 10
    const-string v2, " stopTracking="

    .line 11
    .line 12
    const-string v3, "SubscreenBrightnessController"

    .line 13
    .line 14
    invoke-static {v0, v1, v2, p3, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-boolean p3, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string/jumbo p3, "tracking : "

    .line 23
    .line 24
    .line 25
    const-string v0, "mIsHighBrightnessMode : "

    .line 26
    .line 27
    invoke-static {p3, p2, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    sget-boolean v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mIsHighBrightnessMode:Z

    .line 32
    .line 33
    invoke-static {p3, v0, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-nez p2, :cond_2

    .line 37
    .line 38
    sget-boolean p3, Lcom/android/systemui/qp/SubscreenBrightnessController;->mIsHighBrightnessMode:Z

    .line 39
    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 43
    .line 44
    iget-object p3, p3, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 45
    .line 46
    const-string/jumbo v0, "sub_screen_brightness_mode"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_2

    .line 58
    .line 59
    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    if-nez p3, :cond_1

    .line 66
    .line 67
    const-string p0, "TAG"

    .line 68
    .line 69
    const-string p1, "info.brightness: null aaa "

    .line 70
    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    iget p3, p3, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 76
    .line 77
    iput p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightness:F

    .line 78
    .line 79
    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$2;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 82
    .line 83
    invoke-virtual {v0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 87
    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 91
    .line 92
    .line 93
    :cond_3
    int-to-float p1, p1

    .line 94
    iget p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMinimumBacklight:F

    .line 95
    .line 96
    add-float/2addr p1, p3

    .line 97
    iget p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMaximumBacklight:F

    .line 98
    .line 99
    div-float/2addr p1, p3

    .line 100
    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 101
    .line 102
    iget v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayId:I

    .line 103
    .line 104
    invoke-virtual {p3, v0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    .line 105
    .line 106
    .line 107
    if-nez p2, :cond_4

    .line 108
    .line 109
    new-instance p2, Lcom/android/systemui/qp/SubscreenBrightnessController$5;

    .line 110
    .line 111
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qp/SubscreenBrightnessController$5;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;F)V

    .line 112
    .line 113
    .line 114
    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    return-void
.end method

.method public final onViewAttached()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSeekListener:Lcom/android/systemui/qp/SubscreenBrightnessController$4;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 8
    .line 9
    .line 10
    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/systemui/qp/util/SubscreenUtil;->getSubDisplay(Landroid/content/Context;)Landroid/view/Display;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "mDisplay = :"

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "SubscreenBrightnessController"

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayId:I

    .line 59
    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 61
    .line 62
    iget-object v3, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 63
    .line 64
    const-string/jumbo v4, "sub_screen_brightness"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const-string/jumbo v5, "setBrightness - brightness "

    .line 76
    .line 77
    .line 78
    invoke-static {v5, v3, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v1, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const/4 v5, -0x2

    .line 88
    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setProgress(I)V

    .line 92
    .line 93
    .line 94
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 100
    .line 101
    const-string/jumbo v3, "shown_max_brightness_dialog"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_1

    .line 113
    .line 114
    const/4 v1, 0x1

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    move v1, v2

    .line 117
    :goto_0
    sput-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialogEnabled:Z

    .line 118
    .line 119
    const-wide/16 v3, 0x8

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 122
    .line 123
    iget-object v5, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    .line 124
    .line 125
    iget-object v6, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    .line 126
    .line 127
    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 128
    .line 129
    .line 130
    :cond_2
    if-eqz v0, :cond_3

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    .line 140
    .line 141
    sget-object v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    .line 142
    .line 143
    const/4 v3, -0x1

    .line 144
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 145
    .line 146
    .line 147
    :cond_3
    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final updateHighBrightnessModeEnter(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "updateHighBrightnessModeEnter : "

    .line 2
    .line 3
    .line 4
    const-string v1, ", slider is "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "SubscreenBrightnessController"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sput-boolean p1, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeEnter:Z

    .line 34
    .line 35
    :cond_0
    return-void
.end method
