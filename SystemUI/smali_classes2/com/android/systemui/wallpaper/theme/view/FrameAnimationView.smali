.class public final Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;
.super Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;-><init>(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/4 p3, 0x0

    .line 9
    :goto_0
    if-ge p3, p2, :cond_1

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;

    .line 12
    .line 13
    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1, p1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(FLandroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    invoke-virtual {p7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Float;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v2, p1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(FLandroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/systemui/wallpaper/theme/particle/Sprite;-><init>(FFFF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {p8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/Float;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .line 78
    .line 79
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 83
    .line 84
    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 88
    .line 89
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 90
    .line 91
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {v5, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput v2, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->frameSize:I

    .line 102
    .line 103
    iput v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mScale:F

    .line 104
    .line 105
    iput-object v1, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    int-to-float v1, v1

    .line 112
    int-to-float v2, v2

    .line 113
    div-float/2addr v1, v2

    .line 114
    iput v1, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->width:F

    .line 115
    .line 116
    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    int-to-float v1, v1

    .line 123
    iput v1, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->height:F

    .line 124
    .line 125
    new-instance v1, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;

    .line 126
    .line 127
    invoke-direct {v1}, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iput v2, v1, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    .line 141
    .line 142
    iget v2, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifierCount:I

    .line 143
    .line 144
    const/4 v3, 0x5

    .line 145
    if-ne v2, v3, :cond_0

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 149
    .line 150
    iput v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifierCount:I

    .line 151
    .line 152
    iget-object v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    .line 153
    .line 154
    aput-object v1, v3, v2

    .line 155
    .line 156
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    add-int/lit8 p3, p3, 0x1

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_1
    return-void
.end method
