.class public abstract Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final cornerRoundFromFloatingFeature:F

.field public final cornerRoundSidePadding:I

.field public final inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->name:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->cornerRoundFromFloatingFeature:F

    .line 33
    .line 34
    const/high16 p2, 0x41200000    # 10.0f

    .line 35
    .line 36
    sub-float/2addr p2, p1

    .line 37
    mul-float/2addr p2, p1

    .line 38
    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    sub-float/2addr p2, p1

    .line 41
    float-to-int p1, p2

    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->cornerRoundSidePadding:I

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public calculateCameraTopMargin()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public calculateCenterContainerMaxWidth()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public calculateLeftPadding()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public calculateRightPadding()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getDefaultSidePadding()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cornerPaddingC:I

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->cornerRoundFromFloatingFeature:F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->cornerRoundSidePadding:I

    .line 27
    .line 28
    int-to-float p0, p0

    .line 29
    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->density:F

    .line 30
    .line 31
    mul-float/2addr p0, v0

    .line 32
    float-to-int p0, p0

    .line 33
    return p0

    .line 34
    :cond_2
    iget p0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultStartPadding:I

    .line 35
    .line 36
    return p0
.end method

.method public final getHasCutoutForIndicator()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-lez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public final getLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lez v3, :cond_0

    .line 28
    .line 29
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    .line 30
    .line 31
    div-int/lit8 p0, p0, 0x2

    .line 32
    .line 33
    sub-int/2addr p0, v0

    .line 34
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    div-int/lit8 p1, p1, 0x2

    .line 39
    .line 40
    sub-int/2addr p0, p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v2, 0x0

    .line 54
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialRightWidth()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int/2addr v0, v1

    .line 63
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    .line 64
    .line 65
    sub-int/2addr v1, v2

    .line 66
    sub-int/2addr v1, v0

    .line 67
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultCenterPadding:I

    .line 68
    .line 69
    sub-int/2addr v1, p0

    .line 70
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialLeftWidth()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    :goto_1
    return p0
.end method

.method public final getRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lez v3, :cond_0

    .line 28
    .line 29
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    .line 30
    .line 31
    div-int/lit8 p0, p0, 0x2

    .line 32
    .line 33
    sub-int/2addr p0, v1

    .line 34
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    div-int/lit8 p1, p1, 0x2

    .line 39
    .line 40
    sub-int/2addr p0, p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    .line 43
    .line 44
    add-int/2addr v0, v1

    .line 45
    sub-int/2addr v2, v0

    .line 46
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialLeftWidth()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sub-int/2addr v2, v0

    .line 51
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultCenterPadding:I

    .line 52
    .line 53
    sub-int/2addr v2, p0

    .line 54
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialRightWidth()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    :goto_0
    return p0
.end method

.method public hasCameraTopMargin()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public initResources()V
    .locals 0

    .line 1
    return-void
.end method
