.class public Lcom/android/systemui/settings/brightness/BrightnessSliderView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBrightnessDetailContainerView:Landroid/widget/RelativeLayout;

.field public mBrightnessDetailView:Landroid/widget/ImageView;

.field public mBrightnessTileLayoutView:Landroid/widget/LinearLayout;

.field public final mContext:Landroid/content/Context;

.field public final mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

.field public mDualSeekBarThreshold:I

.field public mIsCollapsed:Z

.field public mIsMirror:Z

.field public mIsSliderWarning:Z

.field public mIsTouchSlider:Z

.field public mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;

.field public mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

.field public mOrientation:I

.field public mScale:F

.field public mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field public mToggleDetailListener:Lcom/android/systemui/qs/bar/BrightnessBar;

.field public mTouchDownDetailView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    iput p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsTouchSlider:Z

    .line 5
    new-instance p2, Lcom/android/systemui/qs/SecDarkModeEasel;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;)V

    invoke-direct {p2, v0}, Lcom/android/systemui/qs/SecDarkModeEasel;-><init>(Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 6
    const-class p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isTouched(Landroid/view/View;FF)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget v2, v0, v1

    .line 9
    .line 10
    int-to-float v3, v2

    .line 11
    cmpl-float v3, p1, v3

    .line 12
    .line 13
    if-lez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/2addr v3, v2

    .line 20
    int-to-float v2, v3

    .line 21
    cmpg-float p1, p1, v2

    .line 22
    .line 23
    if-gez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    aget v0, v0, p1

    .line 27
    .line 28
    int-to-float v2, v0

    .line 29
    cmpl-float v2, p2, v2

    .line 30
    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    add-int/2addr p0, v0

    .line 38
    int-to-float p0, p0

    .line 39
    cmpg-float p0, p2, p0

    .line 40
    .line 41
    if-gez p0, :cond_0

    .line 42
    .line 43
    move v1, p1

    .line 44
    :cond_0
    return v1
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;->onDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_9

    .line 15
    .line 16
    if-eq v0, v1, :cond_5

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v0, v3, :cond_2

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-eq v0, v3, :cond_1

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsTouchSlider:Z

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailContainerView:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-static {v0, v3, v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 53
    .line 54
    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDragging:Z

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggleDetailListener:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 57
    .line 58
    if-eqz v0, :cond_d

    .line 59
    .line 60
    iget-boolean v3, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 61
    .line 62
    if-eqz v3, :cond_d

    .line 63
    .line 64
    iget-object v3, v0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 65
    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 77
    .line 78
    iget-boolean v3, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 79
    .line 80
    xor-int/2addr v3, v1

    .line 81
    iput-boolean v3, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDetailViewTouched:Z

    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsTouchSlider:Z

    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 88
    .line 89
    iget-boolean v0, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDragging:Z

    .line 90
    .line 91
    if-nez v0, :cond_8

    .line 92
    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 94
    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailContainerView:Landroid/widget/RelativeLayout;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-static {v0, v3, v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggleDetailListener:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 114
    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailView:Landroid/widget/ImageView;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 136
    .line 137
    .line 138
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggleDetailListener:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 139
    .line 140
    iget-object v3, v0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 141
    .line 142
    if-eqz v3, :cond_7

    .line 143
    .line 144
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 145
    .line 146
    .line 147
    iget-object v3, v0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 148
    .line 149
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 150
    .line 151
    .line 152
    iget-object v0, v0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 155
    .line 156
    .line 157
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 160
    .line 161
    iput-boolean v2, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDetailViewTouched:Z

    .line 162
    .line 163
    iput-boolean v2, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDragging:Z

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_8
    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 169
    .line 170
    iput-boolean v2, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDetailViewTouched:Z

    .line 171
    .line 172
    iput-boolean v2, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDragging:Z

    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-static {v0, v3, v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_b

    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailContainerView:Landroid/widget/RelativeLayout;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-static {v0, v3, v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_b

    .line 207
    .line 208
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessTileLayoutView:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    invoke-static {v0, v3, v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    const-string v3, "BrightnessSliderView"

    .line 223
    .line 224
    if-eqz v0, :cond_a

    .line 225
    .line 226
    const-string v0, "ACTION_DOWN: Brightness Layout is touched"

    .line 227
    .line 228
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_a
    const-string v0, "ACTION_DOWN: Slider and detail not touched"

    .line 233
    .line 234
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :goto_0
    move v2, v1

    .line 238
    goto :goto_1

    .line 239
    :cond_b
    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsTouchSlider:Z

    .line 240
    .line 241
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailContainerView:Landroid/widget/RelativeLayout;

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    invoke-static {v0, v3, v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_d

    .line 256
    .line 257
    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 258
    .line 259
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailView:Landroid/widget/ImageView;

    .line 260
    .line 261
    if-eqz v0, :cond_c

    .line 262
    .line 263
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 264
    .line 265
    const v4, 0x7f080ece

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailView:Landroid/widget/ImageView;

    .line 276
    .line 277
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 282
    .line 283
    .line 284
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 285
    .line 286
    iget-boolean v3, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 287
    .line 288
    iput-boolean v3, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDetailViewTouched:Z

    .line 289
    .line 290
    :cond_d
    :goto_1
    if-eqz v2, :cond_e

    .line 291
    .line 292
    return v1

    .line 293
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    return p0
.end method

.method public getSliderScaleY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    .line 2
    .line 3
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecDarkModeEasel;->updateColors(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOrientation:I

    .line 10
    .line 11
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOrientation:I

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0a4f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    .line 24
    .line 25
    const v0, 0x7f0a01a8

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailView:Landroid/widget/ImageView;

    .line 35
    .line 36
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView$1;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 45
    .line 46
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a01a9

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailContainerView:Landroid/widget/RelativeLayout;

    .line 64
    .line 65
    const v0, 0x7f0a01b2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/LinearLayout;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessTileLayoutView:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->updateSliderResources()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mParent:Landroid/view/ViewParent;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setDualSeekBarResources(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsSliderWarning:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsSliderWarning:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const v1, 0x7f080f00

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsSliderWarning:Z

    .line 24
    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsMirror:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const v0, 0x7f080eff

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsCollapsed:Z

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const v0, 0x7f080efe

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const v0, 0x7f080efd

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    return-void
.end method

.method public setSliderScaleY(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final updateSliderResources()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0b00e1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-double v1, v1

    .line 21
    int-to-double v3, v0

    .line 22
    mul-double/2addr v1, v3

    .line 23
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 24
    .line 25
    div-double/2addr v1, v3

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    double-to-int v0, v0

    .line 31
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDualSeekBarThreshold:I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0x7f060548

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const v1, 0x7f060549

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const v1, 0x7f060966

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const v1, 0x7f060963

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 80
    .line 81
    .line 82
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDualSeekBarThreshold:I

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-gt v0, v1, :cond_0

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
