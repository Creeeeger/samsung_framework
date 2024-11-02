.class public Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;
.super Lcom/android/systemui/biometrics/AuthIconController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public iconLayoutParamSize:Lkotlin/Pair;

.field public final iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

.field public final isReverseDefaultRotation:Z

.field public final isSideFps:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthIconController;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    const v0, 0x11101e2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    iput-boolean p3, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isReverseDefaultRotation:Z

    .line 18
    .line 19
    new-instance p3, Lkotlin/Pair;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p3, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconLayoutParamSize:Lkotlin/Pair;

    .line 30
    .line 31
    new-instance p3, Lkotlin/Pair;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const v2, 0x7f0700c6

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const v3, 0x7f0700c5

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {p3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p3}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->setIconLayoutParamSize(Lkotlin/Pair;)V

    .line 67
    .line 68
    .line 69
    const-string p3, "fingerprint"

    .line 70
    .line 71
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    check-cast p3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    if-eqz p3, :cond_2

    .line 79
    .line 80
    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    :goto_0
    move v0, v1

    .line 115
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isSideFps:Z

    .line 116
    .line 117
    const/4 p3, 0x4

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    const/16 v2, 0x12

    .line 121
    .line 122
    new-array v3, v2, [I

    .line 123
    .line 124
    fill-array-data v3, :array_0

    .line 125
    .line 126
    .line 127
    :goto_2
    if-ge v1, v2, :cond_4

    .line 128
    .line 129
    aget v4, v3, v1

    .line 130
    .line 131
    invoke-static {v4, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(ILandroid/content/Context;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-static {p1, v5, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;Ljava/lang/String;I)Lcom/airbnb/lottie/LottieTask;

    .line 136
    .line 137
    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    const v2, 0x7f120020

    .line 142
    .line 143
    .line 144
    const v3, 0x7f120021

    .line 145
    .line 146
    .line 147
    const v4, 0x7f12001d

    .line 148
    .line 149
    .line 150
    const v5, 0x7f12001e

    .line 151
    .line 152
    .line 153
    filled-new-array {v4, v5, v2, v3}, [I

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    :goto_3
    if-ge v1, p3, :cond_4

    .line 158
    .line 159
    aget v3, v2, v1

    .line 160
    .line 161
    invoke-static {v3, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(ILandroid/content/Context;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-static {p1, v4, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;Ljava/lang/String;I)Lcom/airbnb/lottie/LottieTask;

    .line 166
    .line 167
    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    new-instance v1, Landroid/view/DisplayInfo;

    .line 172
    .line 173
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_5

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 183
    .line 184
    .line 185
    :cond_5
    if-eqz v0, :cond_7

    .line 186
    .line 187
    iget p1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 188
    .line 189
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isReverseDefaultRotation:Z

    .line 190
    .line 191
    if-eqz p0, :cond_6

    .line 192
    .line 193
    add-int/lit8 p1, p1, 0x1

    .line 194
    .line 195
    rem-int/2addr p1, p3

    .line 196
    :cond_6
    const/4 p0, 0x2

    .line 197
    if-ne p1, p0, :cond_7

    .line 198
    .line 199
    const/high16 p0, 0x43340000    # 180.0f

    .line 200
    .line 201
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 202
    .line 203
    .line 204
    :cond_7
    return-void

    .line 205
    :array_0
    .array-data 4
        0x7f120006
        0x7f120007
        0x7f120008
        0x7f120009
        0x7f12000a
        0x7f12000b
        0x7f12000c
        0x7f120010
        0x7f120011
        0x7f120012
        0x7f120013
        0x7f120014
        0x7f120015
        0x7f120016
        0x7f120017
        0x7f120018
        0x7f120019
        0x7f12001a
    .end array-data
.end method


# virtual methods
.method public getAnimationForTransition(II)Ljava/lang/Integer;
    .locals 3

    .line 1
    const/4 p0, 0x1

    .line 2
    const v0, 0x7f120020

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq p2, p0, :cond_2

    .line 8
    .line 9
    const/4 p0, 0x2

    .line 10
    if-eq p2, p0, :cond_2

    .line 11
    .line 12
    if-eq p2, v2, :cond_4

    .line 13
    .line 14
    if-eq p2, v1, :cond_4

    .line 15
    .line 16
    const/4 p0, 0x6

    .line 17
    if-eq p2, p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_0
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    if-eq p1, v1, :cond_1

    .line 24
    .line 25
    const v0, 0x7f120021

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const v0, 0x7f12001e

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    if-eq p1, v2, :cond_3

    .line 34
    .line 35
    if-eq p1, v1, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const v0, 0x7f12001d

    .line 39
    .line 40
    .line 41
    :cond_4
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final getIconContentDescription(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    move-object p1, v0

    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    const p1, 0x7f130215

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_1

    .line 15
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isSideFps:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const p1, 0x7f130f9f

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const p1, 0x7f13066c

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_1
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    return-object v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final setIconLayoutParamSize(Lkotlin/Pair;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconLayoutParamSize:Lkotlin/Pair;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Number;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    .line 82
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconLayoutParamSize:Lkotlin/Pair;

    .line 83
    .line 84
    return-void
.end method

.method public shouldAnimateIconViewForTransition(II)Z
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p2, v2, :cond_1

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq p2, v3, :cond_1

    .line 9
    .line 10
    if-eq p2, v1, :cond_0

    .line 11
    .line 12
    if-eq p2, v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x6

    .line 15
    if-eq p2, p1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    move p0, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    :goto_1
    return p0
.end method

.method public updateIcon(II)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isSideFps:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_21

    .line 7
    .line 8
    new-instance v0, Landroid/view/DisplayInfo;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v4, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 25
    .line 26
    iget-boolean v4, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isReverseDefaultRotation:Z

    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    rem-int/2addr v0, v5

    .line 34
    :cond_1
    const/4 v4, 0x6

    .line 35
    const/4 v6, 0x3

    .line 36
    const v7, 0x7f120016

    .line 37
    .line 38
    .line 39
    const v8, 0x7f120017

    .line 40
    .line 41
    .line 42
    const v9, 0x7f120006

    .line 43
    .line 44
    .line 45
    if-eq p2, v3, :cond_e

    .line 46
    .line 47
    if-eq p2, v2, :cond_e

    .line 48
    .line 49
    if-eq p2, v6, :cond_a

    .line 50
    .line 51
    if-eq p2, v5, :cond_a

    .line 52
    .line 53
    if-eq p2, v4, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_2
    if-eq p1, v6, :cond_6

    .line 59
    .line 60
    if-eq p1, v5, :cond_6

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    if-eq v0, v3, :cond_4

    .line 65
    .line 66
    if-eq v0, v2, :cond_5

    .line 67
    .line 68
    if-eq v0, v6, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const v0, 0x7f120019

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    const v0, 0x7f12001a

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    :goto_0
    const v0, 0x7f120018

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_6
    if-eqz v0, :cond_9

    .line 84
    .line 85
    if-eq v0, v3, :cond_8

    .line 86
    .line 87
    if-eq v0, v2, :cond_9

    .line 88
    .line 89
    if-eq v0, v6, :cond_7

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_7
    const v0, 0x7f120014

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_8
    const v0, 0x7f120015

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_9
    :goto_1
    const v0, 0x7f120013

    .line 101
    .line 102
    .line 103
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_8

    .line 108
    :cond_a
    if-eqz v0, :cond_c

    .line 109
    .line 110
    if-eq v0, v3, :cond_b

    .line 111
    .line 112
    if-eq v0, v2, :cond_c

    .line 113
    .line 114
    if-eq v0, v6, :cond_d

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_b
    move v7, v8

    .line 118
    goto :goto_4

    .line 119
    :cond_c
    :goto_3
    move v7, v9

    .line 120
    :cond_d
    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    goto :goto_8

    .line 125
    :cond_e
    if-eq p1, v6, :cond_11

    .line 126
    .line 127
    if-eq p1, v5, :cond_11

    .line 128
    .line 129
    if-eqz v0, :cond_10

    .line 130
    .line 131
    if-eq v0, v3, :cond_f

    .line 132
    .line 133
    if-eq v0, v2, :cond_10

    .line 134
    .line 135
    if-eq v0, v6, :cond_15

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_f
    move v7, v8

    .line 139
    goto :goto_7

    .line 140
    :cond_10
    :goto_5
    move v7, v9

    .line 141
    goto :goto_7

    .line 142
    :cond_11
    if-eqz v0, :cond_14

    .line 143
    .line 144
    if-eq v0, v3, :cond_13

    .line 145
    .line 146
    if-eq v0, v2, :cond_14

    .line 147
    .line 148
    if-eq v0, v6, :cond_12

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_12
    const v7, 0x7f120011

    .line 152
    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_13
    const v7, 0x7f120012

    .line 156
    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_14
    :goto_6
    const v7, 0x7f120010

    .line 160
    .line 161
    .line 162
    :cond_15
    :goto_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :goto_8
    if-eqz v0, :cond_26

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-ne p1, v3, :cond_16

    .line 173
    .line 174
    if-eq p2, v2, :cond_17

    .line 175
    .line 176
    :cond_16
    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 177
    .line 178
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 179
    .line 180
    .line 181
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->getIconContentDescription(I)Ljava/lang/CharSequence;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_18

    .line 186
    .line 187
    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 188
    .line 189
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 200
    .line 201
    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 204
    .line 205
    .line 206
    if-eq p2, v3, :cond_19

    .line 207
    .line 208
    if-eq p2, v2, :cond_19

    .line 209
    .line 210
    if-eq p2, v6, :cond_1b

    .line 211
    .line 212
    if-eq p2, v5, :cond_1b

    .line 213
    .line 214
    if-eq p2, v4, :cond_1b

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :cond_19
    if-eq p1, v5, :cond_1b

    .line 218
    .line 219
    if-eq p1, v6, :cond_1b

    .line 220
    .line 221
    if-nez p1, :cond_1a

    .line 222
    .line 223
    goto :goto_a

    .line 224
    :cond_1a
    :goto_9
    move v0, v1

    .line 225
    goto :goto_b

    .line 226
    :cond_1b
    :goto_a
    move v0, v3

    .line 227
    :goto_b
    if-eqz v0, :cond_1c

    .line 228
    .line 229
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 232
    .line 233
    .line 234
    :cond_1c
    if-eq p2, v3, :cond_1d

    .line 235
    .line 236
    if-eq p2, v2, :cond_1d

    .line 237
    .line 238
    if-eq p2, v6, :cond_1e

    .line 239
    .line 240
    if-eq p2, v5, :cond_1e

    .line 241
    .line 242
    if-eq p2, v4, :cond_1e

    .line 243
    .line 244
    goto :goto_c

    .line 245
    :cond_1d
    if-eq p1, v5, :cond_1e

    .line 246
    .line 247
    if-ne p1, v6, :cond_1f

    .line 248
    .line 249
    :cond_1e
    move v1, v3

    .line 250
    :cond_1f
    :goto_c
    if-eqz v1, :cond_20

    .line 251
    .line 252
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 255
    .line 256
    .line 257
    :cond_20
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 258
    .line 259
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 260
    .line 261
    invoke-static {p1, p2}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 265
    .line 266
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 267
    .line 268
    invoke-static {p1, p0}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 269
    .line 270
    .line 271
    goto :goto_d

    .line 272
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 273
    .line 274
    const/16 v4, 0x8

    .line 275
    .line 276
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->getAnimationForTransition(II)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    if-eqz v0, :cond_26

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-ne p1, v3, :cond_22

    .line 290
    .line 291
    if-eq p2, v2, :cond_23

    .line 292
    .line 293
    :cond_22
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 294
    .line 295
    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 296
    .line 297
    .line 298
    :cond_23
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->getIconContentDescription(I)Ljava/lang/CharSequence;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-eqz v0, :cond_24

    .line 303
    .line 304
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 305
    .line 306
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 310
    .line 311
    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->shouldAnimateIconViewForTransition(II)Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_25

    .line 321
    .line 322
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 325
    .line 326
    .line 327
    :cond_25
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isSideFps:Z

    .line 328
    .line 329
    if-eqz p1, :cond_26

    .line 330
    .line 331
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 332
    .line 333
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 334
    .line 335
    invoke-static {p1, p0}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 336
    .line 337
    .line 338
    :cond_26
    :goto_d
    return-void
.end method
