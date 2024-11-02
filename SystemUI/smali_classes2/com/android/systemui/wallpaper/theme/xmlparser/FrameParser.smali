.class public final Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 5
    .line 6
    if-nez p0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_5

    .line 24
    .line 25
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_4

    .line 38
    .line 39
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const-string/jumbo v5, "top"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    iget-object v3, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 60
    .line 61
    iput v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const-string v5, "minInterval"

    .line 65
    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    iget-object v3, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 73
    .line 74
    iput v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    .line 75
    .line 76
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    iput-object v0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_6
    iget-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 83
    .line 84
    if-nez p0, :cond_7

    .line 85
    .line 86
    return-void

    .line 87
    :cond_7
    new-instance v10, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    .line 88
    .line 89
    iget-object v1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    iget-object v2, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    .line 92
    .line 93
    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->backgroundId:I

    .line 94
    .line 95
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewSetId:Ljava/util/ArrayList;

    .line 96
    .line 97
    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->frameSize:Ljava/util/ArrayList;

    .line 98
    .line 99
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->x:Ljava/util/ArrayList;

    .line 100
    .line 101
    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->y:Ljava/util/ArrayList;

    .line 102
    .line 103
    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->scale:Ljava/util/ArrayList;

    .line 104
    .line 105
    iget-object v9, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startIndex:Ljava/util/ArrayList;

    .line 106
    .line 107
    move-object v0, v10

    .line 108
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 109
    .line 110
    .line 111
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    .line 112
    .line 113
    invoke-virtual {v10, v0}, Landroid/view/SurfaceView;->setTop(I)V

    .line 114
    .line 115
    .line 116
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    .line 117
    .line 118
    iput p0, v10, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    .line 119
    .line 120
    iget-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    .line 121
    .line 122
    if-eqz p0, :cond_9

    .line 123
    .line 124
    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    .line 125
    .line 126
    if-nez v0, :cond_8

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_8
    const/4 v0, -0x2

    .line 130
    invoke-virtual {p0, v10, v0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    .line 134
    .line 135
    iput-object v10, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    .line 136
    .line 137
    :cond_9
    :goto_2
    return-void
.end method
