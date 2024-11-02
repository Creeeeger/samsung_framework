.class public final Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForWindow;
.super Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForWindow$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    const/16 v0, 0x64

    .line 2
    .line 3
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    .line 4
    .line 5
    return-void
.end method

.method public final initializeScreenshotVariable()V
    .locals 10

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
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "windowCapture"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x1

    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/Number;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/Number;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v4, 0x2

    .line 69
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Ljava/lang/Number;

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    const/4 v5, 0x3

    .line 80
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/lang/Number;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const/4 v6, 0x4

    .line 91
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Number;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const/4 v3, -0x1

    .line 103
    move v0, v1

    .line 104
    move v1, v3

    .line 105
    move v4, v1

    .line 106
    move v5, v4

    .line 107
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    .line 108
    .line 109
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iget v8, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    .line 118
    .line 119
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    iget v9, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    .line 124
    .line 125
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    invoke-direct {v6, v7, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    .line 131
    .line 132
    iput-object v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 133
    .line 134
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    .line 139
    .line 140
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 141
    .line 142
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    .line 150
    .line 151
    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 152
    .line 153
    const/4 v6, 0x0

    .line 154
    cmpl-float v6, v2, v6

    .line 155
    .line 156
    if-lez v6, :cond_2

    .line 157
    .line 158
    const/high16 v6, 0x42b40000    # 90.0f

    .line 159
    .line 160
    cmpg-float v6, v2, v6

    .line 161
    .line 162
    if-nez v6, :cond_1

    .line 163
    .line 164
    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    .line 165
    .line 166
    sub-int v4, v2, v4

    .line 167
    .line 168
    sub-int/2addr v2, v3

    .line 169
    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 170
    .line 171
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_1
    const/high16 v6, 0x43870000    # 270.0f

    .line 179
    .line 180
    cmpg-float v2, v2, v6

    .line 181
    .line 182
    if-nez v2, :cond_2

    .line 183
    .line 184
    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    .line 185
    .line 186
    sub-int v5, v2, v5

    .line 187
    .line 188
    sub-int/2addr v2, v1

    .line 189
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 190
    .line 191
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v5, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    .line 196
    .line 197
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 198
    .line 199
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    int-to-float v1, v1

    .line 207
    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 208
    .line 209
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 210
    .line 211
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    int-to-float v1, v1

    .line 219
    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 220
    .line 221
    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    .line 222
    .line 223
    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    .line 224
    .line 225
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->windowMode:I

    .line 226
    .line 227
    return-void
.end method

.method public final isShowScreenshotAnimation()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
