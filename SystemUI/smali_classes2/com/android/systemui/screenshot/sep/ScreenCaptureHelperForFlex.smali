.class public final Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex;
.super Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final initializeCaptureType()V
    .locals 1

    .line 1
    const/16 v0, 0x65

    .line 2
    .line 3
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    .line 4
    .line 5
    return-void
.end method

.method public final initializeScreenshotVariable()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getDisplay(ILandroid/content/Context;)Landroid/view/Display;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 12
    .line 13
    .line 14
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 15
    .line 16
    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    .line 17
    .line 18
    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 19
    .line 20
    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    .line 21
    .line 22
    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 23
    .line 24
    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayRotation:I

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getDegreesForRotation(Landroid/view/Display;)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->captureSharedBundle:Landroid/os/Bundle;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const-string/jumbo v1, "rect"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/graphics/Rect;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isStatusBarVisible:Z

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move v0, v1

    .line 88
    :goto_0
    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 89
    .line 90
    float-to-int v2, v2

    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    const/16 v3, 0x5a

    .line 94
    .line 95
    if-eq v2, v3, :cond_4

    .line 96
    .line 97
    const/16 v3, 0xb4

    .line 98
    .line 99
    if-eq v2, v3, :cond_3

    .line 100
    .line 101
    const/16 v3, 0x10e

    .line 102
    .line 103
    if-eq v2, v3, :cond_2

    .line 104
    .line 105
    move v0, v1

    .line 106
    move v2, v0

    .line 107
    move v3, v2

    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_2
    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    .line 111
    .line 112
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 118
    .line 119
    sub-int/2addr v1, v2

    .line 120
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 121
    .line 122
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    iget v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    .line 128
    .line 129
    iget-object v4, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 130
    .line 131
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 135
    .line 136
    sub-int/2addr v3, v4

    .line 137
    sub-int v0, v3, v0

    .line 138
    .line 139
    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 140
    .line 141
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 145
    .line 146
    move v6, v2

    .line 147
    move v2, v0

    .line 148
    move v0, v6

    .line 149
    goto :goto_1

    .line 150
    :cond_3
    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    .line 151
    .line 152
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 153
    .line 154
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 158
    .line 159
    sub-int/2addr v1, v2

    .line 160
    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    .line 161
    .line 162
    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 163
    .line 164
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 168
    .line 169
    sub-int/2addr v2, v3

    .line 170
    iget v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    .line 171
    .line 172
    iget-object v4, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 173
    .line 174
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 178
    .line 179
    sub-int/2addr v3, v4

    .line 180
    iget v4, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    .line 181
    .line 182
    iget-object v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 183
    .line 184
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 188
    .line 189
    sub-int/2addr v4, v5

    .line 190
    sub-int v0, v4, v0

    .line 191
    .line 192
    move v6, v3

    .line 193
    move v3, v0

    .line 194
    move v0, v2

    .line 195
    move v2, v6

    .line 196
    goto :goto_1

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 198
    .line 199
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 203
    .line 204
    add-int/2addr v1, v0

    .line 205
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    .line 206
    .line 207
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 208
    .line 209
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 213
    .line 214
    sub-int/2addr v0, v2

    .line 215
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 216
    .line 217
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 221
    .line 222
    iget v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    .line 223
    .line 224
    iget-object v4, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 225
    .line 226
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 230
    .line 231
    sub-int/2addr v3, v4

    .line 232
    goto :goto_1

    .line 233
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 234
    .line 235
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 239
    .line 240
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 241
    .line 242
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 246
    .line 247
    add-int/2addr v0, v2

    .line 248
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 249
    .line 250
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 254
    .line 255
    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 256
    .line 257
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 261
    .line 262
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 263
    .line 264
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 271
    .line 272
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    int-to-float v0, v0

    .line 280
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 281
    .line 282
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 283
    .line 284
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    int-to-float v0, v0

    .line 292
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 293
    .line 294
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    .line 295
    .line 296
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    .line 297
    .line 298
    return-void
.end method
