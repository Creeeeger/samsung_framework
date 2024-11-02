.class public Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    .line 10
    .line 11
    if-nez p0, :cond_a

    .line 12
    .line 13
    instance-of p0, p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 14
    .line 15
    if-eqz p0, :cond_a

    .line 16
    .line 17
    check-cast p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 18
    .line 19
    iget-object p0, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 24
    .line 25
    filled-new-array {p0, v0, v1}, [Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, 0x0

    .line 30
    move v1, v0

    .line 31
    move v2, v1

    .line 32
    move v3, v2

    .line 33
    move v4, v3

    .line 34
    :goto_0
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x3

    .line 36
    if-ge v1, v6, :cond_4

    .line 37
    .line 38
    aget-object v6, p0, v1

    .line 39
    .line 40
    if-eqz v6, :cond_3

    .line 41
    .line 42
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_3

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    :goto_1
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    :goto_2
    move v4, v5

    .line 79
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    sub-int/2addr v2, v3

    .line 83
    iget-object p0, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 84
    .line 85
    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 86
    .line 87
    iget-object v3, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 88
    .line 89
    filled-new-array {p0, v1, v3}, [Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    move v1, v0

    .line 94
    move v3, v1

    .line 95
    move v4, v3

    .line 96
    :goto_3
    if-ge v0, v6, :cond_8

    .line 97
    .line 98
    aget-object v7, p0, v0

    .line 99
    .line 100
    if-eqz v7, :cond_7

    .line 101
    .line 102
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-nez v8, :cond_7

    .line 107
    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    :goto_4
    if-eqz v4, :cond_6

    .line 124
    .line 125
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    goto :goto_5

    .line 134
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    :goto_5
    move v4, v5

    .line 139
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_8
    sub-int/2addr v1, v3

    .line 143
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    const/16 v0, 0x18

    .line 148
    .line 149
    invoke-static {v0, p0}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(ILandroid/content/Context;)F

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    float-to-int p0, p0

    .line 154
    if-ge v2, p0, :cond_9

    .line 155
    .line 156
    move v2, p0

    .line 157
    :cond_9
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLeft()I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    add-int/2addr v0, p0

    .line 166
    div-int/lit8 v0, v0, 0x2

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    add-int/2addr p1, p0

    .line 177
    div-int/lit8 p1, p1, 0x2

    .line 178
    .line 179
    div-int/lit8 v2, v2, 0x2

    .line 180
    .line 181
    sub-int p0, v0, v2

    .line 182
    .line 183
    div-int/lit8 v1, v1, 0x2

    .line 184
    .line 185
    sub-int v1, p1, v1

    .line 186
    .line 187
    add-int/2addr v2, v0

    .line 188
    div-int/lit8 v0, v0, 0x2

    .line 189
    .line 190
    add-int/2addr v0, p1

    .line 191
    new-instance p1, Landroid/graphics/RectF;

    .line 192
    .line 193
    int-to-float p0, p0

    .line 194
    int-to-float v1, v1

    .line 195
    int-to-float v2, v2

    .line 196
    int-to-float v0, v0

    .line 197
    invoke-direct {p1, p0, v1, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 198
    .line 199
    .line 200
    return-object p1

    .line 201
    :cond_a
    new-instance p0, Landroid/graphics/RectF;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    int-to-float v0, v0

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    int-to-float v1, v1

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    int-to-float v2, v2

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    int-to-float p1, p1

    .line 223
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 224
    .line 225
    .line 226
    return-object p0
.end method


# virtual methods
.method public updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p3}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p2, p0, Landroid/graphics/RectF;->left:F

    .line 10
    .line 11
    float-to-int p2, p2

    .line 12
    iget p3, p1, Landroid/graphics/RectF;->left:F

    .line 13
    .line 14
    float-to-int p3, p3

    .line 15
    invoke-static {p4, p2, p3}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FII)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 26
    .line 27
    float-to-int p0, p0

    .line 28
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 29
    .line 30
    float-to-int p1, p1

    .line 31
    invoke-static {p4, p0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FII)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    invoke-virtual {p5, p2, p3, p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
