.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public cornerPaddingC:I

.field public cutoutInnerPaddingD:I

.field public cutoutSidePaddingD:I

.field public cutoutTopMarginB:I

.field public final debugMode:Z

.field public defaultCenterPadding:I

.field public defaultStartPadding:I

.field public density:F

.field public displayCutout:Landroid/view/DisplayCutout;

.field public rotation:I

.field public statusBarWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->debugMode:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->updateWindowMetrics()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->updatePaddingValues()V

    .line 16
    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getDimenSize(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final isRTL()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final updatePaddingValues()V
    .locals 2

    .line 1
    const v0, 0x7f0709eb

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    const/high16 v1, 0x3e800000    # 0.25f

    .line 10
    .line 11
    mul-float/2addr v0, v1

    .line 12
    float-to-int v0, v0

    .line 13
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultCenterPadding:I

    .line 14
    .line 15
    const v0, 0x7f07125a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultStartPadding:I

    .line 23
    .line 24
    const v0, 0x1050506

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cornerPaddingC:I

    .line 32
    .line 33
    const v0, 0x10504fc

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutInnerPaddingD:I

    .line 41
    .line 42
    const v0, 0x10504fd

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutSidePaddingD:I

    .line 50
    .line 51
    const v0, 0x10504fe

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutTopMarginB:I

    .line 59
    .line 60
    return-void
.end method

.method public final updateWindowMetrics()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 32
    .line 33
    iput v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->density:F

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->debugMode:Z

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    .line 54
    .line 55
    if-eq v1, v0, :cond_0

    .line 56
    .line 57
    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    .line 58
    .line 59
    const-string/jumbo v3, "updateWindowMetrics rotation: "

    .line 60
    .line 61
    .line 62
    const-string v4, " >> "

    .line 63
    .line 64
    const-string v5, " w="

    .line 65
    .line 66
    invoke-static {v3, v1, v4, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v3, "IndicatorGardenInputProperties"

    .line 71
    .line 72
    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    .line 76
    .line 77
    return-void
.end method
