.class public final Lcom/android/systemui/screenshot/sep/ScreenshotViewUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/screenshot/sep/ScreenshotViewUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotViewUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLayoutParams(Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getAnimationWindowType()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    const v4, 0x4200588

    .line 6
    .line 7
    .line 8
    instance-of v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex;

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getScreenshotRectToCapture()Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    cmpg-float p0, p0, v1

    .line 22
    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    move p0, v7

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p0, v6

    .line 28
    :goto_0
    if-eqz p0, :cond_1

    .line 29
    .line 30
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v5, -0x3

    .line 44
    move-object v0, p0

    .line 45
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v5, -0x3

    .line 63
    const v4, 0x4200588

    .line 64
    .line 65
    .line 66
    move-object v0, p0

    .line 67
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 68
    .line 69
    .line 70
    :goto_1
    const/16 v0, 0x30

    .line 71
    .line 72
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 76
    .line 77
    const/4 v1, -0x1

    .line 78
    const/4 v2, -0x1

    .line 79
    const/4 v5, -0x3

    .line 80
    const v4, 0x4200588

    .line 81
    .line 82
    .line 83
    move-object v0, p0

    .line 84
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 85
    .line 86
    .line 87
    const/16 v0, 0x11

    .line 88
    .line 89
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 90
    .line 91
    :goto_2
    const/4 v0, -0x1

    .line 92
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 93
    .line 94
    iput v7, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 95
    .line 96
    invoke-virtual {p0, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 97
    .line 98
    .line 99
    return-object p0
.end method
