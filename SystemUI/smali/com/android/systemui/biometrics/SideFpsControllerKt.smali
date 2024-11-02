.class public abstract Lcom/android/systemui/biometrics/SideFpsControllerKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static final addOverlayDynamicColor$update(ILandroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    move p0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p0, v2

    .line 9
    :goto_0
    const-string v0, ".black"

    .line 10
    .line 11
    const-string v3, ".blue400"

    .line 12
    .line 13
    const-string v4, ".blue600"

    .line 14
    .line 15
    const-string v5, "**"

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const p0, 0x11200a9

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(ILandroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const v1, 0x11200aa

    .line 27
    .line 28
    .line 29
    invoke-static {v1, p1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(ILandroid/content/Context;I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const v6, 0x1120098

    .line 34
    .line 35
    .line 36
    invoke-static {v6, p1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(ILandroid/content/Context;I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 41
    .line 42
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-direct {v2, v4}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 50
    .line 51
    new-instance v6, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$1;

    .line 52
    .line 53
    invoke-direct {v6, p0}, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$1;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v2, v4, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Lcom/airbnb/lottie/model/KeyPath;

    .line 60
    .line 61
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$2;

    .line 69
    .line 70
    invoke-direct {v2, v1}, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$2;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p0, v4, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 74
    .line 75
    .line 76
    new-instance p0, Lcom/airbnb/lottie/model/KeyPath;

    .line 77
    .line 78
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$3;

    .line 86
    .line 87
    invoke-direct {v0, p1}, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$3;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p0, v4, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 103
    .line 104
    and-int/lit8 p0, p0, 0x30

    .line 105
    .line 106
    const/16 v6, 0x20

    .line 107
    .line 108
    if-ne p0, v6, :cond_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    move v1, v2

    .line 112
    :goto_1
    if-nez v1, :cond_3

    .line 113
    .line 114
    new-instance p0, Lcom/airbnb/lottie/model/KeyPath;

    .line 115
    .line 116
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 124
    .line 125
    sget-object v1, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$4;->INSTANCE:Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$4;

    .line 126
    .line 127
    invoke-virtual {p2, p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Ljava/lang/String;

    .line 153
    .line 154
    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    .line 155
    .line 156
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 164
    .line 165
    new-instance v2, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$5;

    .line 166
    .line 167
    invoke-direct {v2, p1}, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$5;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v1, v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    :goto_3
    return-void
.end method
