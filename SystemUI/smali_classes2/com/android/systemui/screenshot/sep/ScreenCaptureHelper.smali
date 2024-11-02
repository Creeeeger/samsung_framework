.class public Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public builtInDisplayId:I

.field public captureSharedBundle:Landroid/os/Bundle;

.field public capturedDisplayId:I

.field public displayContext:Landroid/content/Context;

.field public displayHeight:I

.field public final displayInfo:Landroid/view/DisplayInfo;

.field public displayRotation:I

.field public displayWidth:I

.field public isNavigationBarVisible:Z

.field public isStatusBarVisible:Z

.field public mBundle:Landroid/os/Bundle;

.field public navigationBarHeight:I

.field public rectToCapture:Landroid/graphics/Rect;

.field public safeInsetBottom:I

.field public safeInsetLeft:I

.field public safeInsetRight:I

.field public safeInsetTop:I

.field public screenCaptureOrigin:I

.field public screenCaptureSweepDirection:I

.field public screenCaptureType:I

.field public screenDegrees:F

.field public screenHeight:I

.field public screenNativeHeight:F

.field public screenNativeWidth:F

.field public screenWidth:I

.field public stackBounds:Landroid/graphics/Rect;

.field public statusBarHeight:I

.field public windowMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "ScreenCaptureHelper"

    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/DisplayInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 17
    .line 18
    return-void
.end method

.method public static getDegreesForRotation(Landroid/view/Display;)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Display;->getRealRotation()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    .line 20
    .line 21
    return p0

    .line 22
    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    .line 23
    .line 24
    return p0
.end method


# virtual methods
.method public getAnimationWindowType()I
    .locals 0

    .line 1
    const/16 p0, 0x968

    .line 2
    .line 3
    return p0
.end method

.method public final getExcludeSystemUIRect()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "old rectToCapture : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isStatusBarVisible:Z

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v2

    .line 31
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v3, v2

    .line 39
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v4, v3, v2}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getNavBarPosition(Landroid/content/Context;IZ)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    .line 46
    .line 47
    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    .line 48
    .line 49
    iget v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 50
    .line 51
    float-to-int v5, v5

    .line 52
    if-eqz v5, :cond_7

    .line 53
    .line 54
    const/16 v6, 0x5a

    .line 55
    .line 56
    const/4 v7, 0x4

    .line 57
    if-eq v5, v6, :cond_5

    .line 58
    .line 59
    const/16 v6, 0xb4

    .line 60
    .line 61
    if-eq v5, v6, :cond_4

    .line 62
    .line 63
    const/16 v6, 0x10e

    .line 64
    .line 65
    if-eq v5, v6, :cond_2

    .line 66
    .line 67
    move v0, v2

    .line 68
    move v6, v0

    .line 69
    move v7, v6

    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_2
    if-ne v4, v7, :cond_3

    .line 73
    .line 74
    iget v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 75
    .line 76
    float-to-int v6, v5

    .line 77
    sub-int/2addr v6, v0

    .line 78
    iget v7, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 79
    .line 80
    float-to-int v7, v7

    .line 81
    add-int/2addr v0, v3

    .line 82
    int-to-float v0, v0

    .line 83
    sub-float/2addr v5, v0

    .line 84
    iput v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 85
    .line 86
    move v0, v2

    .line 87
    move v2, v3

    .line 88
    goto :goto_4

    .line 89
    :cond_3
    iget v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 90
    .line 91
    float-to-int v6, v5

    .line 92
    sub-int/2addr v6, v0

    .line 93
    iget v7, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 94
    .line 95
    float-to-int v8, v7

    .line 96
    sub-int/2addr v8, v3

    .line 97
    int-to-float v0, v0

    .line 98
    sub-float/2addr v5, v0

    .line 99
    iput v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 100
    .line 101
    int-to-float v0, v3

    .line 102
    sub-float/2addr v7, v0

    .line 103
    iput v7, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 104
    .line 105
    move v0, v2

    .line 106
    move v7, v8

    .line 107
    goto :goto_4

    .line 108
    :cond_4
    iget v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 109
    .line 110
    float-to-int v5, v5

    .line 111
    iget v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 112
    .line 113
    float-to-int v7, v6

    .line 114
    sub-int/2addr v7, v0

    .line 115
    add-int/2addr v0, v3

    .line 116
    int-to-float v0, v0

    .line 117
    sub-float/2addr v6, v0

    .line 118
    iput v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 119
    .line 120
    move v0, v3

    .line 121
    goto :goto_3

    .line 122
    :cond_5
    if-ne v4, v7, :cond_6

    .line 123
    .line 124
    iget v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 125
    .line 126
    float-to-int v6, v5

    .line 127
    sub-int/2addr v6, v3

    .line 128
    iget v7, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 129
    .line 130
    float-to-int v7, v7

    .line 131
    add-int/2addr v3, v0

    .line 132
    int-to-float v3, v3

    .line 133
    sub-float/2addr v5, v3

    .line 134
    iput v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    iget v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 138
    .line 139
    float-to-int v6, v5

    .line 140
    iget v7, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 141
    .line 142
    float-to-int v8, v7

    .line 143
    sub-int/2addr v8, v3

    .line 144
    int-to-float v9, v0

    .line 145
    sub-float/2addr v5, v9

    .line 146
    iput v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 147
    .line 148
    int-to-float v3, v3

    .line 149
    sub-float/2addr v7, v3

    .line 150
    iput v7, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 151
    .line 152
    move v7, v8

    .line 153
    :goto_2
    move v10, v2

    .line 154
    move v2, v0

    .line 155
    move v0, v10

    .line 156
    goto :goto_4

    .line 157
    :cond_7
    iget v5, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 158
    .line 159
    float-to-int v5, v5

    .line 160
    iget v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 161
    .line 162
    float-to-int v7, v6

    .line 163
    sub-int/2addr v7, v3

    .line 164
    add-int/2addr v3, v0

    .line 165
    int-to-float v3, v3

    .line 166
    sub-float/2addr v6, v3

    .line 167
    iput v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 168
    .line 169
    :goto_3
    move v6, v5

    .line 170
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 171
    .line 172
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v2, v0, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 179
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v2, "new getExcludeSystemUIRect : "

    .line 183
    .line 184
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string p0, " navigationBarPosition : "

    .line 191
    .line 192
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 206
    .line 207
    return-void
.end method

.method public getScreenshotEffectRect()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getExcludeSystemUIRect()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 18
    .line 19
    return-object p0
.end method

.method public getScreenshotRectToCapture()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getExcludeSystemUIRect()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 18
    .line 19
    return-object p0
.end method

.method public initializeCaptureType()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    .line 3
    .line 4
    return-void
.end method

.method public initializeScreenshotVariable()V
    .locals 5

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
    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    .line 19
    .line 20
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 21
    .line 22
    iput v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    .line 23
    .line 24
    iput v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    .line 25
    .line 26
    int-to-float v2, v2

    .line 27
    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 28
    .line 29
    int-to-float v2, v3

    .line 30
    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 31
    .line 32
    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 33
    .line 34
    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayRotation:I

    .line 35
    .line 36
    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getDegreesForRotation(Landroid/view/Display;)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "initializeScreenshotVariable: screenDegrees="

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    cmpl-float v0, v0, v1

    .line 65
    .line 66
    if-lez v0, :cond_0

    .line 67
    .line 68
    const/4 v0, 0x2

    .line 69
    new-array v0, v0, [F

    .line 70
    .line 71
    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    aput v1, v0, v2

    .line 75
    .line 76
    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    aput v1, v0, v3

    .line 80
    .line 81
    new-instance v1, Landroid/graphics/Matrix;

    .line 82
    .line 83
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 87
    .line 88
    .line 89
    iget v4, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 90
    .line 91
    neg-float v4, v4

    .line 92
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 96
    .line 97
    .line 98
    aget v1, v0, v2

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    aput v1, v0, v2

    .line 105
    .line 106
    aget v1, v0, v3

    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    aput v1, v0, v3

    .line 113
    .line 114
    aget v0, v0, v2

    .line 115
    .line 116
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 117
    .line 118
    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 119
    .line 120
    :cond_0
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    .line 121
    .line 122
    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    .line 123
    .line 124
    return-void
.end method

.method public isB5CoverScreenInReverseMode()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isB5ScreenEffect()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isLetterBoxHide()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isShowScreenshotAnimation()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForPartial;

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public onPostScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    .line 4
    .line 5
    iget v2, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureSweepDirection:I

    .line 6
    .line 7
    iget v3, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    .line 8
    .line 9
    iget v4, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureOrigin:I

    .line 10
    .line 11
    iget v5, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetLeft:I

    .line 12
    .line 13
    iget v6, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    .line 14
    .line 15
    iget v7, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetRight:I

    .line 16
    .line 17
    iget v8, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    .line 18
    .line 19
    iget-object v9, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->captureSharedBundle:Landroid/os/Bundle;

    .line 20
    .line 21
    iget v10, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    .line 22
    .line 23
    iget v11, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    .line 24
    .line 25
    iget-boolean v12, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isStatusBarVisible:Z

    .line 26
    .line 27
    iget-boolean v13, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    .line 28
    .line 29
    iget-object v14, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    .line 36
    .line 37
    move/from16 v17, v15

    .line 38
    .line 39
    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    .line 40
    .line 41
    move/from16 v18, v15

    .line 42
    .line 43
    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    .line 44
    .line 45
    move/from16 v19, v15

    .line 46
    .line 47
    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    .line 48
    .line 49
    move/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 56
    .line 57
    move/from16 v22, v15

    .line 58
    .line 59
    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 60
    .line 61
    move/from16 v23, v15

    .line 62
    .line 63
    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 64
    .line 65
    move/from16 v24, v15

    .line 66
    .line 67
    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    .line 68
    .line 69
    move/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->stackBounds:Landroid/graphics/Rect;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget v15, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->windowMode:I

    .line 76
    .line 77
    move/from16 v27, v15

    .line 78
    .line 79
    const-string v15, "ScreenCaptureHelper(screenCaptureType="

    .line 80
    .line 81
    const-string v0, ", screenCaptureSweepDirection="

    .line 82
    .line 83
    move-object/from16 v28, v14

    .line 84
    .line 85
    const-string v14, ", capturedDisplayId="

    .line 86
    .line 87
    invoke-static {v15, v1, v0, v2, v14}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, ", screenCaptureOrigin="

    .line 92
    .line 93
    const-string v2, ", safeInsetLeft="

    .line 94
    .line 95
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v1, ", safeInsetTop="

    .line 99
    .line 100
    const-string v2, ", safeInsetRight="

    .line 101
    .line 102
    invoke-static {v0, v5, v1, v6, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v1, ", safeInsetBottom="

    .line 106
    .line 107
    const-string v2, ", captureSharedBundle="

    .line 108
    .line 109
    invoke-static {v0, v7, v1, v8, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, ", statusBarHeight="

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", navigationBarHeight="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, ", isStatusBarVisible="

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ", isNavigationBarVisible="

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ", mBundle="

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move-object/from16 v1, v28

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, ", displayContext="

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    move-object/from16 v1, v16

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, ", displayInfo="

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    move-object/from16 v1, p0

    .line 173
    .line 174
    iget-object v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayInfo:Landroid/view/DisplayInfo;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, ", displayWidth="

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move/from16 v1, v17

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v1, ", displayHeight="

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v1, ", screenWidth="

    .line 195
    .line 196
    const-string v2, ", screenHeight="

    .line 197
    .line 198
    move/from16 v3, v18

    .line 199
    .line 200
    move/from16 v4, v19

    .line 201
    .line 202
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    move/from16 v1, v20

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, ", rectToCapture="

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    move-object/from16 v1, v21

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, ", screenDegrees="

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    move/from16 v1, v22

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v1, ", screenNativeWidth="

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    move/from16 v1, v23

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v1, ", screenNativeHeight="

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    move/from16 v1, v24

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, ", builtInDisplayId="

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    move/from16 v1, v25

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, ", stackBounds="

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    move-object/from16 v1, v26

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v1, ", windowMode="

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    move/from16 v1, v27

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v1, ")"

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    return-object v0
.end method
