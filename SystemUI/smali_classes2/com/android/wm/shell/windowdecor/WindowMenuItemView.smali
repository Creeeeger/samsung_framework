.class public Lcom/android/wm/shell/windowdecor/WindowMenuItemView;
.super Landroid/widget/ImageButton;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;


# static fields
.field public static final TASK_FOCUSED_STATE:[I


# instance fields
.field public final mHasIconBackground:Z

.field public final mIconBackgroundPaint:Landroid/graphics/Paint;

.field public final mIconSize:I

.field public mIsRtlLayout:Z

.field public mIsTaskFocused:Z

.field public mShowIconBackground:Z

.field public mTopFrameInset:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x7f0405bb

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->TASK_FOCUSED_STATE:[I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    const v1, 0x10302e3

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIconBackgroundPaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    sget-object v1, Lcom/android/wm/shell/R$styleable;->WindowMenuItemView:[I

    .line 22
    .line 23
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mHasIconBackground:Z

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->updateRippleBackground()V

    .line 53
    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const v0, 0x7f070dc6

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIconSize:I

    .line 69
    .line 70
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 71
    .line 72
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    .line 74
    .line 75
    const p0, 0x7f06056f

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p2, p0, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x1

    .line 87
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method public final onCreateDrawableState(I)[I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIsTaskFocused:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->TASK_FOCUSED_STATE:[I

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/widget/ImageButton;->mergeDrawableStates([I[I)[I

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mHasIconBackground:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mShowIconBackground:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIsRtlLayout:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIconSize:I

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    div-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sub-int/2addr v1, v2

    .line 31
    div-int/lit8 v1, v1, 0x2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIconSize:I

    .line 39
    .line 40
    sub-int/2addr v0, v1

    .line 41
    div-int/lit8 v0, v0, 0x2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    sub-int/2addr v1, v2

    .line 52
    div-int/lit8 v1, v1, 0x2

    .line 53
    .line 54
    :goto_0
    add-int/2addr v1, v0

    .line 55
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIconSize:I

    .line 60
    .line 61
    sub-int/2addr v0, v2

    .line 62
    iget v3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mTopFrameInset:I

    .line 63
    .line 64
    sub-int/2addr v0, v3

    .line 65
    div-int/lit8 v0, v0, 0x2

    .line 66
    .line 67
    int-to-float v4, v1

    .line 68
    int-to-float v5, v0

    .line 69
    add-int/2addr v1, v2

    .line 70
    int-to-float v6, v1

    .line 71
    add-int/2addr v2, v0

    .line 72
    int-to-float v7, v2

    .line 73
    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIconBackgroundPaint:Landroid/graphics/Paint;

    .line 74
    .line 75
    move-object v3, p1

    .line 76
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setTaskFocusState(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIsTaskFocused:Z

    .line 8
    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIsTaskFocused:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageButton;->refreshDrawableState()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final updateRippleBackground()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f080f17

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const v2, 0x7f070272

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const v2, 0x7f070271

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    const v3, 0x7f070db3

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const v3, 0x7f070dae

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    const v4, 0x7f070daa

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const v4, 0x7f070dad

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    sub-int/2addr v3, v1

    .line 85
    div-int/lit8 v6, v3, 0x2

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingTop()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    sub-int v1, v2, v1

    .line 92
    .line 93
    iput v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mTopFrameInset:I

    .line 94
    .line 95
    iget-object v1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/4 v3, 0x1

    .line 102
    if-ne v1, v3, :cond_4

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    const/4 v3, 0x0

    .line 106
    :goto_3
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mIsRtlLayout:Z

    .line 107
    .line 108
    if-eqz v3, :cond_7

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-le v1, v2, :cond_5

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    sub-int/2addr v1, v2

    .line 122
    add-int v4, v1, v6

    .line 123
    .line 124
    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mTopFrameInset:I

    .line 125
    .line 126
    sub-int v5, v6, v1

    .line 127
    .line 128
    move-object v1, v0

    .line 129
    move v2, v3

    .line 130
    move v3, v4

    .line 131
    move v4, v5

    .line 132
    move v5, v6

    .line 133
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_4

    .line 137
    .line 138
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-le v1, v2, :cond_6

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mTopFrameInset:I

    .line 146
    .line 147
    sub-int v4, v6, v1

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    sub-int/2addr v1, v2

    .line 154
    add-int v5, v1, v6

    .line 155
    .line 156
    move-object v1, v0

    .line 157
    move v2, v3

    .line 158
    move v3, v6

    .line 159
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_6
    const/4 v2, 0x0

    .line 164
    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mTopFrameInset:I

    .line 165
    .line 166
    sub-int v4, v6, v1

    .line 167
    .line 168
    move-object v1, v0

    .line 169
    move v3, v6

    .line 170
    move v5, v6

    .line 171
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-le v1, v2, :cond_8

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    sub-int/2addr v1, v2

    .line 187
    add-int v4, v1, v6

    .line 188
    .line 189
    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mTopFrameInset:I

    .line 190
    .line 191
    sub-int v5, v6, v1

    .line 192
    .line 193
    move-object v1, v0

    .line 194
    move v2, v3

    .line 195
    move v3, v4

    .line 196
    move v4, v5

    .line 197
    move v5, v6

    .line 198
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-le v1, v2, :cond_9

    .line 207
    .line 208
    const/4 v3, 0x0

    .line 209
    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mTopFrameInset:I

    .line 210
    .line 211
    sub-int v4, v6, v1

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    sub-int/2addr v1, v2

    .line 218
    add-int v5, v1, v6

    .line 219
    .line 220
    move-object v1, v0

    .line 221
    move v2, v3

    .line 222
    move v3, v6

    .line 223
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_9
    const/4 v2, 0x0

    .line 228
    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mTopFrameInset:I

    .line 229
    .line 230
    sub-int v4, v6, v1

    .line 231
    .line 232
    move-object v1, v0

    .line 233
    move v3, v6

    .line 234
    move v5, v6

    .line 235
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    .line 236
    .line 237
    .line 238
    :goto_4
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    .line 240
    .line 241
    return-void
.end method
