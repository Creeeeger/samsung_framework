.class public final Lcom/android/wm/shell/draganddrop/AospSplitDropTargetProvider;
.super Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final addSplitTargets(Landroid/graphics/Rect;ZZFLjava/util/ArrayList;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->isInSubDisplay()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    if-nez p3, :cond_0

    .line 32
    .line 33
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    :cond_0
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelEnabled(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v6, 0x1

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    if-eqz p3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    if-nez p2, :cond_3

    .line 59
    .line 60
    :goto_0
    move p2, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move p2, v4

    .line 63
    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    .line 64
    .line 65
    if-eqz p2, :cond_6

    .line 66
    .line 67
    new-instance p0, Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance p2, Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .line 76
    .line 77
    if-eqz p3, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    .line 81
    .line 82
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 83
    .line 84
    int-to-float p1, p1

    .line 85
    div-float/2addr p4, v5

    .line 86
    add-float/2addr p1, p4

    .line 87
    float-to-int p1, p1

    .line 88
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 89
    .line 90
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 94
    .line 95
    int-to-float p1, p1

    .line 96
    sub-float/2addr p1, p4

    .line 97
    float-to-int p1, p1

    .line 98
    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelEnabled(Landroid/content/Context;)Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    if-eqz p3, :cond_5

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(I)Landroid/graphics/Rect;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(I)Landroid/graphics/Rect;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(I)Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(I)Landroid/graphics/Rect;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    filled-new-array {p0, p2}, [Landroid/graphics/Rect;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->splitHorizontally([Landroid/graphics/Rect;)V

    .line 141
    .line 142
    .line 143
    :goto_2
    new-instance p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 144
    .line 145
    const/4 p3, 0x2

    .line 146
    invoke-direct {p1, p3, p0, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    new-instance p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 153
    .line 154
    const/4 p1, 0x4

    .line 155
    invoke-direct {p0, p1, p2, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->isInSubDisplay()Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-eqz p0, :cond_7

    .line 167
    .line 168
    if-nez p3, :cond_7

    .line 169
    .line 170
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 171
    .line 172
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 173
    .line 174
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 175
    .line 176
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 177
    .line 178
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 179
    .line 180
    iput p0, v1, Landroid/graphics/Rect;->right:I

    .line 181
    .line 182
    :cond_7
    new-instance p0, Landroid/graphics/Rect;

    .line 183
    .line 184
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance p2, Landroid/graphics/Rect;

    .line 188
    .line 189
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 190
    .line 191
    .line 192
    if-eqz p3, :cond_8

    .line 193
    .line 194
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 195
    .line 196
    .line 197
    iget p1, p0, Landroid/graphics/Rect;->right:I

    .line 198
    .line 199
    int-to-float p1, p1

    .line 200
    div-float/2addr p4, v5

    .line 201
    add-float/2addr p1, p4

    .line 202
    float-to-int p1, p1

    .line 203
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 204
    .line 205
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 206
    .line 207
    .line 208
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 209
    .line 210
    int-to-float p1, p1

    .line 211
    sub-float/2addr p1, p4

    .line 212
    float-to-int p1, p1

    .line 213
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_8
    filled-new-array {p0, p2}, [Landroid/graphics/Rect;

    .line 217
    .line 218
    .line 219
    move-result-object p3

    .line 220
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 221
    .line 222
    .line 223
    :goto_3
    new-instance p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 224
    .line 225
    invoke-direct {p1, v6, p0, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    new-instance p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 232
    .line 233
    const/4 p1, 0x3

    .line 234
    invoke-direct {p0, p1, p2, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    :goto_4
    return-void
.end method
