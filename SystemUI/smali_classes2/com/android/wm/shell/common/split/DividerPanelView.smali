.class public Lcom/android/wm/shell/common/split/DividerPanelView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public mColorTintList:Landroid/content/res/ColorStateList;

.field public mContainer:Landroid/widget/LinearLayout;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final createLottieTask(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "createLottieTask: asset="

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DividerPanelView"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerPanelView;Ljava/lang/String;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    invoke-direct {p0, p2}, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0351

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const v0, 0x7f0a08ea

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 25
    .line 26
    const v0, 0x7f0a0b91

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 36
    .line 37
    const v0, 0x7f0a00a4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f06042c

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    new-instance v1, Landroid/view/SemBlurInfo$Builder;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-direct {v1, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 65
    .line 66
    .line 67
    const/16 v3, 0x7d

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v5, 0xcc

    .line 86
    .line 87
    invoke-static {v5, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v1, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const v3, 0x7f070953

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    int-to-float v1, v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-string/jumbo v3, "wallpapertheme_state"

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    const/4 v3, 0x1

    .line 150
    if-ne v1, v3, :cond_0

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    move v3, v2

    .line 154
    :goto_0
    const/4 v1, 0x0

    .line 155
    if-eqz v3, :cond_1

    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const v3, 0x1060384

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mColorTintList:Landroid/content/res/ColorStateList;

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_1
    if-eqz v0, :cond_2

    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const v3, 0x7f060570

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mColorTintList:Landroid/content/res/ColorStateList;

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const v3, 0x7f060571

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mColorTintList:Landroid/content/res/ColorStateList;

    .line 205
    .line 206
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    :goto_2
    if-ge v2, v0, :cond_3

    .line 213
    .line 214
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 221
    .line 222
    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    .line 223
    .line 224
    const-string v4, "**"

    .line 225
    .line 226
    filled-new-array {v4}, [Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 234
    .line 235
    new-instance v5, Lcom/android/wm/shell/common/split/DividerPanelView$3;

    .line 236
    .line 237
    invoke-direct {v5, p0}, Lcom/android/wm/shell/common/split/DividerPanelView$3;-><init>(Lcom/android/wm/shell/common/split/DividerPanelView;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v3, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 241
    .line 242
    .line 243
    add-int/lit8 v2, v2, 0x1

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_3
    const-string/jumbo v0, "splitview_divider_option_icon_rotating_layout.json"

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 250
    .line 251
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;->createLottieTask(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string/jumbo v0, "splitview_divider_option_icon_switching.json"

    .line 255
    .line 256
    .line 257
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 258
    .line 259
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;->createLottieTask(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const-string/jumbo v0, "splitview_divider_option_icon_add_apppair.json"

    .line 263
    .line 264
    .line 265
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 266
    .line 267
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;->createLottieTask(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return-void
.end method
