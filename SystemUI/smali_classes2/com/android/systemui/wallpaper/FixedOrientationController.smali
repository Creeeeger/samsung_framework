.class public final Lcom/android/systemui/wallpaper/FixedOrientationController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mIsFixedOrientationApplied:Z

.field public mLastForcedRotation:I

.field public mLastHeight:I

.field public mLastWidth:I

.field public final mShouldEnableScreenRotation:Z

.field public final mTargetView:Landroid/view/View;

.field public final mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Landroid/view/View;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastWidth:I

    .line 5
    iput v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastHeight:I

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mIsFixedOrientationApplied:Z

    .line 7
    iput-object p1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mShouldEnableScreenRotation:Z

    return-void
.end method


# virtual methods
.method public final applyPortraitRotation()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mIsFixedOrientationApplied:Z

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    .line 15
    .line 16
    .line 17
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 23
    .line 24
    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 25
    .line 26
    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 27
    .line 28
    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    if-ne v4, v6, :cond_3

    .line 37
    .line 38
    move v4, v6

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move v4, v5

    .line 41
    :goto_0
    const-string/jumbo v7, "w = "

    .line 42
    .line 43
    .line 44
    const-string v8, ", h = "

    .line 45
    .line 46
    const-string v9, ", isRtl = "

    .line 47
    .line 48
    invoke-static {v7, v3, v8, v2, v9}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v9, ", newR = "

    .line 56
    .line 57
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v9, ", oldR = "

    .line 64
    .line 65
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v9, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    .line 69
    .line 70
    const-string v10, "FixedOrientationController"

    .line 71
    .line 72
    invoke-static {v7, v9, v10}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    .line 76
    .line 77
    if-ne v1, v7, :cond_4

    .line 78
    .line 79
    iget v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastHeight:I

    .line 80
    .line 81
    if-ne v2, v7, :cond_4

    .line 82
    .line 83
    iget v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastWidth:I

    .line 84
    .line 85
    if-ne v3, v7, :cond_4

    .line 86
    .line 87
    const-string p0, "Same configuration."

    .line 88
    .line 89
    invoke-static {v10, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    if-nez v3, :cond_5

    .line 94
    .line 95
    move v7, v6

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    move v7, v5

    .line 98
    :goto_1
    if-nez v2, :cond_6

    .line 99
    .line 100
    move v5, v6

    .line 101
    :cond_6
    or-int/2addr v5, v7

    .line 102
    if-eqz v5, :cond_7

    .line 103
    .line 104
    return-void

    .line 105
    :cond_7
    iput v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    .line 106
    .line 107
    iput v2, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastHeight:I

    .line 108
    .line 109
    iput v3, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastWidth:I

    .line 110
    .line 111
    const/4 v5, 0x3

    .line 112
    const/4 v7, 0x0

    .line 113
    if-ne v1, v6, :cond_8

    .line 114
    .line 115
    const/high16 v9, -0x3d4c0000    # -90.0f

    .line 116
    .line 117
    invoke-virtual {v0, v9}, Landroid/view/View;->setRotation(F)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    if-ne v1, v5, :cond_9

    .line 122
    .line 123
    const/high16 v9, 0x42b40000    # 90.0f

    .line 124
    .line 125
    invoke-virtual {v0, v9}, Landroid/view/View;->setRotation(F)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_9
    const/4 v9, 0x2

    .line 130
    if-ne v1, v9, :cond_a

    .line 131
    .line 132
    const/high16 v9, 0x43340000    # 180.0f

    .line 133
    .line 134
    invoke-virtual {v0, v9}, Landroid/view/View;->setRotation(F)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_a
    invoke-virtual {v0, v7}, Landroid/view/View;->setRotation(F)V

    .line 139
    .line 140
    .line 141
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    if-eqz v9, :cond_10

    .line 146
    .line 147
    if-eq v1, v6, :cond_d

    .line 148
    .line 149
    if-ne v1, v5, :cond_b

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_b
    if-le v3, v2, :cond_c

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_c
    move v11, v3

    .line 156
    move v3, v2

    .line 157
    move v2, v11

    .line 158
    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 162
    .line 163
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v4, "#2 port w = "

    .line 167
    .line 168
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    .line 189
    iput v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_d
    :goto_4
    if-le v2, v3, :cond_e

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_e
    move v11, v3

    .line 196
    move v3, v2

    .line 197
    move v2, v11

    .line 198
    :goto_5
    sub-int v1, v2, v3

    .line 199
    .line 200
    int-to-float v1, v1

    .line 201
    const/high16 v5, 0x40000000    # 2.0f

    .line 202
    .line 203
    div-float/2addr v1, v5

    .line 204
    if-eqz v4, :cond_f

    .line 205
    .line 206
    neg-float v1, v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 212
    .line 213
    .line 214
    :goto_6
    sub-int v1, v3, v2

    .line 215
    .line 216
    int-to-float v1, v1

    .line 217
    div-float/2addr v1, v5

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 219
    .line 220
    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v4, "#2 land w = "

    .line 224
    .line 225
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    iput v2, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    .line 246
    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    .line 248
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 249
    .line 250
    .line 251
    iput-boolean v6, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mIsFixedOrientationApplied:Z

    .line 252
    .line 253
    :cond_10
    return-void
.end method

.method public final clearPortraitRotation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "FixedOrientationController"

    .line 7
    .line 8
    const-string v2, "clearPortraitRotation"

    .line 9
    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, -0x1

    .line 18
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    .line 20
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 36
    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mIsFixedOrientationApplied:Z

    .line 39
    .line 40
    return-void
.end method
