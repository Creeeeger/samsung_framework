.class public final Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;
.super Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
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
.method public final getScreenshotEffectRect()Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;->isB5ScreenEffect()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    .line 12
    .line 13
    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    .line 14
    .line 15
    add-int/2addr v2, p0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final getScreenshotRectToCapture()Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;->isB5ScreenEffect()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 14
    .line 15
    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    .line 16
    .line 17
    iget v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    int-to-float v2, v2

    .line 21
    sub-float/2addr v1, v2

    .line 22
    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 34
    .line 35
    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    .line 36
    .line 37
    int-to-float v2, v2

    .line 38
    sub-float/2addr v1, v2

    .line 39
    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;->isB5CoverScreenInReverseMode()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    .line 53
    .line 54
    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 55
    .line 56
    float-to-int v2, v2

    .line 57
    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 58
    .line 59
    float-to-int p0, p0

    .line 60
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 65
    .line 66
    float-to-int v0, v0

    .line 67
    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 68
    .line 69
    float-to-int p0, p0

    .line 70
    invoke-virtual {v1, v3, v3, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-object v1
.end method

.method public final isB5CoverScreenInReverseMode()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getNavBarPosition(Landroid/content/Context;IZ)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    .line 18
    .line 19
    invoke-static {p0, v1}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getDisplay(ILandroid/content/Context;)Landroid/view/Display;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getDegreesForRotation(Landroid/view/Display;)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/high16 v1, 0x43340000    # 180.0f

    .line 28
    .line 29
    cmpg-float p0, p0, v1

    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    move p0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p0, v3

    .line 36
    :goto_0
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const/4 p0, 0x4

    .line 39
    if-ne v0, p0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v2, v3

    .line 43
    :goto_1
    return v2
.end method

.method public final isB5ScreenEffect()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;->isLetterBoxHide()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;->isB5CoverScreenInReverseMode()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final isLetterBoxHide()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetLeft:I

    .line 6
    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetRight:I

    .line 10
    .line 11
    if-gtz v0, :cond_1

    .line 12
    .line 13
    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    .line 14
    .line 15
    if-lez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method
