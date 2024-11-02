.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    }
.end annotation


# instance fields
.field public final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 2
    .line 3
    return p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final getSecurityView()Lcom/android/keyguard/KeyguardInputView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Lcom/android/keyguard/KeyguardInputView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, " should be AT_MOST"

    .line 12
    .line 13
    const-string v4, "KeyguardSecurityViewFlipper"

    .line 14
    .line 15
    const/high16 v5, -0x80000000

    .line 16
    .line 17
    if-eq v1, v5, :cond_0

    .line 18
    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v7, "onMeasure: widthSpec "

    .line 22
    .line 23
    .line 24
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    if-eq v2, v5, :cond_1

    .line 45
    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v7, "onMeasure: heightSpec "

    .line 49
    .line 50
    .line 51
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ViewFlipper;->getChildCount()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const/4 v7, 0x0

    .line 84
    move v9, v3

    .line 85
    move v10, v4

    .line 86
    move v8, v7

    .line 87
    :goto_0
    if-ge v8, v6, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0, v8}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-eqz v12, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    check-cast v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 105
    .line 106
    iget v12, v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    .line 107
    .line 108
    if-lez v12, :cond_3

    .line 109
    .line 110
    if-ge v12, v9, :cond_3

    .line 111
    .line 112
    move v9, v12

    .line 113
    :cond_3
    iget v11, v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    .line 114
    .line 115
    if-lez v11, :cond_4

    .line 116
    .line 117
    if-ge v11, v10, :cond_4

    .line 118
    .line 119
    move v10, v11

    .line 120
    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ViewFlipper;->getPaddingLeft()I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ViewFlipper;->getPaddingRight()I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    add-int/2addr v11, v8

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ViewFlipper;->getPaddingTop()I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ViewFlipper;->getPaddingBottom()I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    add-int/2addr v12, v8

    .line 141
    sub-int/2addr v9, v11

    .line 142
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    sub-int/2addr v10, v12

    .line 147
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    const/high16 v10, 0x40000000    # 2.0f

    .line 152
    .line 153
    if-ne v1, v10, :cond_6

    .line 154
    .line 155
    move v1, v3

    .line 156
    goto :goto_2

    .line 157
    :cond_6
    move v1, v7

    .line 158
    :goto_2
    if-ne v2, v10, :cond_7

    .line 159
    .line 160
    move v2, v4

    .line 161
    goto :goto_3

    .line 162
    :cond_7
    move v2, v7

    .line 163
    :goto_3
    if-ge v7, v6, :cond_c

    .line 164
    .line 165
    invoke-virtual {v0, v7}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    check-cast v14, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 174
    .line 175
    iget v15, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 176
    .line 177
    const/4 v5, -0x1

    .line 178
    const/4 v10, -0x2

    .line 179
    if-eq v15, v10, :cond_9

    .line 180
    .line 181
    if-eq v15, v5, :cond_8

    .line 182
    .line 183
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    goto :goto_4

    .line 188
    :cond_8
    move v15, v8

    .line 189
    :goto_4
    const/high16 v5, 0x40000000    # 2.0f

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_9
    move v15, v8

    .line 193
    const/high16 v5, -0x80000000

    .line 194
    .line 195
    :goto_5
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    iget v14, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 200
    .line 201
    if-eq v14, v10, :cond_b

    .line 202
    .line 203
    const/4 v10, -0x1

    .line 204
    if-eq v14, v10, :cond_a

    .line 205
    .line 206
    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    goto :goto_6

    .line 211
    :cond_a
    move v10, v9

    .line 212
    :goto_6
    const/high16 v14, 0x40000000    # 2.0f

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_b
    move v10, v9

    .line 216
    const/high16 v14, -0x80000000

    .line 217
    .line 218
    :goto_7
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    invoke-virtual {v13, v5, v10}, Landroid/view/View;->measure(II)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    sub-int v10, v3, v11

    .line 230
    .line 231
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    sub-int v10, v4, v12

    .line 244
    .line 245
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    add-int/lit8 v7, v7, 0x1

    .line 254
    .line 255
    const/high16 v5, -0x80000000

    .line 256
    .line 257
    const/high16 v10, 0x40000000    # 2.0f

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_c
    add-int/2addr v1, v11

    .line 261
    add-int/2addr v2, v12

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setMeasuredDimension(II)V

    .line 263
    .line 264
    .line 265
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    .line 10
    .line 11
    move v1, v2

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v1, v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {p0, v3, v4}, Landroid/widget/ViewFlipper;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    int-to-float v5, v5

    .line 38
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    int-to-float v4, v4

    .line 41
    invoke-virtual {p1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    move v0, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 56
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    .line 57
    .line 58
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 59
    .line 60
    neg-int v4, v4

    .line 61
    int-to-float v4, v4

    .line 62
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 63
    .line 64
    neg-int v3, v3

    .line 65
    int-to-float v3, v3

    .line 66
    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 67
    .line 68
    .line 69
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return v0
.end method
