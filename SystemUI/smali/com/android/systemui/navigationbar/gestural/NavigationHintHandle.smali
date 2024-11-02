.class public final Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ButtonInterface;


# instance fields
.field public final darkIntensity:F

.field public hintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

.field public iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

.field public final mContext:Landroid/content/Context;

.field public viDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->mContext:Landroid/content/Context;

    const/high16 p1, -0x40800000    # -1.0f

    .line 5
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->darkIntensity:F

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final abortCurrentGesture()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCurrentRotation(IZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 11
    .line 12
    invoke-virtual {v2, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    move v5, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v5, v3

    .line 21
    :goto_0
    iget-object v6, v2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    .line 22
    .line 23
    move-object v7, v6

    .line 24
    check-cast v7, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    .line 25
    .line 26
    iget-object v8, v2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v7, v8, v4, v5}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iput-object v4, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->hintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 33
    .line 34
    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    move v4, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v4, v3

    .line 45
    :goto_1
    check-cast v6, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    .line 46
    .line 47
    invoke-virtual {v6, v8, v2, v4}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->viDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 52
    .line 53
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const v4, 0x7f070d0e

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    float-to-int v2, v2

    .line 67
    iget-object v10, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->hintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 68
    .line 69
    iget-object v11, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->viDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 70
    .line 71
    if-eqz v10, :cond_7

    .line 72
    .line 73
    if-eqz v11, :cond_7

    .line 74
    .line 75
    move v12, v3

    .line 76
    :goto_2
    const/4 v4, 0x2

    .line 77
    if-ge v12, v4, :cond_7

    .line 78
    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    if-ne v1, v4, :cond_3

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const/4 v4, 0x1

    .line 87
    if-ne v1, v4, :cond_4

    .line 88
    .line 89
    const/4 v13, 0x5

    .line 90
    invoke-virtual {v10, v12, v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 91
    .line 92
    .line 93
    const/4 v14, 0x0

    .line 94
    const/4 v15, 0x0

    .line 95
    const/4 v7, 0x0

    .line 96
    const/4 v9, 0x0

    .line 97
    move-object v4, v10

    .line 98
    move v5, v12

    .line 99
    move v6, v2

    .line 100
    move v8, v2

    .line 101
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 105
    .line 106
    .line 107
    move-object v4, v11

    .line 108
    move v7, v14

    .line 109
    move v9, v15

    .line 110
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_4
    const/4 v13, 0x3

    .line 115
    if-ne v1, v13, :cond_6

    .line 116
    .line 117
    invoke-virtual {v10, v12, v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 118
    .line 119
    .line 120
    const/4 v14, 0x0

    .line 121
    const/4 v15, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v9, 0x0

    .line 124
    move-object v4, v10

    .line 125
    move v5, v12

    .line 126
    move v6, v2

    .line 127
    move v8, v2

    .line 128
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 132
    .line 133
    .line 134
    move-object v4, v11

    .line 135
    move v7, v14

    .line 136
    move v9, v15

    .line 137
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_5
    :goto_3
    const/16 v13, 0x50

    .line 142
    .line 143
    invoke-virtual {v10, v12, v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 144
    .line 145
    .line 146
    const/4 v14, 0x0

    .line 147
    const/4 v15, 0x0

    .line 148
    const/4 v6, 0x0

    .line 149
    const/4 v8, 0x0

    .line 150
    move-object v4, v10

    .line 151
    move v5, v12

    .line 152
    move v7, v2

    .line 153
    move v9, v2

    .line 154
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 158
    .line 159
    .line 160
    move-object v4, v11

    .line 161
    move v6, v14

    .line 162
    move v8, v15

    .line 163
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 164
    .line 165
    .line 166
    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->hintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_8

    .line 179
    .line 180
    new-instance v1, Landroid/view/View;

    .line 181
    .line 182
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    :goto_5
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->viDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 196
    .line 197
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    .line 199
    .line 200
    const/4 v0, 0x0

    .line 201
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public final setDarkIntensity(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->hintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->darkIntensity:F

    .line 6
    .line 7
    cmpg-float v1, v1, p1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-nez v1, :cond_3

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;->setDarkIntensity(F)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->viDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;->setDarkIntensity(F)V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 29
    .line 30
    .line 31
    :cond_3
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setVertical()V
    .locals 0

    .line 1
    return-void
.end method
