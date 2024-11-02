.class public final Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;
.super Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAnimDirection:I

.field public mHideAnimation:Landroid/animation/AnimatorSet;

.field public mPinAnimRunnable:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter$1;

.field public mPinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

.field public mShowAnimation:Landroid/animation/AnimatorSet;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;FIZ)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p3

    .line 10
    move v6, p5

    .line 11
    move v7, p7

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;-><init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View;FZ)V

    .line 13
    .line 14
    .line 15
    iput p6, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mWidth:I

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->createPopupAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 22
    .line 23
    const p3, 0x7f0a01f9

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->getButtonTintColor()Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    const/4 p5, 0x0

    .line 41
    move p6, p5

    .line 42
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 43
    .line 44
    .line 45
    move-result p7

    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 47
    .line 48
    if-ge p6, p7, :cond_9

    .line 49
    .line 50
    invoke-virtual {p3, p6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p7

    .line 54
    instance-of v1, p7, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 55
    .line 56
    if-eqz v1, :cond_8

    .line 57
    .line 58
    check-cast p7, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 59
    .line 60
    invoke-virtual {p7}, Landroid/widget/ImageButton;->getId()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mWindowingMode:I

    .line 65
    .line 66
    invoke-static {v1, v2, p5, p5}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->isButtonVisible(IIZZ)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    const/16 v0, 0x8

    .line 73
    .line 74
    invoke-virtual {p7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_1
    const v2, 0x7f0a0792

    .line 80
    .line 81
    .line 82
    if-ne v1, v2, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setupOpacitySlider()V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_2
    const v2, 0x7f0a0ab7

    .line 89
    .line 90
    .line 91
    if-ne v1, v2, :cond_6

    .line 92
    .line 93
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSplitEnabled(I)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    .line 106
    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    .line 113
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    .line 114
    .line 115
    const/16 v5, 0xa

    .line 116
    .line 117
    if-eq v4, v5, :cond_3

    .line 118
    .line 119
    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    .line 120
    .line 121
    if-eqz v3, :cond_3

    .line 122
    .line 123
    move v3, p1

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    move v3, p5

    .line 126
    :cond_4
    :goto_1
    invoke-virtual {p0, p7, v2}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setSplitButtonDrawable(Lcom/android/wm/shell/windowdecor/WindowMenuItemView;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p7, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 130
    .line 131
    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    const/high16 v2, 0x3f800000    # 1.0f

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    const v2, 0x3ecccccd    # 0.4f

    .line 138
    .line 139
    .line 140
    :goto_2
    invoke-virtual {p7, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    .line 145
    .line 146
    if-eqz v2, :cond_7

    .line 147
    .line 148
    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNewDexMode:Z

    .line 149
    .line 150
    if-eqz v2, :cond_7

    .line 151
    .line 152
    const v2, 0x7f0a0d5f

    .line 153
    .line 154
    .line 155
    if-ne v1, v2, :cond_7

    .line 156
    .line 157
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 158
    .line 159
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 164
    .line 165
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->changePinButtonIconBackground(Z)V

    .line 170
    .line 171
    .line 172
    :cond_7
    :goto_3
    invoke-virtual {p7, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p7, v0}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p7, p4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 185
    .line 186
    invoke-virtual {v0, v1, p7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_8
    :goto_4
    add-int/lit8 p6, p6, 0x1

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_9
    const p1, 0x7f0a021d

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 201
    .line 202
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mPinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 203
    .line 204
    if-eqz p1, :cond_a

    .line 205
    .line 206
    const-string p3, "mw_popup_option_btn_handle_header.json"

    .line 207
    .line 208
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->createLottieTask(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mPinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mPinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mPinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mPinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 227
    .line 228
    iget-boolean p3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 229
    .line 230
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->updateNightMode(Z)V

    .line 231
    .line 232
    .line 233
    new-instance p1, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter$1;

    .line 234
    .line 235
    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter$1;-><init>(Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;)V

    .line 236
    .line 237
    .line 238
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mPinAnimRunnable:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter$1;

    .line 239
    .line 240
    :cond_a
    const p1, 0x7f0a034c

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Lcom/android/wm/shell/windowdecor/WindowMenuDivider;

    .line 248
    .line 249
    if-eqz p1, :cond_b

    .line 250
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setDividerColor(Lcom/android/wm/shell/windowdecor/WindowMenuDivider;)V

    .line 252
    .line 253
    .line 254
    :cond_b
    :goto_5
    return-void
.end method


# virtual methods
.method public final createPopupAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mWidth:I

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    const/4 v1, 0x2

    .line 26
    div-int/2addr v0, v1

    .line 27
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    add-int/2addr v2, v0

    .line 30
    if-gez v2, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    sub-int/2addr p1, v0

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 48
    .line 49
    if-le p1, v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    :goto_0
    if-nez p2, :cond_2

    .line 54
    .line 55
    iget p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mAnimDirection:I

    .line 56
    .line 57
    if-eq v1, p1, :cond_3

    .line 58
    .line 59
    :cond_2
    iput v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mAnimDirection:I

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    iget v5, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mWindowingMode:I

    .line 67
    .line 68
    iget v7, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mWidth:I

    .line 69
    .line 70
    move v6, v1

    .line 71
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createMenuPopupAnimatorSet(Landroid/content/Context;Landroid/view/View;ZIII)Landroid/animation/AnimatorSet;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    iget v5, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mWindowingMode:I

    .line 83
    .line 84
    iget v7, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mWidth:I

    .line 85
    .line 86
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createMenuPopupAnimatorSet(Landroid/content/Context;Landroid/view/View;ZIII)Landroid/animation/AnimatorSet;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mHideAnimation:Landroid/animation/AnimatorSet;

    .line 91
    .line 92
    :cond_3
    return-void
.end method

.method public final needRecreateHandleMenu(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v2, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eq p1, p0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p0, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 59
    :goto_1
    return p0
.end method

.method public final setFreeformButtonEnabled(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 2
    .line 3
    const v0, 0x7f0a0424

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/ImageButton;->invalidate()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
