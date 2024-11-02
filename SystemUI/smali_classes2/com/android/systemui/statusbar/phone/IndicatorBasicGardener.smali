.class public abstract Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

.field public final gardenName:Ljava/lang/String;

.field public final gardenView:Lcom/android/systemui/statusbar/phone/IndicatorGarden;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenView:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenName:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
.end method

.method public needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    .line 4
    .line 5
    iget v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    .line 10
    .line 11
    iget p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    .line 12
    .line 13
    if-eq p0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public final updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    .line 8
    .line 9
    iget v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateSidePadding(II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    .line 22
    .line 23
    iget v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    .line 24
    .line 25
    if-eq v3, v4, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    .line 29
    .line 30
    iget v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    .line 31
    .line 32
    if-eq v3, v4, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    .line 36
    .line 37
    iget v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    .line 38
    .line 39
    if-eq v3, v4, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    .line 43
    .line 44
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    .line 45
    .line 46
    if-eq v3, v4, :cond_5

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_5
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    .line 50
    .line 51
    iget v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    .line 52
    .line 53
    if-eq v3, v4, :cond_6

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_6
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    .line 57
    .line 58
    iget v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    .line 59
    .line 60
    if-eq v3, v4, :cond_7

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_7
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    .line 64
    .line 65
    iget v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    .line 66
    .line 67
    if-eq v3, v4, :cond_8

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_8
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    .line 71
    .line 72
    iget v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    .line 73
    .line 74
    if-eq v3, v4, :cond_9

    .line 75
    .line 76
    :goto_0
    move v3, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_9
    move v3, v1

    .line 79
    :goto_1
    if-eqz v3, :cond_a

    .line 80
    .line 81
    return-void

    .line 82
    :cond_a
    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    .line 83
    .line 84
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    .line 85
    .line 86
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenView:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    .line 87
    .line 88
    if-eq v0, v3, :cond_b

    .line 89
    .line 90
    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_b

    .line 95
    .line 96
    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->setGardenMaxWidth(I)V

    .line 97
    .line 98
    .line 99
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 100
    .line 101
    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    .line 102
    .line 103
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    .line 104
    .line 105
    if-eq v0, v3, :cond_c

    .line 106
    .line 107
    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_c

    .line 112
    .line 113
    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->setGardenMaxWidth(I)V

    .line 114
    .line 115
    .line 116
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 117
    .line 118
    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    .line 119
    .line 120
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    .line 121
    .line 122
    if-eq v0, v3, :cond_d

    .line 123
    .line 124
    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_d

    .line 129
    .line 130
    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->setGardenMaxWidth(I)V

    .line 131
    .line 132
    .line 133
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 134
    .line 135
    if-nez v0, :cond_e

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_e
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    .line 139
    .line 140
    iget v5, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    .line 141
    .line 142
    if-eq v3, v5, :cond_f

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_f
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    .line 146
    .line 147
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    .line 148
    .line 149
    if-eq v3, v5, :cond_10

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_10
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    .line 153
    .line 154
    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    .line 155
    .line 156
    if-eq v3, v0, :cond_11

    .line 157
    .line 158
    :goto_2
    move v1, v2

    .line 159
    :cond_11
    if-nez v1, :cond_14

    .line 160
    .line 161
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    .line 162
    .line 163
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    .line 164
    .line 165
    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    .line 166
    .line 167
    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getHeightContainer()Landroid/view/ViewGroup;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    if-eqz v4, :cond_14

    .line 172
    .line 173
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    if-eqz v4, :cond_12

    .line 178
    .line 179
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 180
    .line 181
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    if-eqz v1, :cond_13

    .line 186
    .line 187
    if-lez v3, :cond_13

    .line 188
    .line 189
    sub-int/2addr v0, v3

    .line 190
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 191
    .line 192
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_13
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 196
    .line 197
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 198
    .line 199
    :cond_14
    :goto_3
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 200
    .line 201
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    .line 202
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenName:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string p0, " update is done "

    .line 214
    .line 215
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p0, " cutout="

    .line 222
    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    const-string p1, "IndicatorBasicGardener"

    .line 234
    .line 235
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public updateSidePadding(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenView:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getSidePaddingContainer()Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
