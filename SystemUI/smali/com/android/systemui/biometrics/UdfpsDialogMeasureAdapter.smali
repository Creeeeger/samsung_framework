.class public final Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mBottomSpacerHeight:I

.field public final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final mView:Landroid/view/ViewGroup;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    sput-boolean v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->DEBUG:Z

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-class p2, Landroid/view/WindowManager;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/view/WindowManager;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 21
    .line 22
    return-void
.end method

.method public static calculateBottomSpacerHeightForLandscape(IIIIIII)I
    .locals 4

    .line 1
    add-int v0, p0, p1

    .line 2
    .line 3
    add-int/2addr v0, p2

    .line 4
    add-int/2addr v0, p3

    .line 5
    add-int v1, p4, p5

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    sub-int/2addr v0, p6

    .line 9
    sget-boolean v1, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "Title height: "

    .line 14
    .line 15
    const-string v2, ", Subtitle height: "

    .line 16
    .line 17
    const-string v3, ", Description height: "

    .line 18
    .line 19
    invoke-static {v1, p0, v2, p1, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, ", Top spacer height: "

    .line 24
    .line 25
    const-string v1, ", Text indicator height: "

    .line 26
    .line 27
    invoke-static {p0, p2, p1, p3, v1}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p1, ", Button bar height: "

    .line 31
    .line 32
    const-string p2, ", Navbar bottom inset: "

    .line 33
    .line 34
    invoke-static {p0, p4, p1, p5, p2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p1, ", Bottom spacer height (landscape): "

    .line 38
    .line 39
    const-string p2, "UdfpsDialogMeasurementAdapter"

    .line 40
    .line 41
    invoke-static {p0, p6, p1, v0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return v0
.end method

.method public static calculateBottomSpacerHeightForPortrait(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IIIIIF)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    mul-float/2addr v0, p6

    .line 9
    float-to-int v0, v0

    .line 10
    sub-int v0, p1, v0

    .line 11
    .line 12
    iget p0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    .line 13
    .line 14
    int-to-float p0, p0

    .line 15
    mul-float/2addr p0, p6

    .line 16
    float-to-int p0, p0

    .line 17
    sub-int/2addr v0, p0

    .line 18
    sub-int p0, v0, p2

    .line 19
    .line 20
    sub-int/2addr p0, p3

    .line 21
    sub-int/2addr p0, p4

    .line 22
    sub-int/2addr p0, p5

    .line 23
    sget-boolean p2, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->DEBUG:Z

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const-string p2, "Display height: "

    .line 28
    .line 29
    const-string p3, ", Distance from bottom: "

    .line 30
    .line 31
    const-string v1, ", Bottom margin: "

    .line 32
    .line 33
    invoke-static {p2, p1, p3, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, ", Navbar bottom inset: "

    .line 38
    .line 39
    const-string p3, ", Bottom spacer height (portrait): "

    .line 40
    .line 41
    invoke-static {p1, p4, p2, p5, p3}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, ", Scale Factor: "

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string p2, "UdfpsDialogMeasurementAdapter"

    .line 60
    .line 61
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    return p0
.end method

.method public static calculateHorizontalSpacerWidthForLandscape(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IIIF)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    mul-float/2addr v0, p4

    .line 9
    float-to-int v0, v0

    .line 10
    sub-int v0, p1, v0

    .line 11
    .line 12
    iget p0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    .line 13
    .line 14
    int-to-float p0, p0

    .line 15
    mul-float/2addr p0, p4

    .line 16
    float-to-int p0, p0

    .line 17
    sub-int/2addr v0, p0

    .line 18
    sub-int p0, v0, p2

    .line 19
    .line 20
    sub-int/2addr p0, p3

    .line 21
    sget-boolean v1, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->DEBUG:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v1, "Display width: "

    .line 26
    .line 27
    const-string v2, ", Distance from edge: "

    .line 28
    .line 29
    const-string v3, ", Dialog margin: "

    .line 30
    .line 31
    invoke-static {v1, p1, v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, ", Navbar horizontal inset: "

    .line 36
    .line 37
    const-string v1, ", Horizontal spacer width (landscape): "

    .line 38
    .line 39
    invoke-static {p1, p2, v0, p3, v1}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, ", Scale Factor: "

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "UdfpsDialogMeasurementAdapter"

    .line 58
    .line 59
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_0
    return p0
.end method


# virtual methods
.method public final getSensorDiameter(F)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    .line 8
    .line 9
    int-to-float p0, p0

    .line 10
    mul-float/2addr p1, p0

    .line 11
    const/high16 p0, 0x40000000    # 2.0f

    .line 12
    .line 13
    mul-float/2addr p1, p0

    .line 14
    float-to-int p0, p1

    .line 15
    return p0
.end method

.method public final getViewHeightPx(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public final onMeasureInternal(IILcom/android/systemui/biometrics/AuthDialog$LayoutParams;F)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v10, p4

    .line 8
    .line 9
    iget-object v11, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0x7f0a0152

    .line 20
    .line 21
    .line 22
    const v5, 0x7f0700be

    .line 23
    .line 24
    .line 25
    const v12, 0x7f0a0aa7

    .line 26
    .line 27
    .line 28
    const/high16 v13, -0x80000000

    .line 29
    .line 30
    const/high16 v14, 0x40000000    # 2.0f

    .line 31
    .line 32
    const v6, 0x7f0a0300

    .line 33
    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    const v8, 0x7f0a01f6

    .line 37
    .line 38
    .line 39
    const v9, 0x7f0a04c6

    .line 40
    .line 41
    .line 42
    iget-object v15, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 43
    .line 44
    if-eqz v3, :cond_9

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    if-eq v3, v1, :cond_0

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    if-eq v3, v1, :cond_0

    .line 51
    .line 52
    const-string v0, "Unsupported display rotation: "

    .line 53
    .line 54
    const-string v1, "UdfpsDialogMeasurementAdapter"

    .line 55
    .line 56
    invoke-static {v0, v3, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p3

    .line 60
    :cond_0
    invoke-interface {v15}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const v3, 0x7f0a0bd9

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 68
    .line 69
    .line 70
    move-result v15

    .line 71
    const v3, 0x7f0a0b4d

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 75
    .line 76
    .line 77
    move-result v16

    .line 78
    invoke-virtual {v0, v6}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 79
    .line 80
    .line 81
    move-result v17

    .line 82
    invoke-virtual {v0, v12}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 83
    .line 84
    .line 85
    move-result v18

    .line 86
    invoke-virtual {v0, v9}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 87
    .line 88
    .line 89
    move-result v19

    .line 90
    invoke-virtual {v0, v8}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 91
    .line 92
    .line 93
    move-result v20

    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v3, v6}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 110
    .line 111
    :goto_0
    iget v6, v3, Landroid/graphics/Insets;->bottom:I

    .line 112
    .line 113
    move/from16 v21, v6

    .line 114
    .line 115
    invoke-static/range {v15 .. v21}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->calculateBottomSpacerHeightForLandscape(IIIIIII)I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    .line 127
    .line 128
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    iget v8, v3, Landroid/graphics/Insets;->left:I

    .line 144
    .line 145
    iget v3, v3, Landroid/graphics/Insets;->right:I

    .line 146
    .line 147
    add-int/2addr v8, v3

    .line 148
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 149
    .line 150
    invoke-static {v3, v1, v5, v8, v10}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->calculateHorizontalSpacerWidthForLandscape(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IIIF)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {v0, v10}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getSensorDiameter(F)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    mul-int/lit8 v1, v1, 0x2

    .line 159
    .line 160
    add-int/2addr v1, v0

    .line 161
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    move v5, v7

    .line 166
    move v8, v5

    .line 167
    :goto_2
    if-ge v7, v3, :cond_8

    .line 168
    .line 169
    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-ne v10, v4, :cond_3

    .line 178
    .line 179
    move-object v4, v9

    .line 180
    check-cast v4, Landroid/widget/FrameLayout;

    .line 181
    .line 182
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    invoke-static {v0, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    invoke-virtual {v4, v10, v15}, Landroid/widget/FrameLayout;->measure(II)V

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    invoke-virtual {v8, v4, v10}, Landroid/view/View;->measure(II)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-ne v4, v12, :cond_4

    .line 214
    .line 215
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    .line 221
    const/4 v8, 0x0

    .line 222
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    sub-int/2addr v4, v8

    .line 227
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-virtual {v9, v8, v4}, Landroid/view/View;->measure(II)V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    const v8, 0x7f0a01f6

    .line 244
    .line 245
    .line 246
    if-ne v4, v8, :cond_5

    .line 247
    .line 248
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    .line 258
    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    invoke-virtual {v9, v4, v8}, Landroid/view/View;->measure(II)V

    .line 263
    .line 264
    .line 265
    :goto_3
    const/4 v4, 0x0

    .line 266
    :goto_4
    move v8, v4

    .line 267
    goto :goto_5

    .line 268
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    const v8, 0x7f0a0aa8

    .line 273
    .line 274
    .line 275
    if-ne v4, v8, :cond_6

    .line 276
    .line 277
    const/4 v4, 0x0

    .line 278
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 283
    .line 284
    .line 285
    move-result v10

    .line 286
    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    invoke-virtual {v9, v10, v8}, Landroid/view/View;->measure(II)V

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_6
    const/4 v4, 0x0

    .line 295
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 300
    .line 301
    .line 302
    move-result v10

    .line 303
    invoke-virtual {v9, v8, v10}, Landroid/view/View;->measure(II)V

    .line 304
    .line 305
    .line 306
    goto :goto_4

    .line 307
    :goto_5
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    const/16 v10, 0x8

    .line 312
    .line 313
    if-eq v4, v10, :cond_7

    .line 314
    .line 315
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    add-int/2addr v4, v5

    .line 320
    move v5, v4

    .line 321
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 322
    .line 323
    const v4, 0x7f0a0152

    .line 324
    .line 325
    .line 326
    goto/16 :goto_2

    .line 327
    .line 328
    :cond_8
    new-instance v0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 329
    .line 330
    invoke-direct {v0, v1, v5}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    .line 331
    .line 332
    .line 333
    return-object v0

    .line 334
    :cond_9
    invoke-interface {v15}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v0, v9}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    const v4, 0x7f0a01f6

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v4}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    if-eqz v3, :cond_a

    .line 358
    .line 359
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    goto :goto_6

    .line 364
    :cond_a
    new-instance v4, Landroid/graphics/Rect;

    .line 365
    .line 366
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 367
    .line 368
    .line 369
    :goto_6
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 370
    .line 371
    .line 372
    move-result v15

    .line 373
    if-eqz v3, :cond_b

    .line 374
    .line 375
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    invoke-virtual {v3, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    goto :goto_7

    .line 388
    :cond_b
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 389
    .line 390
    :goto_7
    iget-object v4, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 391
    .line 392
    iget v9, v3, Landroid/graphics/Insets;->bottom:I

    .line 393
    .line 394
    const/16 v16, 0x0

    .line 395
    .line 396
    move-object v3, v4

    .line 397
    move v4, v15

    .line 398
    move v5, v6

    .line 399
    move v6, v7

    .line 400
    move v7, v8

    .line 401
    move v8, v9

    .line 402
    move/from16 v9, p4

    .line 403
    .line 404
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->calculateBottomSpacerHeightForPortrait(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IIIIIF)I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    iput v3, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mBottomSpacerHeight:I

    .line 409
    .line 410
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    invoke-virtual {v0, v10}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getSensorDiameter(F)I

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    move/from16 v5, v16

    .line 419
    .line 420
    move v6, v5

    .line 421
    :goto_8
    if-ge v5, v3, :cond_12

    .line 422
    .line 423
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 428
    .line 429
    .line 430
    move-result v8

    .line 431
    const v9, 0x7f0a0152

    .line 432
    .line 433
    .line 434
    if-ne v8, v9, :cond_c

    .line 435
    .line 436
    move-object v8, v7

    .line 437
    check-cast v8, Landroid/widget/FrameLayout;

    .line 438
    .line 439
    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 448
    .line 449
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 454
    .line 455
    .line 456
    move-result v10

    .line 457
    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->measure(II)V

    .line 458
    .line 459
    .line 460
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 461
    .line 462
    .line 463
    move-result v8

    .line 464
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 465
    .line 466
    .line 467
    move-result v9

    .line 468
    invoke-virtual {v6, v8, v9}, Landroid/view/View;->measure(II)V

    .line 469
    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 473
    .line 474
    .line 475
    move-result v6

    .line 476
    if-ne v6, v12, :cond_d

    .line 477
    .line 478
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 487
    .line 488
    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 489
    .line 490
    .line 491
    move-result v8

    .line 492
    invoke-virtual {v7, v6, v8}, Landroid/view/View;->measure(II)V

    .line 493
    .line 494
    .line 495
    goto :goto_9

    .line 496
    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 497
    .line 498
    .line 499
    move-result v6

    .line 500
    const v8, 0x7f0a01f6

    .line 501
    .line 502
    .line 503
    if-ne v6, v8, :cond_e

    .line 504
    .line 505
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 506
    .line 507
    .line 508
    move-result v6

    .line 509
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 510
    .line 511
    .line 512
    move-result-object v8

    .line 513
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 514
    .line 515
    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 516
    .line 517
    .line 518
    move-result v8

    .line 519
    invoke-virtual {v7, v6, v8}, Landroid/view/View;->measure(II)V

    .line 520
    .line 521
    .line 522
    :goto_9
    const/4 v6, 0x0

    .line 523
    goto :goto_a

    .line 524
    :cond_e
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    const v8, 0x7f0a0aa8

    .line 529
    .line 530
    .line 531
    if-ne v6, v8, :cond_f

    .line 532
    .line 533
    iget v6, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mBottomSpacerHeight:I

    .line 534
    .line 535
    const/4 v8, 0x0

    .line 536
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 541
    .line 542
    .line 543
    move-result v9

    .line 544
    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    invoke-virtual {v7, v9, v6}, Landroid/view/View;->measure(II)V

    .line 549
    .line 550
    .line 551
    move v6, v8

    .line 552
    goto :goto_a

    .line 553
    :cond_f
    const/4 v6, 0x0

    .line 554
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 555
    .line 556
    .line 557
    move-result v8

    .line 558
    const v9, 0x7f0a0300

    .line 559
    .line 560
    .line 561
    if-ne v8, v9, :cond_10

    .line 562
    .line 563
    goto :goto_b

    .line 564
    :cond_10
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 565
    .line 566
    .line 567
    move-result v8

    .line 568
    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 569
    .line 570
    .line 571
    move-result v9

    .line 572
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 573
    .line 574
    .line 575
    :goto_a
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 576
    .line 577
    .line 578
    move-result v8

    .line 579
    const/16 v9, 0x8

    .line 580
    .line 581
    if-eq v8, v9, :cond_11

    .line 582
    .line 583
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 584
    .line 585
    .line 586
    move-result v7

    .line 587
    add-int v7, v7, v16

    .line 588
    .line 589
    move/from16 v16, v7

    .line 590
    .line 591
    :cond_11
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 592
    .line 593
    goto/16 :goto_8

    .line 594
    .line 595
    :cond_12
    const v0, 0x7f0a0300

    .line 596
    .line 597
    .line 598
    const/16 v2, 0x8

    .line 599
    .line 600
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    if-eqz v0, :cond_14

    .line 605
    .line 606
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    if-eq v3, v2, :cond_14

    .line 611
    .line 612
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    add-int v2, v2, v16

    .line 617
    .line 618
    int-to-double v3, v15

    .line 619
    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    .line 620
    .line 621
    mul-double/2addr v3, v5

    .line 622
    double-to-int v3, v3

    .line 623
    if-le v2, v3, :cond_13

    .line 624
    .line 625
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    sub-int v3, v3, v16

    .line 630
    .line 631
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 632
    .line 633
    .line 634
    move-result v3

    .line 635
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 636
    .line 637
    .line 638
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    add-int v16, v0, v16

    .line 643
    .line 644
    :cond_14
    move/from16 v0, v16

    .line 645
    .line 646
    new-instance v2, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 647
    .line 648
    invoke-direct {v2, v1, v0}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    .line 649
    .line 650
    .line 651
    return-object v2
.end method
