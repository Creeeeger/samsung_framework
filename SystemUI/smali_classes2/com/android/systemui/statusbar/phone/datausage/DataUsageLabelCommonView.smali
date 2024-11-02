.class public Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;
.super Landroid/widget/TextView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplay:Landroid/view/Display;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dynamicallyReduceTextSize()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f070a0f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const v2, 0x7f070a0d

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 43
    .line 44
    const v3, 0x3fa66666    # 1.3f

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/high16 v3, 0x3f800000    # 1.0f

    .line 52
    .line 53
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    int-to-float v3, v1

    .line 58
    mul-float v4, v3, v2

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 77
    .line 78
    if-eqz v7, :cond_1

    .line 79
    .line 80
    iget v8, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const/16 v8, 0xa0

    .line 84
    .line 85
    :goto_1
    if-eqz v7, :cond_2

    .line 86
    .line 87
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const/16 v7, 0x5a0

    .line 91
    .line 92
    :goto_2
    const/16 v9, 0xa

    .line 93
    .line 94
    if-ge v5, v9, :cond_6

    .line 95
    .line 96
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    float-to-int v9, v9

    .line 101
    const-string v10, ", newScaleRatio:"

    .line 102
    .line 103
    const-string v11, ", defaultTextSize:"

    .line 104
    .line 105
    const-string v12, ", densityDPI:"

    .line 106
    .line 107
    const-string v13, ", textWidth:"

    .line 108
    .line 109
    const-string v14, "dynamicallyReduceTextSize("

    .line 110
    .line 111
    const-string v15, "DataUsageLabelCommonView"

    .line 112
    .line 113
    if-lez v7, :cond_5

    .line 114
    .line 115
    if-lt v7, v9, :cond_3

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    move-object/from16 v16, v4

    .line 119
    .line 120
    add-int/lit8 v4, v5, 0x1

    .line 121
    .line 122
    move-object/from16 v17, v6

    .line 123
    .line 124
    int-to-float v6, v4

    .line 125
    move/from16 v18, v4

    .line 126
    .line 127
    int-to-float v4, v8

    .line 128
    const/high16 v19, 0x43200000    # 160.0f

    .line 129
    .line 130
    div-float v4, v4, v19

    .line 131
    .line 132
    mul-float/2addr v4, v6

    .line 133
    sub-float v4, v3, v4

    .line 134
    .line 135
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    .line 136
    .line 137
    if-eqz v6, :cond_4

    .line 138
    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v5, ") scaledNewFontSize:"

    .line 148
    .line 149
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v5, ", maxWidthPixels:"

    .line 156
    .line 157
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-static {v6, v7, v13, v9, v12}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v6, v8, v11, v1, v10}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v6, v2, v15}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_4
    const/4 v5, 0x0

    .line 170
    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 171
    .line 172
    .line 173
    move-object/from16 v4, v16

    .line 174
    .line 175
    move-object/from16 v6, v17

    .line 176
    .line 177
    move/from16 v5, v18

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_5
    :goto_3
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    .line 181
    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    const-string v0, " done ! ) maxWidthPixels:"

    .line 185
    .line 186
    invoke-static {v14, v5, v0, v7, v13}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0, v9, v12, v8, v11}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :cond_6
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x11

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v2, "display"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplay:Landroid/view/Display;

    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplay:Landroid/view/Display;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->dynamicallyReduceTextSize()V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v1, "sec-400"

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->dynamicallyReduceTextSize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplay:Landroid/view/Display;

    .line 8
    .line 9
    return-void
.end method
