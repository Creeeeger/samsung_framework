.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public displayDeviceType:I

.field public gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

.field public final indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final indicatorGardenAlgorithmFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;

.field public final inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

.field public final mainHandler:Landroid/os/Handler;

.field public final statusIconContainerCallbacks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->indicatorGardenAlgorithmFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mainHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 13
    .line 14
    .line 15
    iget-object p4, p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 16
    .line 17
    iget-object p5, p4, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 18
    .line 19
    sget-object p6, Lcom/android/systemui/statusbar/phone/CutoutType;->CENTER_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 20
    .line 21
    if-ne p5, p6, :cond_0

    .line 22
    .line 23
    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-boolean p5, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    .line 27
    .line 28
    if-eqz p5, :cond_1

    .line 29
    .line 30
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    if-eqz p4, :cond_1

    .line 35
    .line 36
    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmSidelingCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmNoCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;

    .line 40
    .line 41
    :goto_0
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    .line 42
    .line 43
    new-instance p3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->statusIconContainerCallbacks:Ljava/util/ArrayList;

    .line 49
    .line 50
    sget-boolean p3, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 51
    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iget p2, p2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 63
    .line 64
    iput p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->displayDeviceType:I

    .line 65
    .line 66
    :cond_2
    const-string p2, "IndicatorGardenPresenter"

    .line 67
    .line 68
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string p2, "IndicatorGardenPresenter"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->name:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "    "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p2, ""

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const-string v0, "    IndicatorGardenInputProperties"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    .line 43
    .line 44
    const-string v1, "        rotation(0-0,90-1,180-2,270-3)="

    .line 45
    .line 46
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 47
    .line 48
    .line 49
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    .line 50
    .line 51
    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v3, "        statusBarWidth="

    .line 72
    .line 73
    const-string v4, ", statusBarHeight="

    .line 74
    .line 75
    const-string v5, " "

    .line 76
    .line 77
    invoke-static {v3, v0, v4, v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cornerPaddingC:I

    .line 92
    .line 93
    iget v1, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultStartPadding:I

    .line 94
    .line 95
    const-string v2, "        cornerPaddingC="

    .line 96
    .line 97
    const-string v3, " (defaultStartPadding="

    .line 98
    .line 99
    const-string v4, ")"

    .line 100
    .line 101
    invoke-static {v2, v0, v3, v1, v4}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutSidePaddingD:I

    .line 109
    .line 110
    iget v1, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutInnerPaddingD:I

    .line 111
    .line 112
    iget v2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultCenterPadding:I

    .line 113
    .line 114
    const-string v3, "        cutoutSidePaddingD="

    .line 115
    .line 116
    const-string v5, ", cutoutInnerPaddingD="

    .line 117
    .line 118
    const-string v6, " (defaultCenterPadding="

    .line 119
    .line 120
    invoke-static {v3, v0, v5, v1, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutTopMarginB:I

    .line 138
    .line 139
    const-string v1, "        cutoutTopMarginB="

    .line 140
    .line 141
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 142
    .line 143
    .line 144
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->density:F

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v2, "        density="

    .line 149
    .line 150
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v1, "        displayCutout="

    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->indicatorGardenAlgorithmFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;

    .line 183
    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    const-string p2, "    IndicatorCutoutUtil"

    .line 190
    .line 191
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v2, "        cutoutType="

    .line 203
    .line 204
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p2, " isUDC="

    .line 211
    .line 212
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    .line 216
    .line 217
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string p2, " isMainDisplay="

    .line 221
    .line 222
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v0, "        excludeArea="

    .line 242
    .line 243
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method public final onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 32
    .line 33
    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Set cutout="

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "IndicatorGardenInputProperties"

    .line 50
    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onGardenConfigurationChanged(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->updateWindowMetrics()V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->displayDeviceType:I

    .line 11
    .line 12
    iget p2, p2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 13
    .line 14
    if-eq v0, p2, :cond_2

    .line 15
    .line 16
    iput p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->displayDeviceType:I

    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->indicatorGardenAlgorithmFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;

    .line 19
    .line 20
    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->loadDisplayCutout()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 28
    .line 29
    sget-object v2, Lcom/android/systemui/statusbar/phone/CutoutType;->CENTER_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    .line 30
    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmSidelingCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmNoCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;

    .line 50
    .line 51
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->initResources()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateLeftPadding()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateRightPadding()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->hasCameraTopMargin()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateCameraTopMargin()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateCenterContainerMaxWidth()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    .line 62
    .line 63
    invoke-interface {p1, v1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
