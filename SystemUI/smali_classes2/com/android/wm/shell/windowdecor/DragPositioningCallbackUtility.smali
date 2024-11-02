.class public final Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p5, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p3, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 27
    .line 28
    .line 29
    and-int/lit8 p2, p0, 0x1

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    iget v5, p4, Landroid/graphics/PointF;->x:F

    .line 36
    .line 37
    float-to-int v5, v5

    .line 38
    add-int/2addr p2, v5

    .line 39
    iget v5, p3, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    if-le p2, v5, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p2, v1

    .line 45
    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    :cond_2
    and-int/lit8 p2, p0, 0x2

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    iget v5, p4, Landroid/graphics/PointF;->x:F

    .line 54
    .line 55
    float-to-int v5, v5

    .line 56
    add-int/2addr p2, v5

    .line 57
    iget v5, p3, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    if-ge p2, v5, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move p2, v3

    .line 63
    :goto_1
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    :cond_4
    and-int/lit8 p2, p0, 0x4

    .line 66
    .line 67
    if-eqz p2, :cond_6

    .line 68
    .line 69
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    iget v5, p4, Landroid/graphics/PointF;->y:F

    .line 72
    .line 73
    float-to-int v5, v5

    .line 74
    add-int/2addr p2, v5

    .line 75
    iget v5, p3, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    if-le p2, v5, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    move p2, v2

    .line 81
    :goto_2
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    :cond_6
    and-int/lit8 p0, p0, 0x8

    .line 84
    .line 85
    if-eqz p0, :cond_8

    .line 86
    .line 87
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 88
    .line 89
    iget p2, p4, Landroid/graphics/PointF;->y:F

    .line 90
    .line 91
    float-to-int p2, p2

    .line 92
    add-int/2addr p0, p2

    .line 93
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 94
    .line 95
    if-ge p0, p2, :cond_7

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_7
    move p0, v4

    .line 99
    :goto_3
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 100
    .line 101
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    int-to-float p0, p0

    .line 106
    iget-object p2, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 107
    .line 108
    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    .line 109
    .line 110
    const p4, 0x3bcccccd    # 0.00625f

    .line 111
    .line 112
    .line 113
    if-gez p3, :cond_9

    .line 114
    .line 115
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 116
    .line 117
    invoke-virtual {p5, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    iget p2, p2, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 122
    .line 123
    int-to-float p2, p2

    .line 124
    mul-float/2addr p2, p4

    .line 125
    iget-object p3, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 126
    .line 127
    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    .line 128
    .line 129
    int-to-float p3, p3

    .line 130
    mul-float/2addr p3, p2

    .line 131
    goto :goto_4

    .line 132
    :cond_9
    int-to-float p3, p3

    .line 133
    :goto_4
    cmpg-float p0, p0, p3

    .line 134
    .line 135
    if-gez p0, :cond_a

    .line 136
    .line 137
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 138
    .line 139
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 140
    .line 141
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    int-to-float p0, p0

    .line 146
    iget-object p2, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 147
    .line 148
    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    .line 149
    .line 150
    if-gez p3, :cond_b

    .line 151
    .line 152
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 153
    .line 154
    invoke-virtual {p5, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    iget p2, p2, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 159
    .line 160
    int-to-float p2, p2

    .line 161
    mul-float/2addr p2, p4

    .line 162
    iget-object p3, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 163
    .line 164
    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    .line 165
    .line 166
    int-to-float p3, p3

    .line 167
    mul-float/2addr p3, p2

    .line 168
    goto :goto_5

    .line 169
    :cond_b
    int-to-float p3, p3

    .line 170
    :goto_5
    cmpg-float p0, p0, p3

    .line 171
    .line 172
    if-gez p0, :cond_c

    .line 173
    .line 174
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 175
    .line 176
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 177
    .line 178
    :cond_c
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 179
    .line 180
    if-ne v1, p0, :cond_d

    .line 181
    .line 182
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 183
    .line 184
    if-ne v2, p0, :cond_d

    .line 185
    .line 186
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 187
    .line 188
    if-ne v3, p0, :cond_d

    .line 189
    .line 190
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 191
    .line 192
    if-ne v4, p0, :cond_d

    .line 193
    .line 194
    return v0

    .line 195
    :cond_d
    const/4 p0, 0x1

    .line 196
    return p0
.end method
