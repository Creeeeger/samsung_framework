.class public final Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public cutoutString:Ljava/lang/String;

.field public cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

.field public isFrontCameraUsing:Z

.field public final isUDCModel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 9
    .line 10
    sget-object p2, Lcom/android/systemui/statusbar/phone/CutoutType;->NO_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string p3, "config_mainBuiltInDisplayCutoutForUDC"

    .line 19
    .line 20
    const-string/jumbo v0, "string"

    .line 21
    .line 22
    .line 23
    const-string v1, "android"

    .line 24
    .line 25
    invoke-virtual {p2, p3, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-lez p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 52
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->loadDisplayCutout()V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    iget v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    .line 13
    .line 14
    if-nez v4, :cond_1

    .line 15
    .line 16
    move v4, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v4, v3

    .line 19
    :goto_1
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->isRTL()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 36
    .line 37
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFitToActiveDisplay:Z

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isFrontCameraUsing:Z

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v2, v3

    .line 51
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v1, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1;

    .line 68
    .line 69
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Landroid/graphics/Rect;

    .line 82
    .line 83
    :cond_4
    return-object p0
.end method

.method public final isMainDisplay()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final isUDCMainDisplay()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final loadDisplayCutout()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 2
    .line 3
    const-string v1, "config_mainBuiltInDisplayCutoutForUDC"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->context:Landroid/content/Context;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    iget v5, v5, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 20
    .line 21
    const/4 v6, 0x5

    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    move v5, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v5, v4

    .line 27
    :goto_0
    if-eqz v5, :cond_1

    .line 28
    .line 29
    const-string v0, "config_subBuiltInDisplayCutout"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const-string v0, "config_mainBuiltInDisplayCutout"

    .line 43
    .line 44
    :goto_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string/jumbo v6, "string"

    .line 49
    .line 50
    .line 51
    const-string v7, "android"

    .line 52
    .line 53
    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-lez v5, :cond_3

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const/4 v3, 0x0

    .line 69
    :goto_2
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutString:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    sget-object v0, Lcom/android/systemui/statusbar/phone/CutoutType;->UDC:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutString:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v0, :cond_8

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lez v0, :cond_5

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_5
    move v2, v4

    .line 92
    :goto_3
    if-eqz v2, :cond_8

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutString:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const-string v1, "@left"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    sget-object v0, Lcom/android/systemui/statusbar/phone/CutoutType;->LEFT_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutString:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    const-string v1, "@right"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    sget-object v0, Lcom/android/systemui/statusbar/phone/CutoutType;->RIGHT_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/phone/CutoutType;->CENTER_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/phone/CutoutType;->NO_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 130
    .line 131
    :goto_4
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 132
    .line 133
    return-void
.end method
