.class public final Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final ICON_MAX_HEIGHT:I

.field public final baseSmallestWidth:F

.field public latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

.field public final logEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->logEnabled:Z

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f0b010a

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->ICON_MAX_HEIGHT:I

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, 0x7f0b010c

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->baseSmallestWidth:F

    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const v2, 0x1050508

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 69
    .line 70
    const/high16 v3, 0x3f800000    # 1.0f

    .line 71
    .line 72
    invoke-direct {v0, v3, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;-><init>(FIII)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 76
    .line 77
    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "   baseSmallestWidth="

    .line 4
    .line 5
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->baseSmallestWidth:F

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "   "

    .line 25
    .line 26
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "   Display device type (-1: Undefined, 0: Main, 5: Sub)"

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 10
    .line 11
    sget-object v2, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const v3, 0x1050508

    .line 18
    .line 19
    .line 20
    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-boolean v2, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget v2, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget v5, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->ICON_MAX_HEIGHT:I

    .line 42
    .line 43
    if-le v2, v5, :cond_2

    .line 44
    .line 45
    const v4, 0x3f666666    # 0.9f

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    int-to-float v2, v1

    .line 50
    iget v5, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->baseSmallestWidth:F

    .line 51
    .line 52
    div-float/2addr v2, v5

    .line 53
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    int-to-float p1, p1

    .line 66
    mul-float/2addr p1, v4

    .line 67
    float-to-int p1, p1

    .line 68
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 69
    .line 70
    new-instance v2, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 71
    .line 72
    invoke-direct {v2, v4, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;-><init>(FIII)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 76
    .line 77
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->logEnabled:Z

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "Scale model changed from="

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, " to "

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v0, "IndicatorScaleGardener"

    .line 112
    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_3
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 117
    .line 118
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 119
    .line 120
    return-object p0
.end method
