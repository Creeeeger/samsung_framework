.class public final Landroidx/constraintlayout/core/widgets/Flow;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mAlignedDimensions:[I

.field public final mChainList:Ljava/util/ArrayList;

.field public mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mDisplayedWidgetsCount:I

.field public mFirstHorizontalBias:F

.field public mFirstHorizontalStyle:I

.field public mFirstVerticalBias:F

.field public mFirstVerticalStyle:I

.field public mHorizontalAlign:I

.field public mHorizontalBias:F

.field public mHorizontalGap:I

.field public mHorizontalStyle:I

.field public mLastHorizontalBias:F

.field public mLastHorizontalStyle:I

.field public mLastVerticalBias:F

.field public mLastVerticalStyle:I

.field public mMaxElementsWrap:I

.field public mOrientation:I

.field public mVerticalAlign:I

.field public mVerticalBias:F

.field public mVerticalGap:I

.field public mVerticalStyle:I

.field public mWrapMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 16
    .line 17
    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    .line 19
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 20
    .line 21
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 22
    .line 23
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 24
    .line 25
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 26
    .line 27
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 28
    .line 29
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 33
    .line 34
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 38
    .line 39
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 40
    .line 41
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 42
    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 44
    .line 45
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 56
    .line 57
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 58
    .line 59
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 60
    .line 61
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 11
    .line 12
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, p2

    .line 19
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v1, :cond_1b

    .line 24
    .line 25
    if-eq v1, v0, :cond_19

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    .line 33
    goto/16 :goto_e

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    move v3, p2

    .line 40
    :goto_1
    if-ge v3, v1, :cond_1c

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 47
    .line 48
    add-int/lit8 v5, v1, -0x1

    .line 49
    .line 50
    if-ne v3, v5, :cond_2

    .line 51
    .line 52
    move v5, v0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v5, p2

    .line 55
    :goto_2
    invoke-virtual {v4, v3, p1, v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(IZZ)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 62
    .line 63
    if-eqz v1, :cond_1c

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 66
    .line 67
    if-eqz v1, :cond_1c

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 70
    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    goto/16 :goto_e

    .line 74
    .line 75
    :cond_4
    move v1, p2

    .line 76
    :goto_3
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 77
    .line 78
    if-ge v1, v2, :cond_5

    .line 79
    .line 80
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 81
    .line 82
    aget-object v2, v2, v1

    .line 83
    .line 84
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 91
    .line 92
    aget v2, v1, p2

    .line 93
    .line 94
    aget v1, v1, v0

    .line 95
    .line 96
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    move v5, p2

    .line 100
    :goto_4
    const/16 v6, 0x8

    .line 101
    .line 102
    if-ge v5, v2, :cond_c

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    sub-int v3, v2, v5

    .line 107
    .line 108
    sub-int/2addr v3, v0

    .line 109
    const/high16 v7, 0x3f800000    # 1.0f

    .line 110
    .line 111
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 112
    .line 113
    sub-float/2addr v7, v8

    .line 114
    goto :goto_5

    .line 115
    :cond_6
    move v7, v3

    .line 116
    move v3, v5

    .line 117
    :goto_5
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 118
    .line 119
    aget-object v3, v8, v3

    .line 120
    .line 121
    if-eqz v3, :cond_b

    .line 122
    .line 123
    iget v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 124
    .line 125
    if-ne v8, v6, :cond_7

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_7
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 129
    .line 130
    if-nez v5, :cond_8

    .line 131
    .line 132
    iget v8, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 133
    .line 134
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 135
    .line 136
    invoke-virtual {v3, v6, v9, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 137
    .line 138
    .line 139
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 140
    .line 141
    iput v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 142
    .line 143
    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 144
    .line 145
    :cond_8
    add-int/lit8 v8, v2, -0x1

    .line 146
    .line 147
    if-ne v5, v8, :cond_9

    .line 148
    .line 149
    iget v8, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 150
    .line 151
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 152
    .line 153
    iget-object v10, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 154
    .line 155
    invoke-virtual {v3, v9, v10, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 156
    .line 157
    .line 158
    :cond_9
    if-lez v5, :cond_a

    .line 159
    .line 160
    if-eqz v4, :cond_a

    .line 161
    .line 162
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 163
    .line 164
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 165
    .line 166
    invoke-virtual {v3, v6, v9, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v9, v6, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 170
    .line 171
    .line 172
    :cond_a
    move-object v4, v3

    .line 173
    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 174
    .line 175
    move v3, v7

    .line 176
    goto :goto_4

    .line 177
    :cond_c
    move p1, p2

    .line 178
    :goto_7
    if-ge p1, v1, :cond_12

    .line 179
    .line 180
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 181
    .line 182
    aget-object v3, v3, p1

    .line 183
    .line 184
    if-eqz v3, :cond_11

    .line 185
    .line 186
    iget v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 187
    .line 188
    if-ne v5, v6, :cond_d

    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_d
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 192
    .line 193
    if-nez p1, :cond_e

    .line 194
    .line 195
    iget v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 196
    .line 197
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 198
    .line 199
    invoke-virtual {v3, v5, v8, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 200
    .line 201
    .line 202
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 203
    .line 204
    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 205
    .line 206
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 207
    .line 208
    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 209
    .line 210
    :cond_e
    add-int/lit8 v7, v1, -0x1

    .line 211
    .line 212
    if-ne p1, v7, :cond_f

    .line 213
    .line 214
    iget v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 215
    .line 216
    iget-object v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 217
    .line 218
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 219
    .line 220
    invoke-virtual {v3, v8, v9, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 221
    .line 222
    .line 223
    :cond_f
    if-lez p1, :cond_10

    .line 224
    .line 225
    if-eqz v4, :cond_10

    .line 226
    .line 227
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 228
    .line 229
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 230
    .line 231
    invoke-virtual {v3, v5, v8, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v8, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 235
    .line 236
    .line 237
    :cond_10
    move-object v4, v3

    .line 238
    :cond_11
    :goto_8
    add-int/lit8 p1, p1, 0x1

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_12
    move p1, p2

    .line 242
    :goto_9
    if-ge p1, v2, :cond_1c

    .line 243
    .line 244
    move v3, p2

    .line 245
    :goto_a
    if-ge v3, v1, :cond_18

    .line 246
    .line 247
    mul-int v4, v3, v2

    .line 248
    .line 249
    add-int/2addr v4, p1

    .line 250
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 251
    .line 252
    if-ne v5, v0, :cond_13

    .line 253
    .line 254
    mul-int v4, p1, v1

    .line 255
    .line 256
    add-int/2addr v4, v3

    .line 257
    :cond_13
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 258
    .line 259
    array-length v7, v5

    .line 260
    if-lt v4, v7, :cond_14

    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_14
    aget-object v4, v5, v4

    .line 264
    .line 265
    if-eqz v4, :cond_17

    .line 266
    .line 267
    iget v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 268
    .line 269
    if-ne v5, v6, :cond_15

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_15
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 273
    .line 274
    aget-object v5, v5, p1

    .line 275
    .line 276
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 277
    .line 278
    aget-object v7, v7, v3

    .line 279
    .line 280
    if-eq v4, v5, :cond_16

    .line 281
    .line 282
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 283
    .line 284
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 285
    .line 286
    invoke-virtual {v4, v9, v8, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 287
    .line 288
    .line 289
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 290
    .line 291
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 292
    .line 293
    invoke-virtual {v4, v8, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 294
    .line 295
    .line 296
    :cond_16
    if-eq v4, v7, :cond_17

    .line 297
    .line 298
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 299
    .line 300
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 301
    .line 302
    invoke-virtual {v4, v8, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 303
    .line 304
    .line 305
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 306
    .line 307
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 308
    .line 309
    invoke-virtual {v4, v5, v7, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 310
    .line 311
    .line 312
    :cond_17
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 313
    .line 314
    goto :goto_a

    .line 315
    :cond_18
    add-int/lit8 p1, p1, 0x1

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    move v3, p2

    .line 323
    :goto_c
    if-ge v3, v1, :cond_1c

    .line 324
    .line 325
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 330
    .line 331
    add-int/lit8 v5, v1, -0x1

    .line 332
    .line 333
    if-ne v3, v5, :cond_1a

    .line 334
    .line 335
    move v5, v0

    .line 336
    goto :goto_d

    .line 337
    :cond_1a
    move v5, p2

    .line 338
    :goto_d
    invoke-virtual {v4, v3, p1, v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(IZZ)V

    .line 339
    .line 340
    .line 341
    add-int/lit8 v3, v3, 0x1

    .line 342
    .line 343
    goto :goto_c

    .line 344
    :cond_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-lez v1, :cond_1c

    .line 349
    .line 350
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 355
    .line 356
    invoke-virtual {v1, p2, p1, v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(IZZ)V

    .line 357
    .line 358
    .line 359
    :cond_1c
    :goto_e
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 360
    .line 361
    return-void
.end method

.method public final copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/constraintlayout/core/widgets/Flow;

    .line 5
    .line 6
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 7
    .line 8
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 9
    .line 10
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 11
    .line 12
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 13
    .line 14
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 15
    .line 16
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 17
    .line 18
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 19
    .line 20
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 21
    .line 22
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 23
    .line 24
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 25
    .line 26
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 27
    .line 28
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 29
    .line 30
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 31
    .line 32
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 33
    .line 34
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 35
    .line 36
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 37
    .line 38
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 39
    .line 40
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 41
    .line 42
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 43
    .line 44
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 45
    .line 46
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 47
    .line 48
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 49
    .line 50
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 51
    .line 52
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 53
    .line 54
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 55
    .line 56
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 57
    .line 58
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 59
    .line 60
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 61
    .line 62
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 63
    .line 64
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 65
    .line 66
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 67
    .line 68
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 69
    .line 70
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 71
    .line 72
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 73
    .line 74
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 75
    .line 76
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 77
    .line 78
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 79
    .line 80
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 81
    .line 82
    return-void
.end method

.method public final getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 11
    .line 12
    if-ne v1, v3, :cond_5

    .line 13
    .line 14
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    const/4 v3, 0x2

    .line 20
    if-ne v1, v3, :cond_3

    .line 21
    .line 22
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 23
    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr v1, p2

    .line 26
    float-to-int p2, v1

    .line 27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eq p2, v1, :cond_2

    .line 32
    .line 33
    iput-boolean v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 34
    .line 35
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    .line 37
    aget-object v5, v1, v0

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    move-object v3, p0

    .line 46
    move-object v4, p1

    .line 47
    move v8, p2

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return p2

    .line 52
    :cond_3
    if-ne v1, v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0

    .line 59
    :cond_4
    const/4 p0, 0x3

    .line 60
    if-ne v1, p0, :cond_5

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    int-to-float p0, p0

    .line 67
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 68
    .line 69
    mul-float/2addr p0, p1

    .line 70
    const/high16 p1, 0x3f000000    # 0.5f

    .line 71
    .line 72
    add-float/2addr p0, p1

    .line 73
    float-to-int p0, p0

    .line 74
    return p0

    .line 75
    :cond_5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0
.end method

.method public final getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 10
    .line 11
    if-ne v1, v2, :cond_5

    .line 12
    .line 13
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v0, :cond_3

    .line 21
    .line 22
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 23
    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr v0, p2

    .line 26
    float-to-int p2, v0

    .line 27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq p2, v0, :cond_2

    .line 32
    .line 33
    iput-boolean v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 34
    .line 35
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    .line 37
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 38
    .line 39
    aget-object v7, v0, v2

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    move-object v3, p0

    .line 46
    move-object v4, p1

    .line 47
    move v6, p2

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return p2

    .line 52
    :cond_3
    if-ne v1, v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0

    .line 59
    :cond_4
    const/4 p0, 0x3

    .line 60
    if-ne v1, p0, :cond_5

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    int-to-float p0, p0

    .line 67
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 68
    .line 69
    mul-float/2addr p0, p1

    .line 70
    const/high16 p1, 0x3f000000    # 0.5f

    .line 71
    .line 72
    add-float/2addr p0, p1

    .line 73
    float-to-int p0, p0

    .line 74
    return p0

    .line 75
    :cond_5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0
.end method

.method public final measure(IIII)V
    .locals 37

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    iget v0, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    const/4 v10, 0x1

    .line 7
    if-lez v0, :cond_a

    .line 8
    .line 9
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    move v0, v9

    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_1
    move v2, v9

    .line 25
    :goto_1
    iget v3, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 26
    .line 27
    if-ge v2, v3, :cond_9

    .line 28
    .line 29
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    .line 31
    aget-object v3, v3, v2

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_2
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 37
    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_3
    invoke-virtual {v3, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 50
    .line 51
    if-ne v4, v6, :cond_4

    .line 52
    .line 53
    iget v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 54
    .line 55
    if-eq v7, v10, :cond_4

    .line 56
    .line 57
    if-ne v5, v6, :cond_4

    .line 58
    .line 59
    iget v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 60
    .line 61
    if-eq v7, v10, :cond_4

    .line 62
    .line 63
    move v7, v10

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v7, v9

    .line 66
    :goto_2
    if-eqz v7, :cond_5

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_5
    if-ne v4, v6, :cond_6

    .line 70
    .line 71
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 72
    .line 73
    :cond_6
    if-ne v5, v6, :cond_7

    .line 74
    .line 75
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 76
    .line 77
    :cond_7
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 78
    .line 79
    iput-object v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 80
    .line 81
    iput-object v5, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iput v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 88
    .line 89
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iput v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 94
    .line 95
    move-object v4, v0

    .line 96
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 97
    .line 98
    invoke-virtual {v4, v3, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 99
    .line 100
    .line 101
    iget v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 104
    .line 105
    .line 106
    iget v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 109
    .line 110
    .line 111
    iget v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 112
    .line 113
    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 114
    .line 115
    if-lez v4, :cond_8

    .line 116
    .line 117
    move v4, v10

    .line 118
    goto :goto_3

    .line 119
    :cond_8
    move v4, v9

    .line 120
    :goto_3
    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 121
    .line 122
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_9
    move v0, v10

    .line 126
    :goto_5
    if-nez v0, :cond_a

    .line 127
    .line 128
    iput v9, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 129
    .line 130
    iput v9, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredHeight:I

    .line 131
    .line 132
    iput-boolean v9, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 133
    .line 134
    return-void

    .line 135
    :cond_a
    iget v11, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 136
    .line 137
    iget v12, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 138
    .line 139
    iget v13, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 140
    .line 141
    iget v14, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 142
    .line 143
    const/4 v0, 0x2

    .line 144
    new-array v15, v0, [I

    .line 145
    .line 146
    sub-int v2, p2, v11

    .line 147
    .line 148
    sub-int/2addr v2, v12

    .line 149
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 150
    .line 151
    if-ne v3, v10, :cond_b

    .line 152
    .line 153
    sub-int v2, p4, v13

    .line 154
    .line 155
    sub-int/2addr v2, v14

    .line 156
    :cond_b
    move v6, v2

    .line 157
    const/4 v2, -0x1

    .line 158
    if-nez v3, :cond_d

    .line 159
    .line 160
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 161
    .line 162
    if-ne v3, v2, :cond_c

    .line 163
    .line 164
    iput v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 165
    .line 166
    :cond_c
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 167
    .line 168
    if-ne v3, v2, :cond_f

    .line 169
    .line 170
    iput v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_d
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 174
    .line 175
    if-ne v3, v2, :cond_e

    .line 176
    .line 177
    iput v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 178
    .line 179
    :cond_e
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 180
    .line 181
    if-ne v3, v2, :cond_f

    .line 182
    .line 183
    iput v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 184
    .line 185
    :cond_f
    :goto_6
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 186
    .line 187
    move v3, v9

    .line 188
    move v4, v3

    .line 189
    :goto_7
    iget v5, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 190
    .line 191
    const/16 v7, 0x8

    .line 192
    .line 193
    if-ge v3, v5, :cond_11

    .line 194
    .line 195
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 196
    .line 197
    aget-object v5, v5, v3

    .line 198
    .line 199
    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 200
    .line 201
    if-ne v5, v7, :cond_10

    .line 202
    .line 203
    add-int/lit8 v4, v4, 0x1

    .line 204
    .line 205
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_11
    if-lez v4, :cond_13

    .line 209
    .line 210
    sub-int/2addr v5, v4

    .line 211
    new-array v2, v5, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 212
    .line 213
    move v3, v9

    .line 214
    move v5, v3

    .line 215
    :goto_8
    iget v4, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 216
    .line 217
    if-ge v3, v4, :cond_13

    .line 218
    .line 219
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 220
    .line 221
    aget-object v4, v4, v3

    .line 222
    .line 223
    iget v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 224
    .line 225
    if-eq v1, v7, :cond_12

    .line 226
    .line 227
    aput-object v4, v2, v5

    .line 228
    .line 229
    add-int/lit8 v5, v5, 0x1

    .line 230
    .line 231
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 232
    .line 233
    goto :goto_8

    .line 234
    :cond_13
    move-object v7, v2

    .line 235
    iput-object v7, v8, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 236
    .line 237
    iput v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 238
    .line 239
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 240
    .line 241
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 242
    .line 243
    if-eqz v1, :cond_70

    .line 244
    .line 245
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 246
    .line 247
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 248
    .line 249
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 250
    .line 251
    move-object/from16 v27, v9

    .line 252
    .line 253
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 254
    .line 255
    if-eq v1, v10, :cond_56

    .line 256
    .line 257
    if-eq v1, v0, :cond_2f

    .line 258
    .line 259
    const/4 v0, 0x3

    .line 260
    if-eq v1, v0, :cond_14

    .line 261
    .line 262
    goto :goto_9

    .line 263
    :cond_14
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 264
    .line 265
    if-nez v5, :cond_15

    .line 266
    .line 267
    :goto_9
    move/from16 v32, v11

    .line 268
    .line 269
    move/from16 v33, v12

    .line 270
    .line 271
    move/from16 v34, v13

    .line 272
    .line 273
    move/from16 v30, v14

    .line 274
    .line 275
    move-object/from16 v35, v15

    .line 276
    .line 277
    goto/16 :goto_3f

    .line 278
    .line 279
    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 280
    .line 281
    .line 282
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 283
    .line 284
    iget-object v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 285
    .line 286
    move-object/from16 v17, v4

    .line 287
    .line 288
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 289
    .line 290
    move/from16 v18, v5

    .line 291
    .line 292
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 293
    .line 294
    move/from16 v19, v6

    .line 295
    .line 296
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 297
    .line 298
    move-object/from16 v16, v0

    .line 299
    .line 300
    move/from16 v28, v1

    .line 301
    .line 302
    move-object/from16 v1, p0

    .line 303
    .line 304
    move-object/from16 v20, v2

    .line 305
    .line 306
    move/from16 v2, v28

    .line 307
    .line 308
    move-object/from16 v21, v3

    .line 309
    .line 310
    move-object v3, v10

    .line 311
    move-object/from16 v10, v17

    .line 312
    .line 313
    move-object/from16 v29, v9

    .line 314
    .line 315
    move/from16 v9, v18

    .line 316
    .line 317
    move/from16 v30, v19

    .line 318
    .line 319
    move-object/from16 v31, v7

    .line 320
    .line 321
    move/from16 v7, v30

    .line 322
    .line 323
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    if-nez v28, :cond_1d

    .line 330
    .line 331
    const/4 v1, 0x0

    .line 332
    const/4 v2, 0x0

    .line 333
    const/4 v3, 0x0

    .line 334
    const/4 v7, 0x0

    .line 335
    :goto_a
    if-ge v7, v9, :cond_1c

    .line 336
    .line 337
    const/4 v4, 0x1

    .line 338
    add-int/lit8 v6, v1, 0x1

    .line 339
    .line 340
    aget-object v5, v31, v7

    .line 341
    .line 342
    move/from16 v4, v30

    .line 343
    .line 344
    invoke-virtual {v8, v5, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 345
    .line 346
    .line 347
    move-result v16

    .line 348
    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 349
    .line 350
    const/16 v17, 0x0

    .line 351
    .line 352
    aget-object v1, v1, v17

    .line 353
    .line 354
    move-object/from16 v17, v5

    .line 355
    .line 356
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 357
    .line 358
    if-ne v1, v5, :cond_16

    .line 359
    .line 360
    add-int/lit8 v2, v2, 0x1

    .line 361
    .line 362
    :cond_16
    move/from16 v18, v2

    .line 363
    .line 364
    if-eq v3, v4, :cond_17

    .line 365
    .line 366
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 367
    .line 368
    add-int/2addr v1, v3

    .line 369
    add-int v1, v1, v16

    .line 370
    .line 371
    if-le v1, v4, :cond_18

    .line 372
    .line 373
    :cond_17
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 374
    .line 375
    if-eqz v1, :cond_18

    .line 376
    .line 377
    const/4 v1, 0x1

    .line 378
    goto :goto_b

    .line 379
    :cond_18
    const/4 v1, 0x0

    .line 380
    :goto_b
    if-nez v1, :cond_19

    .line 381
    .line 382
    if-lez v7, :cond_19

    .line 383
    .line 384
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 385
    .line 386
    if-lez v2, :cond_19

    .line 387
    .line 388
    if-le v6, v2, :cond_19

    .line 389
    .line 390
    const/4 v1, 0x1

    .line 391
    :cond_19
    if-eqz v1, :cond_1a

    .line 392
    .line 393
    new-instance v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 394
    .line 395
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 396
    .line 397
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 398
    .line 399
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 400
    .line 401
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 402
    .line 403
    move-object/from16 v19, v0

    .line 404
    .line 405
    move-object v0, v5

    .line 406
    move-object/from16 v22, v1

    .line 407
    .line 408
    move-object/from16 v1, p0

    .line 409
    .line 410
    move-object/from16 v23, v2

    .line 411
    .line 412
    move/from16 v2, v28

    .line 413
    .line 414
    move/from16 v30, v4

    .line 415
    .line 416
    move-object/from16 v4, v23

    .line 417
    .line 418
    move/from16 v32, v11

    .line 419
    .line 420
    move/from16 v33, v12

    .line 421
    .line 422
    move-object/from16 v11, v17

    .line 423
    .line 424
    move-object v12, v5

    .line 425
    move-object/from16 v5, v22

    .line 426
    .line 427
    move/from16 v17, v6

    .line 428
    .line 429
    move-object/from16 v6, v19

    .line 430
    .line 431
    move/from16 v34, v13

    .line 432
    .line 433
    move v13, v7

    .line 434
    move/from16 v7, v30

    .line 435
    .line 436
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 437
    .line 438
    .line 439
    iput v13, v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 440
    .line 441
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-object v0, v12

    .line 445
    move/from16 v3, v16

    .line 446
    .line 447
    move/from16 v1, v17

    .line 448
    .line 449
    goto :goto_c

    .line 450
    :cond_1a
    move/from16 v30, v4

    .line 451
    .line 452
    move/from16 v32, v11

    .line 453
    .line 454
    move/from16 v33, v12

    .line 455
    .line 456
    move/from16 v34, v13

    .line 457
    .line 458
    move-object/from16 v11, v17

    .line 459
    .line 460
    move v13, v7

    .line 461
    if-lez v13, :cond_1b

    .line 462
    .line 463
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 464
    .line 465
    add-int v1, v1, v16

    .line 466
    .line 467
    add-int v16, v1, v3

    .line 468
    .line 469
    :cond_1b
    move/from16 v3, v16

    .line 470
    .line 471
    const/4 v1, 0x0

    .line 472
    :goto_c
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 473
    .line 474
    .line 475
    add-int/lit8 v7, v13, 0x1

    .line 476
    .line 477
    move/from16 v2, v18

    .line 478
    .line 479
    move/from16 v11, v32

    .line 480
    .line 481
    move/from16 v12, v33

    .line 482
    .line 483
    move/from16 v13, v34

    .line 484
    .line 485
    goto/16 :goto_a

    .line 486
    .line 487
    :cond_1c
    move/from16 v32, v11

    .line 488
    .line 489
    move/from16 v33, v12

    .line 490
    .line 491
    move/from16 v34, v13

    .line 492
    .line 493
    move/from16 v13, v30

    .line 494
    .line 495
    move/from16 v30, v14

    .line 496
    .line 497
    goto/16 :goto_11

    .line 498
    .line 499
    :cond_1d
    move/from16 v32, v11

    .line 500
    .line 501
    move/from16 v33, v12

    .line 502
    .line 503
    move/from16 v34, v13

    .line 504
    .line 505
    const/4 v1, 0x0

    .line 506
    const/4 v2, 0x0

    .line 507
    const/4 v11, 0x0

    .line 508
    :goto_d
    if-ge v11, v9, :cond_24

    .line 509
    .line 510
    aget-object v12, v31, v11

    .line 511
    .line 512
    move/from16 v13, v30

    .line 513
    .line 514
    invoke-virtual {v8, v12, v13}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 515
    .line 516
    .line 517
    move-result v16

    .line 518
    iget-object v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 519
    .line 520
    const/4 v4, 0x1

    .line 521
    aget-object v3, v3, v4

    .line 522
    .line 523
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 524
    .line 525
    if-ne v3, v4, :cond_1e

    .line 526
    .line 527
    add-int/lit8 v1, v1, 0x1

    .line 528
    .line 529
    :cond_1e
    move/from16 v17, v1

    .line 530
    .line 531
    if-eq v2, v13, :cond_1f

    .line 532
    .line 533
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 534
    .line 535
    add-int/2addr v1, v2

    .line 536
    add-int v1, v1, v16

    .line 537
    .line 538
    if-le v1, v13, :cond_20

    .line 539
    .line 540
    :cond_1f
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 541
    .line 542
    if-eqz v1, :cond_20

    .line 543
    .line 544
    const/4 v1, 0x1

    .line 545
    goto :goto_e

    .line 546
    :cond_20
    const/4 v1, 0x0

    .line 547
    :goto_e
    if-nez v1, :cond_21

    .line 548
    .line 549
    if-lez v11, :cond_21

    .line 550
    .line 551
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 552
    .line 553
    if-lez v3, :cond_21

    .line 554
    .line 555
    if-gez v3, :cond_21

    .line 556
    .line 557
    const/4 v1, 0x1

    .line 558
    :cond_21
    if-eqz v1, :cond_22

    .line 559
    .line 560
    new-instance v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 561
    .line 562
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 563
    .line 564
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 565
    .line 566
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 567
    .line 568
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 569
    .line 570
    move-object v0, v7

    .line 571
    move-object/from16 v1, p0

    .line 572
    .line 573
    move/from16 v2, v28

    .line 574
    .line 575
    move/from16 v30, v14

    .line 576
    .line 577
    move-object v14, v7

    .line 578
    move v7, v13

    .line 579
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 580
    .line 581
    .line 582
    iput v11, v14, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 583
    .line 584
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-object v0, v14

    .line 588
    goto :goto_f

    .line 589
    :cond_22
    move/from16 v30, v14

    .line 590
    .line 591
    if-lez v11, :cond_23

    .line 592
    .line 593
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 594
    .line 595
    add-int v1, v1, v16

    .line 596
    .line 597
    add-int/2addr v1, v2

    .line 598
    move v2, v1

    .line 599
    goto :goto_10

    .line 600
    :cond_23
    :goto_f
    move/from16 v2, v16

    .line 601
    .line 602
    :goto_10
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 603
    .line 604
    .line 605
    add-int/lit8 v11, v11, 0x1

    .line 606
    .line 607
    move/from16 v1, v17

    .line 608
    .line 609
    move/from16 v14, v30

    .line 610
    .line 611
    move/from16 v30, v13

    .line 612
    .line 613
    goto :goto_d

    .line 614
    :cond_24
    move/from16 v13, v30

    .line 615
    .line 616
    move/from16 v30, v14

    .line 617
    .line 618
    move v2, v1

    .line 619
    :goto_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    iget v1, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 624
    .line 625
    iget v3, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 626
    .line 627
    iget v4, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 628
    .line 629
    iget v5, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 630
    .line 631
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 632
    .line 633
    const/4 v7, 0x0

    .line 634
    aget-object v9, v6, v7

    .line 635
    .line 636
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 637
    .line 638
    if-eq v9, v7, :cond_26

    .line 639
    .line 640
    const/4 v9, 0x1

    .line 641
    aget-object v6, v6, v9

    .line 642
    .line 643
    if-ne v6, v7, :cond_25

    .line 644
    .line 645
    goto :goto_12

    .line 646
    :cond_25
    const/4 v6, 0x0

    .line 647
    goto :goto_13

    .line 648
    :cond_26
    :goto_12
    const/4 v6, 0x1

    .line 649
    :goto_13
    if-lez v2, :cond_28

    .line 650
    .line 651
    if-eqz v6, :cond_28

    .line 652
    .line 653
    const/4 v2, 0x0

    .line 654
    :goto_14
    if-ge v2, v0, :cond_28

    .line 655
    .line 656
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v6

    .line 660
    check-cast v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 661
    .line 662
    if-nez v28, :cond_27

    .line 663
    .line 664
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 665
    .line 666
    .line 667
    move-result v7

    .line 668
    sub-int v7, v13, v7

    .line 669
    .line 670
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 671
    .line 672
    .line 673
    goto :goto_15

    .line 674
    :cond_27
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 675
    .line 676
    .line 677
    move-result v7

    .line 678
    sub-int v7, v13, v7

    .line 679
    .line 680
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 681
    .line 682
    .line 683
    :goto_15
    add-int/lit8 v2, v2, 0x1

    .line 684
    .line 685
    goto :goto_14

    .line 686
    :cond_28
    move v6, v3

    .line 687
    move-object/from16 v2, v21

    .line 688
    .line 689
    move-object/from16 v14, v27

    .line 690
    .line 691
    move-object/from16 v12, v29

    .line 692
    .line 693
    const/4 v7, 0x0

    .line 694
    const/4 v9, 0x0

    .line 695
    const/4 v11, 0x0

    .line 696
    move v3, v1

    .line 697
    move-object/from16 v1, v20

    .line 698
    .line 699
    :goto_16
    if-ge v7, v0, :cond_2e

    .line 700
    .line 701
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v16

    .line 705
    move-object/from16 v35, v15

    .line 706
    .line 707
    move-object/from16 v15, v16

    .line 708
    .line 709
    check-cast v15, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 710
    .line 711
    if-nez v28, :cond_2b

    .line 712
    .line 713
    add-int/lit8 v5, v0, -0x1

    .line 714
    .line 715
    if-ge v7, v5, :cond_29

    .line 716
    .line 717
    add-int/lit8 v5, v7, 0x1

    .line 718
    .line 719
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v5

    .line 723
    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 724
    .line 725
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 726
    .line 727
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 728
    .line 729
    move-object v12, v5

    .line 730
    move-object/from16 v36, v10

    .line 731
    .line 732
    const/4 v5, 0x0

    .line 733
    goto :goto_17

    .line 734
    :cond_29
    iget v5, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 735
    .line 736
    move-object/from16 v36, v10

    .line 737
    .line 738
    move-object/from16 v12, v29

    .line 739
    .line 740
    :goto_17
    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 741
    .line 742
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 743
    .line 744
    move-object/from16 v16, v15

    .line 745
    .line 746
    move/from16 v17, v28

    .line 747
    .line 748
    move-object/from16 v18, v1

    .line 749
    .line 750
    move-object/from16 v19, v2

    .line 751
    .line 752
    move-object/from16 v20, v14

    .line 753
    .line 754
    move-object/from16 v21, v12

    .line 755
    .line 756
    move/from16 v22, v3

    .line 757
    .line 758
    move/from16 v23, v6

    .line 759
    .line 760
    move/from16 v24, v4

    .line 761
    .line 762
    move/from16 v25, v5

    .line 763
    .line 764
    move/from16 v26, v13

    .line 765
    .line 766
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 770
    .line 771
    .line 772
    move-result v2

    .line 773
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    .line 774
    .line 775
    .line 776
    move-result v2

    .line 777
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 778
    .line 779
    .line 780
    move-result v6

    .line 781
    add-int/2addr v6, v11

    .line 782
    if-lez v7, :cond_2a

    .line 783
    .line 784
    iget v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 785
    .line 786
    add-int/2addr v6, v9

    .line 787
    :cond_2a
    move/from16 v31, v0

    .line 788
    .line 789
    move v9, v2

    .line 790
    move v11, v6

    .line 791
    move-object v2, v10

    .line 792
    move-object/from16 v10, v36

    .line 793
    .line 794
    const/4 v6, 0x0

    .line 795
    goto :goto_19

    .line 796
    :cond_2b
    move-object/from16 v36, v10

    .line 797
    .line 798
    add-int/lit8 v4, v0, -0x1

    .line 799
    .line 800
    if-ge v7, v4, :cond_2c

    .line 801
    .line 802
    add-int/lit8 v4, v7, 0x1

    .line 803
    .line 804
    move-object/from16 v10, v36

    .line 805
    .line 806
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v4

    .line 810
    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 811
    .line 812
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 813
    .line 814
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 815
    .line 816
    move/from16 v31, v0

    .line 817
    .line 818
    move-object v14, v4

    .line 819
    const/4 v4, 0x0

    .line 820
    goto :goto_18

    .line 821
    :cond_2c
    move-object/from16 v10, v36

    .line 822
    .line 823
    iget v4, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 824
    .line 825
    move/from16 v31, v0

    .line 826
    .line 827
    move-object/from16 v14, v27

    .line 828
    .line 829
    :goto_18
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 830
    .line 831
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 832
    .line 833
    move-object/from16 v16, v15

    .line 834
    .line 835
    move/from16 v17, v28

    .line 836
    .line 837
    move-object/from16 v18, v1

    .line 838
    .line 839
    move-object/from16 v19, v2

    .line 840
    .line 841
    move-object/from16 v20, v14

    .line 842
    .line 843
    move-object/from16 v21, v12

    .line 844
    .line 845
    move/from16 v22, v3

    .line 846
    .line 847
    move/from16 v23, v6

    .line 848
    .line 849
    move/from16 v24, v4

    .line 850
    .line 851
    move/from16 v25, v5

    .line 852
    .line 853
    move/from16 v26, v13

    .line 854
    .line 855
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 859
    .line 860
    .line 861
    move-result v1

    .line 862
    add-int/2addr v1, v9

    .line 863
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 864
    .line 865
    .line 866
    move-result v3

    .line 867
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    .line 868
    .line 869
    .line 870
    move-result v3

    .line 871
    if-lez v7, :cond_2d

    .line 872
    .line 873
    iget v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 874
    .line 875
    add-int/2addr v1, v9

    .line 876
    :cond_2d
    move v9, v1

    .line 877
    move v11, v3

    .line 878
    const/4 v3, 0x0

    .line 879
    move-object v1, v0

    .line 880
    :goto_19
    add-int/lit8 v7, v7, 0x1

    .line 881
    .line 882
    move/from16 v0, v31

    .line 883
    .line 884
    move-object/from16 v15, v35

    .line 885
    .line 886
    goto/16 :goto_16

    .line 887
    .line 888
    :cond_2e
    move-object/from16 v35, v15

    .line 889
    .line 890
    const/4 v0, 0x0

    .line 891
    aput v9, v35, v0

    .line 892
    .line 893
    const/4 v0, 0x1

    .line 894
    aput v11, v35, v0

    .line 895
    .line 896
    goto/16 :goto_3f

    .line 897
    .line 898
    :cond_2f
    move v9, v5

    .line 899
    move-object/from16 v31, v7

    .line 900
    .line 901
    move/from16 v32, v11

    .line 902
    .line 903
    move/from16 v33, v12

    .line 904
    .line 905
    move/from16 v34, v13

    .line 906
    .line 907
    move/from16 v30, v14

    .line 908
    .line 909
    move-object/from16 v35, v15

    .line 910
    .line 911
    move v13, v6

    .line 912
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 913
    .line 914
    if-nez v1, :cond_35

    .line 915
    .line 916
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 917
    .line 918
    if-gtz v2, :cond_34

    .line 919
    .line 920
    const/4 v2, 0x0

    .line 921
    const/4 v3, 0x0

    .line 922
    const/4 v4, 0x0

    .line 923
    :goto_1a
    if-ge v2, v9, :cond_33

    .line 924
    .line 925
    if-lez v2, :cond_30

    .line 926
    .line 927
    iget v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 928
    .line 929
    add-int/2addr v3, v5

    .line 930
    :cond_30
    aget-object v5, v31, v2

    .line 931
    .line 932
    if-nez v5, :cond_31

    .line 933
    .line 934
    goto :goto_1b

    .line 935
    :cond_31
    invoke-virtual {v8, v5, v13}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 936
    .line 937
    .line 938
    move-result v5

    .line 939
    add-int/2addr v5, v3

    .line 940
    if-le v5, v13, :cond_32

    .line 941
    .line 942
    goto :goto_1c

    .line 943
    :cond_32
    add-int/lit8 v4, v4, 0x1

    .line 944
    .line 945
    move v3, v5

    .line 946
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    .line 947
    .line 948
    goto :goto_1a

    .line 949
    :cond_33
    :goto_1c
    move v2, v4

    .line 950
    :cond_34
    move v3, v2

    .line 951
    const/4 v2, 0x0

    .line 952
    goto :goto_20

    .line 953
    :cond_35
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 954
    .line 955
    if-gtz v2, :cond_3a

    .line 956
    .line 957
    const/4 v2, 0x0

    .line 958
    const/4 v3, 0x0

    .line 959
    const/4 v4, 0x0

    .line 960
    :goto_1d
    if-ge v2, v9, :cond_39

    .line 961
    .line 962
    if-lez v2, :cond_36

    .line 963
    .line 964
    iget v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 965
    .line 966
    add-int/2addr v3, v5

    .line 967
    :cond_36
    aget-object v5, v31, v2

    .line 968
    .line 969
    if-nez v5, :cond_37

    .line 970
    .line 971
    goto :goto_1e

    .line 972
    :cond_37
    invoke-virtual {v8, v5, v13}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 973
    .line 974
    .line 975
    move-result v5

    .line 976
    add-int/2addr v5, v3

    .line 977
    if-le v5, v13, :cond_38

    .line 978
    .line 979
    goto :goto_1f

    .line 980
    :cond_38
    add-int/lit8 v4, v4, 0x1

    .line 981
    .line 982
    move v3, v5

    .line 983
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    .line 984
    .line 985
    goto :goto_1d

    .line 986
    :cond_39
    :goto_1f
    move v2, v4

    .line 987
    :cond_3a
    const/4 v3, 0x0

    .line 988
    :goto_20
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 989
    .line 990
    if-nez v4, :cond_3b

    .line 991
    .line 992
    new-array v0, v0, [I

    .line 993
    .line 994
    iput-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 995
    .line 996
    :cond_3b
    if-nez v2, :cond_3c

    .line 997
    .line 998
    const/4 v0, 0x1

    .line 999
    if-eq v1, v0, :cond_3d

    .line 1000
    .line 1001
    :cond_3c
    if-nez v3, :cond_3e

    .line 1002
    .line 1003
    if-nez v1, :cond_3e

    .line 1004
    .line 1005
    :cond_3d
    move/from16 v4, p4

    .line 1006
    .line 1007
    move v5, v1

    .line 1008
    move v6, v2

    .line 1009
    move v7, v3

    .line 1010
    move v10, v9

    .line 1011
    move/from16 v14, v30

    .line 1012
    .line 1013
    move/from16 v11, v32

    .line 1014
    .line 1015
    move/from16 v12, v33

    .line 1016
    .line 1017
    move-object/from16 v15, v35

    .line 1018
    .line 1019
    const/4 v0, 0x1

    .line 1020
    move/from16 v1, p1

    .line 1021
    .line 1022
    move/from16 v2, p2

    .line 1023
    .line 1024
    move/from16 v3, p3

    .line 1025
    .line 1026
    move-object v9, v8

    .line 1027
    goto/16 :goto_2e

    .line 1028
    .line 1029
    :cond_3e
    move/from16 v4, p4

    .line 1030
    .line 1031
    move v5, v1

    .line 1032
    move v6, v2

    .line 1033
    move v7, v3

    .line 1034
    move-object v0, v8

    .line 1035
    move/from16 v14, v30

    .line 1036
    .line 1037
    move-object/from16 v10, v31

    .line 1038
    .line 1039
    move/from16 v11, v32

    .line 1040
    .line 1041
    move/from16 v12, v33

    .line 1042
    .line 1043
    move-object/from16 v15, v35

    .line 1044
    .line 1045
    const/16 v17, 0x0

    .line 1046
    .line 1047
    move/from16 v1, p1

    .line 1048
    .line 1049
    move/from16 v2, p2

    .line 1050
    .line 1051
    move/from16 v3, p3

    .line 1052
    .line 1053
    :goto_21
    if-nez v17, :cond_55

    .line 1054
    .line 1055
    if-nez v5, :cond_3f

    .line 1056
    .line 1057
    int-to-float v6, v9

    .line 1058
    move-object/from16 p0, v0

    .line 1059
    .line 1060
    int-to-float v0, v7

    .line 1061
    div-float/2addr v6, v0

    .line 1062
    move/from16 p1, v1

    .line 1063
    .line 1064
    float-to-double v0, v6

    .line 1065
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 1066
    .line 1067
    .line 1068
    move-result-wide v0

    .line 1069
    double-to-int v0, v0

    .line 1070
    move v6, v0

    .line 1071
    goto :goto_22

    .line 1072
    :cond_3f
    move-object/from16 p0, v0

    .line 1073
    .line 1074
    move/from16 p1, v1

    .line 1075
    .line 1076
    int-to-float v0, v9

    .line 1077
    int-to-float v1, v6

    .line 1078
    div-float/2addr v0, v1

    .line 1079
    float-to-double v0, v0

    .line 1080
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 1081
    .line 1082
    .line 1083
    move-result-wide v0

    .line 1084
    double-to-int v0, v0

    .line 1085
    move v7, v0

    .line 1086
    :goto_22
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1087
    .line 1088
    if-eqz v0, :cond_41

    .line 1089
    .line 1090
    array-length v1, v0

    .line 1091
    if-ge v1, v7, :cond_40

    .line 1092
    .line 1093
    goto :goto_23

    .line 1094
    :cond_40
    const/4 v1, 0x0

    .line 1095
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1096
    .line 1097
    .line 1098
    goto :goto_24

    .line 1099
    :cond_41
    :goto_23
    const/4 v1, 0x0

    .line 1100
    new-array v0, v7, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1101
    .line 1102
    iput-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1103
    .line 1104
    :goto_24
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1105
    .line 1106
    if-eqz v0, :cond_43

    .line 1107
    .line 1108
    array-length v1, v0

    .line 1109
    if-ge v1, v6, :cond_42

    .line 1110
    .line 1111
    goto :goto_25

    .line 1112
    :cond_42
    const/4 v1, 0x0

    .line 1113
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1114
    .line 1115
    .line 1116
    goto :goto_26

    .line 1117
    :cond_43
    :goto_25
    new-array v0, v6, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1118
    .line 1119
    iput-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1120
    .line 1121
    :goto_26
    const/4 v0, 0x0

    .line 1122
    :goto_27
    if-ge v0, v7, :cond_4c

    .line 1123
    .line 1124
    const/4 v1, 0x0

    .line 1125
    :goto_28
    if-ge v1, v6, :cond_4b

    .line 1126
    .line 1127
    mul-int v18, v1, v7

    .line 1128
    .line 1129
    add-int v18, v18, v0

    .line 1130
    .line 1131
    move/from16 p2, v2

    .line 1132
    .line 1133
    const/4 v2, 0x1

    .line 1134
    if-ne v5, v2, :cond_44

    .line 1135
    .line 1136
    mul-int v2, v0, v6

    .line 1137
    .line 1138
    add-int v18, v2, v1

    .line 1139
    .line 1140
    :cond_44
    move/from16 p3, v3

    .line 1141
    .line 1142
    move/from16 v2, v18

    .line 1143
    .line 1144
    array-length v3, v10

    .line 1145
    if-lt v2, v3, :cond_45

    .line 1146
    .line 1147
    :goto_29
    move/from16 p4, v4

    .line 1148
    .line 1149
    goto :goto_2a

    .line 1150
    :cond_45
    aget-object v2, v10, v2

    .line 1151
    .line 1152
    if-nez v2, :cond_46

    .line 1153
    .line 1154
    goto :goto_29

    .line 1155
    :cond_46
    invoke-virtual {v8, v2, v13}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1156
    .line 1157
    .line 1158
    move-result v3

    .line 1159
    move/from16 p4, v4

    .line 1160
    .line 1161
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1162
    .line 1163
    aget-object v4, v4, v0

    .line 1164
    .line 1165
    if-eqz v4, :cond_47

    .line 1166
    .line 1167
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1168
    .line 1169
    .line 1170
    move-result v4

    .line 1171
    if-ge v4, v3, :cond_48

    .line 1172
    .line 1173
    :cond_47
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1174
    .line 1175
    aput-object v2, v3, v0

    .line 1176
    .line 1177
    :cond_48
    invoke-virtual {v8, v2, v13}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1178
    .line 1179
    .line 1180
    move-result v3

    .line 1181
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1182
    .line 1183
    aget-object v4, v4, v1

    .line 1184
    .line 1185
    if-eqz v4, :cond_49

    .line 1186
    .line 1187
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1188
    .line 1189
    .line 1190
    move-result v4

    .line 1191
    if-ge v4, v3, :cond_4a

    .line 1192
    .line 1193
    :cond_49
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1194
    .line 1195
    aput-object v2, v3, v1

    .line 1196
    .line 1197
    :cond_4a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    .line 1198
    .line 1199
    move/from16 v2, p2

    .line 1200
    .line 1201
    move/from16 v3, p3

    .line 1202
    .line 1203
    move/from16 v4, p4

    .line 1204
    .line 1205
    goto :goto_28

    .line 1206
    :cond_4b
    move/from16 p2, v2

    .line 1207
    .line 1208
    move/from16 p3, v3

    .line 1209
    .line 1210
    move/from16 p4, v4

    .line 1211
    .line 1212
    add-int/lit8 v0, v0, 0x1

    .line 1213
    .line 1214
    goto :goto_27

    .line 1215
    :cond_4c
    move/from16 p2, v2

    .line 1216
    .line 1217
    move/from16 p3, v3

    .line 1218
    .line 1219
    move/from16 p4, v4

    .line 1220
    .line 1221
    const/4 v0, 0x0

    .line 1222
    const/4 v1, 0x0

    .line 1223
    :goto_2b
    if-ge v0, v7, :cond_4f

    .line 1224
    .line 1225
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1226
    .line 1227
    aget-object v2, v2, v0

    .line 1228
    .line 1229
    if-eqz v2, :cond_4e

    .line 1230
    .line 1231
    if-lez v0, :cond_4d

    .line 1232
    .line 1233
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1234
    .line 1235
    add-int/2addr v1, v3

    .line 1236
    :cond_4d
    invoke-virtual {v8, v2, v13}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1237
    .line 1238
    .line 1239
    move-result v2

    .line 1240
    add-int/2addr v2, v1

    .line 1241
    move v1, v2

    .line 1242
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    .line 1243
    .line 1244
    goto :goto_2b

    .line 1245
    :cond_4f
    const/4 v0, 0x0

    .line 1246
    const/4 v2, 0x0

    .line 1247
    :goto_2c
    if-ge v0, v6, :cond_52

    .line 1248
    .line 1249
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1250
    .line 1251
    aget-object v3, v3, v0

    .line 1252
    .line 1253
    if-eqz v3, :cond_51

    .line 1254
    .line 1255
    if-lez v0, :cond_50

    .line 1256
    .line 1257
    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1258
    .line 1259
    add-int/2addr v2, v4

    .line 1260
    :cond_50
    invoke-virtual {v8, v3, v13}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1261
    .line 1262
    .line 1263
    move-result v3

    .line 1264
    add-int/2addr v3, v2

    .line 1265
    move v2, v3

    .line 1266
    :cond_51
    add-int/lit8 v0, v0, 0x1

    .line 1267
    .line 1268
    goto :goto_2c

    .line 1269
    :cond_52
    const/4 v0, 0x0

    .line 1270
    aput v1, v35, v0

    .line 1271
    .line 1272
    const/4 v0, 0x1

    .line 1273
    aput v2, v35, v0

    .line 1274
    .line 1275
    if-nez v5, :cond_53

    .line 1276
    .line 1277
    if-le v1, v13, :cond_54

    .line 1278
    .line 1279
    if-le v7, v0, :cond_54

    .line 1280
    .line 1281
    add-int/lit8 v7, v7, -0x1

    .line 1282
    .line 1283
    goto :goto_2d

    .line 1284
    :cond_53
    if-le v2, v13, :cond_54

    .line 1285
    .line 1286
    if-le v6, v0, :cond_54

    .line 1287
    .line 1288
    add-int/lit8 v6, v6, -0x1

    .line 1289
    .line 1290
    :goto_2d
    move-object/from16 v0, p0

    .line 1291
    .line 1292
    move/from16 v1, p1

    .line 1293
    .line 1294
    move/from16 v2, p2

    .line 1295
    .line 1296
    move/from16 v3, p3

    .line 1297
    .line 1298
    move/from16 v4, p4

    .line 1299
    .line 1300
    goto/16 :goto_21

    .line 1301
    .line 1302
    :cond_54
    move/from16 v1, p1

    .line 1303
    .line 1304
    move/from16 v2, p2

    .line 1305
    .line 1306
    move/from16 v3, p3

    .line 1307
    .line 1308
    move/from16 v4, p4

    .line 1309
    .line 1310
    move-object/from16 v31, v10

    .line 1311
    .line 1312
    move v10, v9

    .line 1313
    move-object v9, v8

    .line 1314
    move-object/from16 v8, p0

    .line 1315
    .line 1316
    :goto_2e
    move/from16 v17, v0

    .line 1317
    .line 1318
    move-object v0, v8

    .line 1319
    move-object v8, v9

    .line 1320
    move v9, v10

    .line 1321
    move-object/from16 v10, v31

    .line 1322
    .line 1323
    goto/16 :goto_21

    .line 1324
    .line 1325
    :cond_55
    move-object/from16 p0, v0

    .line 1326
    .line 1327
    move/from16 p1, v1

    .line 1328
    .line 1329
    move/from16 p2, v2

    .line 1330
    .line 1331
    move/from16 p3, v3

    .line 1332
    .line 1333
    move/from16 p4, v4

    .line 1334
    .line 1335
    const/4 v0, 0x1

    .line 1336
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 1337
    .line 1338
    const/4 v2, 0x0

    .line 1339
    aput v7, v1, v2

    .line 1340
    .line 1341
    aput v6, v1, v0

    .line 1342
    .line 1343
    move-object/from16 v8, p0

    .line 1344
    .line 1345
    move/from16 v0, p1

    .line 1346
    .line 1347
    move/from16 v1, p2

    .line 1348
    .line 1349
    move/from16 v2, p3

    .line 1350
    .line 1351
    move/from16 v3, p4

    .line 1352
    .line 1353
    move/from16 v13, v34

    .line 1354
    .line 1355
    goto/16 :goto_40

    .line 1356
    .line 1357
    :cond_56
    move-object/from16 v20, v2

    .line 1358
    .line 1359
    move-object/from16 v21, v3

    .line 1360
    .line 1361
    move-object v10, v4

    .line 1362
    move-object/from16 v31, v7

    .line 1363
    .line 1364
    move-object/from16 v29, v9

    .line 1365
    .line 1366
    move/from16 v32, v11

    .line 1367
    .line 1368
    move/from16 v33, v12

    .line 1369
    .line 1370
    move/from16 v34, v13

    .line 1371
    .line 1372
    move/from16 v30, v14

    .line 1373
    .line 1374
    move-object/from16 v35, v15

    .line 1375
    .line 1376
    move v9, v5

    .line 1377
    move v13, v6

    .line 1378
    iget v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 1379
    .line 1380
    if-nez v9, :cond_57

    .line 1381
    .line 1382
    goto/16 :goto_3f

    .line 1383
    .line 1384
    :cond_57
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1385
    .line 1386
    .line 1387
    new-instance v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1388
    .line 1389
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1390
    .line 1391
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1392
    .line 1393
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1394
    .line 1395
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1396
    .line 1397
    move-object v0, v12

    .line 1398
    move-object/from16 v1, p0

    .line 1399
    .line 1400
    move v2, v11

    .line 1401
    move v7, v13

    .line 1402
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    if-nez v11, :cond_5e

    .line 1409
    .line 1410
    const/4 v0, 0x0

    .line 1411
    const/4 v1, 0x0

    .line 1412
    const/4 v14, 0x0

    .line 1413
    :goto_2f
    if-ge v14, v9, :cond_65

    .line 1414
    .line 1415
    aget-object v15, v31, v14

    .line 1416
    .line 1417
    invoke-virtual {v8, v15, v13}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1418
    .line 1419
    .line 1420
    move-result v16

    .line 1421
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1422
    .line 1423
    const/4 v3, 0x0

    .line 1424
    aget-object v2, v2, v3

    .line 1425
    .line 1426
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1427
    .line 1428
    if-ne v2, v3, :cond_58

    .line 1429
    .line 1430
    add-int/lit8 v0, v0, 0x1

    .line 1431
    .line 1432
    :cond_58
    move/from16 v17, v0

    .line 1433
    .line 1434
    if-eq v1, v13, :cond_59

    .line 1435
    .line 1436
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1437
    .line 1438
    add-int/2addr v0, v1

    .line 1439
    add-int v0, v0, v16

    .line 1440
    .line 1441
    if-le v0, v13, :cond_5a

    .line 1442
    .line 1443
    :cond_59
    iget-object v0, v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1444
    .line 1445
    if-eqz v0, :cond_5a

    .line 1446
    .line 1447
    const/4 v0, 0x1

    .line 1448
    goto :goto_30

    .line 1449
    :cond_5a
    const/4 v0, 0x0

    .line 1450
    :goto_30
    if-nez v0, :cond_5b

    .line 1451
    .line 1452
    if-lez v14, :cond_5b

    .line 1453
    .line 1454
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 1455
    .line 1456
    if-lez v2, :cond_5b

    .line 1457
    .line 1458
    rem-int v2, v14, v2

    .line 1459
    .line 1460
    if-nez v2, :cond_5b

    .line 1461
    .line 1462
    const/4 v0, 0x1

    .line 1463
    :cond_5b
    if-eqz v0, :cond_5c

    .line 1464
    .line 1465
    new-instance v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1466
    .line 1467
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1468
    .line 1469
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1470
    .line 1471
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1472
    .line 1473
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1474
    .line 1475
    move-object v0, v12

    .line 1476
    move-object/from16 v1, p0

    .line 1477
    .line 1478
    move v2, v11

    .line 1479
    move v7, v13

    .line 1480
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1481
    .line 1482
    .line 1483
    iput v14, v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 1484
    .line 1485
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    .line 1487
    .line 1488
    goto :goto_31

    .line 1489
    :cond_5c
    if-lez v14, :cond_5d

    .line 1490
    .line 1491
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1492
    .line 1493
    add-int v0, v0, v16

    .line 1494
    .line 1495
    add-int/2addr v0, v1

    .line 1496
    move v1, v0

    .line 1497
    goto :goto_32

    .line 1498
    :cond_5d
    :goto_31
    move/from16 v1, v16

    .line 1499
    .line 1500
    :goto_32
    invoke-virtual {v12, v15}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1501
    .line 1502
    .line 1503
    add-int/lit8 v14, v14, 0x1

    .line 1504
    .line 1505
    move/from16 v0, v17

    .line 1506
    .line 1507
    goto :goto_2f

    .line 1508
    :cond_5e
    const/4 v0, 0x0

    .line 1509
    const/4 v1, 0x0

    .line 1510
    const/4 v14, 0x0

    .line 1511
    :goto_33
    if-ge v14, v9, :cond_65

    .line 1512
    .line 1513
    aget-object v15, v31, v14

    .line 1514
    .line 1515
    invoke-virtual {v8, v15, v13}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1516
    .line 1517
    .line 1518
    move-result v16

    .line 1519
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1520
    .line 1521
    const/4 v3, 0x1

    .line 1522
    aget-object v2, v2, v3

    .line 1523
    .line 1524
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1525
    .line 1526
    if-ne v2, v3, :cond_5f

    .line 1527
    .line 1528
    add-int/lit8 v0, v0, 0x1

    .line 1529
    .line 1530
    :cond_5f
    move/from16 v17, v0

    .line 1531
    .line 1532
    if-eq v1, v13, :cond_60

    .line 1533
    .line 1534
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1535
    .line 1536
    add-int/2addr v0, v1

    .line 1537
    add-int v0, v0, v16

    .line 1538
    .line 1539
    if-le v0, v13, :cond_61

    .line 1540
    .line 1541
    :cond_60
    iget-object v0, v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1542
    .line 1543
    if-eqz v0, :cond_61

    .line 1544
    .line 1545
    const/4 v0, 0x1

    .line 1546
    goto :goto_34

    .line 1547
    :cond_61
    const/4 v0, 0x0

    .line 1548
    :goto_34
    if-nez v0, :cond_62

    .line 1549
    .line 1550
    if-lez v14, :cond_62

    .line 1551
    .line 1552
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 1553
    .line 1554
    if-lez v2, :cond_62

    .line 1555
    .line 1556
    rem-int v2, v14, v2

    .line 1557
    .line 1558
    if-nez v2, :cond_62

    .line 1559
    .line 1560
    const/4 v0, 0x1

    .line 1561
    :cond_62
    if-eqz v0, :cond_63

    .line 1562
    .line 1563
    new-instance v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1564
    .line 1565
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1566
    .line 1567
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1568
    .line 1569
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1570
    .line 1571
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1572
    .line 1573
    move-object v0, v12

    .line 1574
    move-object/from16 v1, p0

    .line 1575
    .line 1576
    move v2, v11

    .line 1577
    move v7, v13

    .line 1578
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1579
    .line 1580
    .line 1581
    iput v14, v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 1582
    .line 1583
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    .line 1585
    .line 1586
    goto :goto_35

    .line 1587
    :cond_63
    if-lez v14, :cond_64

    .line 1588
    .line 1589
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1590
    .line 1591
    add-int v0, v0, v16

    .line 1592
    .line 1593
    add-int/2addr v0, v1

    .line 1594
    move v1, v0

    .line 1595
    goto :goto_36

    .line 1596
    :cond_64
    :goto_35
    move/from16 v1, v16

    .line 1597
    .line 1598
    :goto_36
    invoke-virtual {v12, v15}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1599
    .line 1600
    .line 1601
    add-int/lit8 v14, v14, 0x1

    .line 1602
    .line 1603
    move/from16 v0, v17

    .line 1604
    .line 1605
    goto :goto_33

    .line 1606
    :cond_65
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1607
    .line 1608
    .line 1609
    move-result v1

    .line 1610
    iget v2, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 1611
    .line 1612
    iget v3, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 1613
    .line 1614
    iget v4, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 1615
    .line 1616
    iget v5, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 1617
    .line 1618
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1619
    .line 1620
    const/4 v7, 0x0

    .line 1621
    aget-object v9, v6, v7

    .line 1622
    .line 1623
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1624
    .line 1625
    if-eq v9, v7, :cond_67

    .line 1626
    .line 1627
    const/4 v9, 0x1

    .line 1628
    aget-object v6, v6, v9

    .line 1629
    .line 1630
    if-ne v6, v7, :cond_66

    .line 1631
    .line 1632
    goto :goto_37

    .line 1633
    :cond_66
    const/4 v6, 0x0

    .line 1634
    goto :goto_38

    .line 1635
    :cond_67
    :goto_37
    const/4 v6, 0x1

    .line 1636
    :goto_38
    if-lez v0, :cond_69

    .line 1637
    .line 1638
    if-eqz v6, :cond_69

    .line 1639
    .line 1640
    const/4 v0, 0x0

    .line 1641
    :goto_39
    if-ge v0, v1, :cond_69

    .line 1642
    .line 1643
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v6

    .line 1647
    check-cast v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1648
    .line 1649
    if-nez v11, :cond_68

    .line 1650
    .line 1651
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 1652
    .line 1653
    .line 1654
    move-result v7

    .line 1655
    sub-int v7, v13, v7

    .line 1656
    .line 1657
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 1658
    .line 1659
    .line 1660
    goto :goto_3a

    .line 1661
    :cond_68
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 1662
    .line 1663
    .line 1664
    move-result v7

    .line 1665
    sub-int v7, v13, v7

    .line 1666
    .line 1667
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 1668
    .line 1669
    .line 1670
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    .line 1671
    .line 1672
    goto :goto_39

    .line 1673
    :cond_69
    move v6, v3

    .line 1674
    move-object/from16 v0, v20

    .line 1675
    .line 1676
    move-object/from16 v15, v27

    .line 1677
    .line 1678
    move-object/from16 v14, v29

    .line 1679
    .line 1680
    const/4 v7, 0x0

    .line 1681
    const/4 v9, 0x0

    .line 1682
    const/4 v12, 0x0

    .line 1683
    move v3, v2

    .line 1684
    move-object/from16 v2, v21

    .line 1685
    .line 1686
    :goto_3b
    if-ge v7, v1, :cond_6f

    .line 1687
    .line 1688
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v16

    .line 1692
    move/from16 v28, v5

    .line 1693
    .line 1694
    move-object/from16 v5, v16

    .line 1695
    .line 1696
    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1697
    .line 1698
    if-nez v11, :cond_6c

    .line 1699
    .line 1700
    add-int/lit8 v14, v1, -0x1

    .line 1701
    .line 1702
    if-ge v7, v14, :cond_6a

    .line 1703
    .line 1704
    add-int/lit8 v14, v7, 0x1

    .line 1705
    .line 1706
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v14

    .line 1710
    check-cast v14, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1711
    .line 1712
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1713
    .line 1714
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1715
    .line 1716
    move-object/from16 v36, v10

    .line 1717
    .line 1718
    const/16 v28, 0x0

    .line 1719
    .line 1720
    goto :goto_3c

    .line 1721
    :cond_6a
    iget v14, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 1722
    .line 1723
    move-object/from16 v36, v10

    .line 1724
    .line 1725
    move/from16 v28, v14

    .line 1726
    .line 1727
    move-object/from16 v14, v29

    .line 1728
    .line 1729
    :goto_3c
    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1730
    .line 1731
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1732
    .line 1733
    move-object/from16 v16, v5

    .line 1734
    .line 1735
    move/from16 v17, v11

    .line 1736
    .line 1737
    move-object/from16 v18, v0

    .line 1738
    .line 1739
    move-object/from16 v19, v2

    .line 1740
    .line 1741
    move-object/from16 v20, v15

    .line 1742
    .line 1743
    move-object/from16 v21, v14

    .line 1744
    .line 1745
    move/from16 v22, v3

    .line 1746
    .line 1747
    move/from16 v23, v6

    .line 1748
    .line 1749
    move/from16 v24, v4

    .line 1750
    .line 1751
    move/from16 v25, v28

    .line 1752
    .line 1753
    move/from16 v26, v13

    .line 1754
    .line 1755
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1756
    .line 1757
    .line 1758
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 1759
    .line 1760
    .line 1761
    move-result v2

    .line 1762
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    .line 1763
    .line 1764
    .line 1765
    move-result v2

    .line 1766
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 1767
    .line 1768
    .line 1769
    move-result v5

    .line 1770
    add-int/2addr v5, v12

    .line 1771
    if-lez v7, :cond_6b

    .line 1772
    .line 1773
    iget v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1774
    .line 1775
    add-int/2addr v5, v6

    .line 1776
    :cond_6b
    move/from16 v31, v1

    .line 1777
    .line 1778
    move v9, v2

    .line 1779
    move v12, v5

    .line 1780
    move-object v2, v10

    .line 1781
    move/from16 v5, v28

    .line 1782
    .line 1783
    move-object/from16 v10, v36

    .line 1784
    .line 1785
    const/4 v6, 0x0

    .line 1786
    goto :goto_3e

    .line 1787
    :cond_6c
    move-object/from16 v36, v10

    .line 1788
    .line 1789
    add-int/lit8 v4, v1, -0x1

    .line 1790
    .line 1791
    if-ge v7, v4, :cond_6d

    .line 1792
    .line 1793
    add-int/lit8 v4, v7, 0x1

    .line 1794
    .line 1795
    move-object/from16 v10, v36

    .line 1796
    .line 1797
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v4

    .line 1801
    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1802
    .line 1803
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1804
    .line 1805
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1806
    .line 1807
    move/from16 v31, v1

    .line 1808
    .line 1809
    move-object v15, v4

    .line 1810
    const/4 v4, 0x0

    .line 1811
    goto :goto_3d

    .line 1812
    :cond_6d
    move-object/from16 v10, v36

    .line 1813
    .line 1814
    iget v4, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 1815
    .line 1816
    move/from16 v31, v1

    .line 1817
    .line 1818
    move-object/from16 v15, v27

    .line 1819
    .line 1820
    :goto_3d
    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1821
    .line 1822
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1823
    .line 1824
    move-object/from16 v16, v5

    .line 1825
    .line 1826
    move/from16 v17, v11

    .line 1827
    .line 1828
    move-object/from16 v18, v0

    .line 1829
    .line 1830
    move-object/from16 v19, v2

    .line 1831
    .line 1832
    move-object/from16 v20, v15

    .line 1833
    .line 1834
    move-object/from16 v21, v14

    .line 1835
    .line 1836
    move/from16 v22, v3

    .line 1837
    .line 1838
    move/from16 v23, v6

    .line 1839
    .line 1840
    move/from16 v24, v4

    .line 1841
    .line 1842
    move/from16 v25, v28

    .line 1843
    .line 1844
    move/from16 v26, v13

    .line 1845
    .line 1846
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1847
    .line 1848
    .line 1849
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 1850
    .line 1851
    .line 1852
    move-result v0

    .line 1853
    add-int/2addr v0, v9

    .line 1854
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 1855
    .line 1856
    .line 1857
    move-result v3

    .line 1858
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    .line 1859
    .line 1860
    .line 1861
    move-result v3

    .line 1862
    if-lez v7, :cond_6e

    .line 1863
    .line 1864
    iget v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1865
    .line 1866
    add-int/2addr v0, v5

    .line 1867
    :cond_6e
    move v9, v0

    .line 1868
    move-object v0, v1

    .line 1869
    move v12, v3

    .line 1870
    move/from16 v5, v28

    .line 1871
    .line 1872
    const/4 v3, 0x0

    .line 1873
    :goto_3e
    add-int/lit8 v7, v7, 0x1

    .line 1874
    .line 1875
    move/from16 v1, v31

    .line 1876
    .line 1877
    goto/16 :goto_3b

    .line 1878
    .line 1879
    :cond_6f
    const/4 v0, 0x0

    .line 1880
    aput v9, v35, v0

    .line 1881
    .line 1882
    const/4 v0, 0x1

    .line 1883
    aput v12, v35, v0

    .line 1884
    .line 1885
    goto :goto_3f

    .line 1886
    :cond_70
    move-object v10, v4

    .line 1887
    move v9, v5

    .line 1888
    move-object/from16 v31, v7

    .line 1889
    .line 1890
    move/from16 v32, v11

    .line 1891
    .line 1892
    move/from16 v33, v12

    .line 1893
    .line 1894
    move/from16 v34, v13

    .line 1895
    .line 1896
    move/from16 v30, v14

    .line 1897
    .line 1898
    move-object/from16 v35, v15

    .line 1899
    .line 1900
    move v13, v6

    .line 1901
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 1902
    .line 1903
    if-nez v9, :cond_71

    .line 1904
    .line 1905
    :goto_3f
    move/from16 v0, p1

    .line 1906
    .line 1907
    move/from16 v1, p2

    .line 1908
    .line 1909
    move/from16 v2, p3

    .line 1910
    .line 1911
    move/from16 v3, p4

    .line 1912
    .line 1913
    move/from16 v14, v30

    .line 1914
    .line 1915
    move/from16 v11, v32

    .line 1916
    .line 1917
    move/from16 v12, v33

    .line 1918
    .line 1919
    move/from16 v13, v34

    .line 1920
    .line 1921
    move-object/from16 v15, v35

    .line 1922
    .line 1923
    :goto_40
    move v4, v3

    .line 1924
    const/16 v17, 0x0

    .line 1925
    .line 1926
    move v3, v2

    .line 1927
    move v2, v1

    .line 1928
    const/4 v1, 0x1

    .line 1929
    goto/16 :goto_43

    .line 1930
    .line 1931
    :cond_71
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1932
    .line 1933
    .line 1934
    move-result v0

    .line 1935
    if-nez v0, :cond_72

    .line 1936
    .line 1937
    new-instance v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1938
    .line 1939
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1940
    .line 1941
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1942
    .line 1943
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1944
    .line 1945
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1946
    .line 1947
    move-object v0, v11

    .line 1948
    move-object/from16 v1, p0

    .line 1949
    .line 1950
    move v7, v13

    .line 1951
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1952
    .line 1953
    .line 1954
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1955
    .line 1956
    .line 1957
    goto :goto_41

    .line 1958
    :cond_72
    const/4 v0, 0x0

    .line 1959
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v1

    .line 1963
    move-object v11, v1

    .line 1964
    check-cast v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1965
    .line 1966
    iput v0, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 1967
    .line 1968
    const/4 v1, 0x0

    .line 1969
    iput-object v1, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1970
    .line 1971
    iput v0, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 1972
    .line 1973
    iput v0, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 1974
    .line 1975
    iput v0, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 1976
    .line 1977
    iput v0, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 1978
    .line 1979
    iput v0, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 1980
    .line 1981
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1982
    .line 1983
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1984
    .line 1985
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1986
    .line 1987
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1988
    .line 1989
    iget v5, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 1990
    .line 1991
    iget v6, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 1992
    .line 1993
    iget v7, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 1994
    .line 1995
    iget v10, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 1996
    .line 1997
    move-object/from16 v16, v11

    .line 1998
    .line 1999
    move/from16 v17, v2

    .line 2000
    .line 2001
    move-object/from16 v18, v0

    .line 2002
    .line 2003
    move-object/from16 v19, v1

    .line 2004
    .line 2005
    move-object/from16 v20, v3

    .line 2006
    .line 2007
    move-object/from16 v21, v4

    .line 2008
    .line 2009
    move/from16 v22, v5

    .line 2010
    .line 2011
    move/from16 v23, v6

    .line 2012
    .line 2013
    move/from16 v24, v7

    .line 2014
    .line 2015
    move/from16 v25, v10

    .line 2016
    .line 2017
    move/from16 v26, v13

    .line 2018
    .line 2019
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 2020
    .line 2021
    .line 2022
    :goto_41
    const/4 v0, 0x0

    .line 2023
    :goto_42
    if-ge v0, v9, :cond_73

    .line 2024
    .line 2025
    aget-object v1, v31, v0

    .line 2026
    .line 2027
    invoke-virtual {v11, v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 2028
    .line 2029
    .line 2030
    add-int/lit8 v0, v0, 0x1

    .line 2031
    .line 2032
    goto :goto_42

    .line 2033
    :cond_73
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 2034
    .line 2035
    .line 2036
    move-result v0

    .line 2037
    const/16 v17, 0x0

    .line 2038
    .line 2039
    aput v0, v35, v17

    .line 2040
    .line 2041
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 2042
    .line 2043
    .line 2044
    move-result v0

    .line 2045
    const/4 v1, 0x1

    .line 2046
    aput v0, v35, v1

    .line 2047
    .line 2048
    move/from16 v0, p1

    .line 2049
    .line 2050
    move/from16 v2, p2

    .line 2051
    .line 2052
    move/from16 v3, p3

    .line 2053
    .line 2054
    move/from16 v4, p4

    .line 2055
    .line 2056
    move/from16 v14, v30

    .line 2057
    .line 2058
    move/from16 v11, v32

    .line 2059
    .line 2060
    move/from16 v12, v33

    .line 2061
    .line 2062
    move/from16 v13, v34

    .line 2063
    .line 2064
    move-object/from16 v15, v35

    .line 2065
    .line 2066
    :goto_43
    aget v5, v15, v17

    .line 2067
    .line 2068
    add-int/2addr v5, v11

    .line 2069
    add-int/2addr v5, v12

    .line 2070
    aget v6, v15, v1

    .line 2071
    .line 2072
    add-int/2addr v6, v13

    .line 2073
    add-int/2addr v6, v14

    .line 2074
    const/high16 v7, -0x80000000

    .line 2075
    .line 2076
    const/high16 v9, 0x40000000    # 2.0f

    .line 2077
    .line 2078
    if-ne v0, v9, :cond_74

    .line 2079
    .line 2080
    move v0, v2

    .line 2081
    goto :goto_44

    .line 2082
    :cond_74
    if-ne v0, v7, :cond_75

    .line 2083
    .line 2084
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 2085
    .line 2086
    .line 2087
    move-result v0

    .line 2088
    goto :goto_44

    .line 2089
    :cond_75
    if-nez v0, :cond_76

    .line 2090
    .line 2091
    move v0, v5

    .line 2092
    goto :goto_44

    .line 2093
    :cond_76
    move/from16 v0, v17

    .line 2094
    .line 2095
    :goto_44
    if-ne v3, v9, :cond_77

    .line 2096
    .line 2097
    move v2, v4

    .line 2098
    goto :goto_45

    .line 2099
    :cond_77
    if-ne v3, v7, :cond_78

    .line 2100
    .line 2101
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 2102
    .line 2103
    .line 2104
    move-result v2

    .line 2105
    goto :goto_45

    .line 2106
    :cond_78
    if-nez v3, :cond_79

    .line 2107
    .line 2108
    move v2, v6

    .line 2109
    goto :goto_45

    .line 2110
    :cond_79
    move/from16 v2, v17

    .line 2111
    .line 2112
    :goto_45
    iput v0, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 2113
    .line 2114
    iput v2, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredHeight:I

    .line 2115
    .line 2116
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2117
    .line 2118
    .line 2119
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2120
    .line 2121
    .line 2122
    iget v0, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 2123
    .line 2124
    if-lez v0, :cond_7a

    .line 2125
    .line 2126
    move v9, v1

    .line 2127
    goto :goto_46

    .line 2128
    :cond_7a
    move/from16 v9, v17

    .line 2129
    .line 2130
    :goto_46
    iput-boolean v9, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 2131
    .line 2132
    return-void
.end method
