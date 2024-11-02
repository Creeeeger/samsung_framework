.class public final Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public final hidden:Z

.field public final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public isPathValid:Z

.field public final isReversed:Z

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final name:Ljava/lang/String;

.field public final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final path:Landroid/graphics/Path;

.field public final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

.field public final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 19
    .line 20
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->name:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 27
    .line 28
    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->hidden:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 31
    .line 32
    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->isReversed:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    .line 35
    .line 36
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v1, v0

    .line 43
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 46
    .line 47
    iget-object v1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 54
    .line 55
    iget-object v2, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v3, v2

    .line 62
    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 63
    .line 64
    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 65
    .line 66
    iget-object v3, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    move-object v4, v3

    .line 73
    check-cast v4, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 74
    .line 75
    iput-object v4, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 76
    .line 77
    iget-object v4, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    move-object v5, v4

    .line 84
    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 85
    .line 86
    iput-object v5, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 87
    .line 88
    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 89
    .line 90
    if-ne p1, v5, :cond_0

    .line 91
    .line 92
    iget-object v6, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 99
    .line 100
    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 101
    .line 102
    iget-object p3, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 103
    .line 104
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    check-cast p3, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 109
    .line 110
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const/4 p3, 0x0

    .line 114
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 115
    .line 116
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 117
    .line 118
    :goto_0
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 131
    .line 132
    .line 133
    if-ne p1, v5, :cond_1

    .line 134
    .line 135
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 136
    .line 137
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 138
    .line 139
    .line 140
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 141
    .line 142
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 158
    .line 159
    .line 160
    if-ne p1, v5, :cond_2

    .line 161
    .line 162
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 163
    .line 164
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 168
    .line 169
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 170
    .line 171
    .line 172
    :cond_2
    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    .line 12
    .line 13
    if-ne p2, v0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    .line 22
    .line 23
    if-ne p2, v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    .line 32
    .line 33
    if-ne p2, v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    .line 44
    .line 45
    if-ne p2, v0, :cond_4

    .line 46
    .line 47
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    .line 54
    .line 55
    if-ne p2, v0, :cond_5

    .line 56
    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    .line 66
    .line 67
    if-ne p2, v0, :cond_6

    .line 68
    .line 69
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 4
    .line 5
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v9

    .line 10
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput-boolean v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 19
    .line 20
    return-object v9

    .line 21
    :cond_1
    sget-object v1, Lcom/airbnb/lottie/animation/content/PolystarContent$1;->$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type:[I

    .line 22
    .line 23
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    aget v1, v1, v3

    .line 30
    .line 31
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 32
    .line 33
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 34
    .line 35
    const/high16 v4, 0x42c80000    # 100.0f

    .line 36
    .line 37
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 38
    .line 39
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const-wide v11, 0x4056800000000000L    # 90.0

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 50
    .line 51
    iget-object v13, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 52
    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    if-eq v1, v2, :cond_6

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    if-eq v1, v2, :cond_2

    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_2
    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/Float;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    float-to-double v1, v1

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    double-to-int v1, v1

    .line 78
    if-nez v8, :cond_3

    .line 79
    .line 80
    const-wide/16 v17, 0x0

    .line 81
    .line 82
    move-wide/from16 v14, v17

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Ljava/lang/Float;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    float-to-double v14, v2

    .line 96
    :goto_0
    sub-double/2addr v14, v11

    .line 97
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 98
    .line 99
    .line 100
    move-result-wide v11

    .line 101
    int-to-double v1, v1

    .line 102
    div-double/2addr v6, v1

    .line 103
    double-to-float v6, v6

    .line 104
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/lang/Float;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    div-float v13, v3, v4

    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/lang/Float;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    float-to-double v7, v14

    .line 127
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    mul-double/2addr v3, v7

    .line 132
    double-to-float v3, v3

    .line 133
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    mul-double/2addr v4, v7

    .line 138
    double-to-float v4, v4

    .line 139
    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 140
    .line 141
    .line 142
    float-to-double v5, v6

    .line 143
    add-double/2addr v11, v5

    .line 144
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 145
    .line 146
    .line 147
    move-result-wide v19

    .line 148
    const/4 v1, 0x0

    .line 149
    move-wide/from16 v21, v5

    .line 150
    .line 151
    :goto_1
    int-to-double v5, v1

    .line 152
    cmpg-double v2, v5, v19

    .line 153
    .line 154
    if-gez v2, :cond_5

    .line 155
    .line 156
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 157
    .line 158
    .line 159
    move-result-wide v5

    .line 160
    mul-double/2addr v5, v7

    .line 161
    double-to-float v15, v5

    .line 162
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    mul-double/2addr v5, v7

    .line 167
    double-to-float v6, v5

    .line 168
    cmpl-float v2, v13, v16

    .line 169
    .line 170
    if-eqz v2, :cond_4

    .line 171
    .line 172
    move-wide/from16 v23, v7

    .line 173
    .line 174
    float-to-double v7, v4

    .line 175
    move/from16 v25, v1

    .line 176
    .line 177
    float-to-double v0, v3

    .line 178
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 179
    .line 180
    .line 181
    move-result-wide v0

    .line 182
    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    sub-double/2addr v0, v7

    .line 188
    double-to-float v0, v0

    .line 189
    float-to-double v0, v0

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 191
    .line 192
    .line 193
    move-result-wide v7

    .line 194
    double-to-float v2, v7

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    double-to-float v0, v0

    .line 200
    float-to-double v7, v6

    .line 201
    move-object v1, v10

    .line 202
    move-wide/from16 v26, v11

    .line 203
    .line 204
    float-to-double v10, v15

    .line 205
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 206
    .line 207
    .line 208
    move-result-wide v7

    .line 209
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    sub-double/2addr v7, v10

    .line 215
    double-to-float v5, v7

    .line 216
    float-to-double v7, v5

    .line 217
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 218
    .line 219
    .line 220
    move-result-wide v10

    .line 221
    double-to-float v5, v10

    .line 222
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 223
    .line 224
    .line 225
    move-result-wide v7

    .line 226
    double-to-float v7, v7

    .line 227
    mul-float v8, v14, v13

    .line 228
    .line 229
    const/high16 v10, 0x3e800000    # 0.25f

    .line 230
    .line 231
    mul-float/2addr v8, v10

    .line 232
    mul-float/2addr v2, v8

    .line 233
    mul-float/2addr v0, v8

    .line 234
    mul-float/2addr v5, v8

    .line 235
    mul-float/2addr v8, v7

    .line 236
    sub-float/2addr v3, v2

    .line 237
    sub-float/2addr v4, v0

    .line 238
    add-float/2addr v5, v15

    .line 239
    add-float v0, v8, v6

    .line 240
    .line 241
    move-object v2, v9

    .line 242
    move-wide/from16 v10, v21

    .line 243
    .line 244
    move v12, v6

    .line 245
    move v6, v0

    .line 246
    move-wide/from16 v21, v23

    .line 247
    .line 248
    move v7, v15

    .line 249
    move v8, v12

    .line 250
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_4
    move/from16 v25, v1

    .line 255
    .line 256
    move-object v1, v10

    .line 257
    move-wide/from16 v26, v11

    .line 258
    .line 259
    move-wide/from16 v10, v21

    .line 260
    .line 261
    move v12, v6

    .line 262
    move-wide/from16 v21, v7

    .line 263
    .line 264
    invoke-virtual {v9, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    .line 266
    .line 267
    :goto_2
    add-double v2, v26, v10

    .line 268
    .line 269
    add-int/lit8 v0, v25, 0x1

    .line 270
    .line 271
    move v4, v12

    .line 272
    move-wide/from16 v7, v21

    .line 273
    .line 274
    move-wide/from16 v21, v10

    .line 275
    .line 276
    move-object v10, v1

    .line 277
    move-wide v11, v2

    .line 278
    move v3, v15

    .line 279
    move v1, v0

    .line 280
    move-object/from16 v0, p0

    .line 281
    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :cond_5
    move-object v1, v10

    .line 285
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Landroid/graphics/PointF;

    .line 290
    .line 291
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 292
    .line 293
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 294
    .line 295
    invoke-virtual {v9, v1, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 299
    .line 300
    .line 301
    :goto_3
    move-object v2, v9

    .line 302
    goto/16 :goto_12

    .line 303
    .line 304
    :cond_6
    move-object v1, v10

    .line 305
    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Ljava/lang/Float;

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v8, :cond_7

    .line 316
    .line 317
    const-wide/16 v13, 0x0

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_7
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    check-cast v2, Ljava/lang/Float;

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    float-to-double v13, v2

    .line 331
    :goto_4
    sub-double/2addr v13, v11

    .line 332
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    .line 333
    .line 334
    .line 335
    move-result-wide v10

    .line 336
    float-to-double v12, v0

    .line 337
    div-double/2addr v6, v12

    .line 338
    double-to-float v2, v6

    .line 339
    move-object/from16 v14, p0

    .line 340
    .line 341
    iget-boolean v6, v14, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    .line 342
    .line 343
    if-eqz v6, :cond_8

    .line 344
    .line 345
    const/high16 v6, -0x40800000    # -1.0f

    .line 346
    .line 347
    mul-float/2addr v2, v6

    .line 348
    :cond_8
    move v15, v2

    .line 349
    const/high16 v2, 0x40000000    # 2.0f

    .line 350
    .line 351
    div-float v8, v15, v2

    .line 352
    .line 353
    float-to-int v2, v0

    .line 354
    int-to-float v2, v2

    .line 355
    sub-float/2addr v0, v2

    .line 356
    cmpl-float v19, v0, v16

    .line 357
    .line 358
    if-eqz v19, :cond_9

    .line 359
    .line 360
    const/high16 v2, 0x3f800000    # 1.0f

    .line 361
    .line 362
    sub-float/2addr v2, v0

    .line 363
    mul-float/2addr v2, v8

    .line 364
    float-to-double v6, v2

    .line 365
    add-double/2addr v10, v6

    .line 366
    :cond_9
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    check-cast v2, Ljava/lang/Float;

    .line 371
    .line 372
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    iget-object v2, v14, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 377
    .line 378
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    check-cast v2, Ljava/lang/Float;

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    iget-object v2, v14, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 389
    .line 390
    if-eqz v2, :cond_a

    .line 391
    .line 392
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    check-cast v2, Ljava/lang/Float;

    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    div-float/2addr v2, v4

    .line 403
    move/from16 v20, v2

    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_a
    move/from16 v20, v16

    .line 407
    .line 408
    :goto_5
    if-eqz v3, :cond_b

    .line 409
    .line 410
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    check-cast v2, Ljava/lang/Float;

    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    div-float/2addr v2, v4

    .line 421
    move/from16 v21, v2

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_b
    move/from16 v21, v16

    .line 425
    .line 426
    :goto_6
    if-eqz v19, :cond_c

    .line 427
    .line 428
    invoke-static {v7, v6, v0, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    float-to-double v3, v2

    .line 433
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 434
    .line 435
    .line 436
    move-result-wide v22

    .line 437
    move/from16 v24, v6

    .line 438
    .line 439
    mul-double v5, v22, v3

    .line 440
    .line 441
    double-to-float v5, v5

    .line 442
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 443
    .line 444
    .line 445
    move-result-wide v22

    .line 446
    mul-double v3, v3, v22

    .line 447
    .line 448
    double-to-float v3, v3

    .line 449
    invoke-virtual {v9, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 450
    .line 451
    .line 452
    mul-float v4, v15, v0

    .line 453
    .line 454
    const/high16 v6, 0x40000000    # 2.0f

    .line 455
    .line 456
    div-float/2addr v4, v6

    .line 457
    move v6, v2

    .line 458
    move/from16 v22, v3

    .line 459
    .line 460
    float-to-double v2, v4

    .line 461
    add-double/2addr v10, v2

    .line 462
    move/from16 v3, v22

    .line 463
    .line 464
    move-wide/from16 v22, v10

    .line 465
    .line 466
    move v10, v6

    .line 467
    goto :goto_7

    .line 468
    :cond_c
    move/from16 v24, v6

    .line 469
    .line 470
    float-to-double v2, v7

    .line 471
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 472
    .line 473
    .line 474
    move-result-wide v4

    .line 475
    mul-double/2addr v4, v2

    .line 476
    double-to-float v5, v4

    .line 477
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 478
    .line 479
    .line 480
    move-result-wide v22

    .line 481
    mul-double v2, v2, v22

    .line 482
    .line 483
    double-to-float v3, v2

    .line 484
    invoke-virtual {v9, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 485
    .line 486
    .line 487
    move v4, v3

    .line 488
    float-to-double v2, v8

    .line 489
    add-double/2addr v10, v2

    .line 490
    move v3, v4

    .line 491
    move-wide/from16 v22, v10

    .line 492
    .line 493
    move/from16 v10, v16

    .line 494
    .line 495
    :goto_7
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 496
    .line 497
    .line 498
    move-result-wide v11

    .line 499
    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    .line 500
    .line 501
    mul-double v11, v11, v25

    .line 502
    .line 503
    const/4 v2, 0x0

    .line 504
    const/4 v4, 0x0

    .line 505
    move v13, v2

    .line 506
    move-wide/from16 v27, v25

    .line 507
    .line 508
    move-wide/from16 v25, v22

    .line 509
    .line 510
    move/from16 v22, v4

    .line 511
    .line 512
    move/from16 v23, v7

    .line 513
    .line 514
    :goto_8
    int-to-double v6, v13

    .line 515
    cmpg-double v2, v6, v11

    .line 516
    .line 517
    if-gez v2, :cond_17

    .line 518
    .line 519
    if-eqz v22, :cond_d

    .line 520
    .line 521
    move/from16 v2, v23

    .line 522
    .line 523
    goto :goto_9

    .line 524
    :cond_d
    move/from16 v2, v24

    .line 525
    .line 526
    :goto_9
    cmpl-float v4, v10, v16

    .line 527
    .line 528
    if-eqz v4, :cond_e

    .line 529
    .line 530
    sub-double v27, v11, v27

    .line 531
    .line 532
    cmpl-double v27, v6, v27

    .line 533
    .line 534
    if-nez v27, :cond_e

    .line 535
    .line 536
    mul-float v27, v15, v0

    .line 537
    .line 538
    const/high16 v28, 0x40000000    # 2.0f

    .line 539
    .line 540
    div-float v27, v27, v28

    .line 541
    .line 542
    move/from16 v37, v27

    .line 543
    .line 544
    move/from16 v27, v10

    .line 545
    .line 546
    move/from16 v10, v37

    .line 547
    .line 548
    goto :goto_a

    .line 549
    :cond_e
    move/from16 v27, v10

    .line 550
    .line 551
    move v10, v8

    .line 552
    :goto_a
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    .line 553
    .line 554
    if-eqz v4, :cond_f

    .line 555
    .line 556
    sub-double v30, v11, v28

    .line 557
    .line 558
    cmpl-double v4, v6, v30

    .line 559
    .line 560
    if-nez v4, :cond_f

    .line 561
    .line 562
    move/from16 v30, v15

    .line 563
    .line 564
    move/from16 v2, v27

    .line 565
    .line 566
    goto :goto_b

    .line 567
    :cond_f
    move/from16 v30, v15

    .line 568
    .line 569
    :goto_b
    float-to-double v14, v2

    .line 570
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    .line 571
    .line 572
    .line 573
    move-result-wide v31

    .line 574
    move-object/from16 v33, v1

    .line 575
    .line 576
    mul-double v1, v31, v14

    .line 577
    .line 578
    double-to-float v1, v1

    .line 579
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    .line 580
    .line 581
    .line 582
    move-result-wide v31

    .line 583
    mul-double v14, v14, v31

    .line 584
    .line 585
    double-to-float v14, v14

    .line 586
    cmpl-float v2, v20, v16

    .line 587
    .line 588
    if-nez v2, :cond_10

    .line 589
    .line 590
    cmpl-float v2, v21, v16

    .line 591
    .line 592
    if-nez v2, :cond_10

    .line 593
    .line 594
    invoke-virtual {v9, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 595
    .line 596
    .line 597
    move v15, v8

    .line 598
    move-object/from16 v35, v9

    .line 599
    .line 600
    move v8, v10

    .line 601
    move/from16 v34, v14

    .line 602
    .line 603
    move/from16 v10, v23

    .line 604
    .line 605
    move/from16 v9, v24

    .line 606
    .line 607
    const-wide v17, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    goto/16 :goto_11

    .line 613
    .line 614
    :cond_10
    move/from16 v31, v8

    .line 615
    .line 616
    move-object v15, v9

    .line 617
    float-to-double v8, v3

    .line 618
    move v4, v3

    .line 619
    float-to-double v2, v5

    .line 620
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 621
    .line 622
    .line 623
    move-result-wide v2

    .line 624
    const-wide v17, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    sub-double v2, v2, v17

    .line 630
    .line 631
    double-to-float v2, v2

    .line 632
    float-to-double v2, v2

    .line 633
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 634
    .line 635
    .line 636
    move-result-wide v8

    .line 637
    double-to-float v8, v8

    .line 638
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 639
    .line 640
    .line 641
    move-result-wide v2

    .line 642
    double-to-float v2, v2

    .line 643
    move/from16 v32, v10

    .line 644
    .line 645
    float-to-double v9, v14

    .line 646
    move/from16 v34, v14

    .line 647
    .line 648
    move-object/from16 v35, v15

    .line 649
    .line 650
    float-to-double v14, v1

    .line 651
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 652
    .line 653
    .line 654
    move-result-wide v9

    .line 655
    sub-double v9, v9, v17

    .line 656
    .line 657
    double-to-float v3, v9

    .line 658
    float-to-double v9, v3

    .line 659
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 660
    .line 661
    .line 662
    move-result-wide v14

    .line 663
    double-to-float v3, v14

    .line 664
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 665
    .line 666
    .line 667
    move-result-wide v9

    .line 668
    double-to-float v9, v9

    .line 669
    if-eqz v22, :cond_11

    .line 670
    .line 671
    move/from16 v10, v20

    .line 672
    .line 673
    goto :goto_c

    .line 674
    :cond_11
    move/from16 v10, v21

    .line 675
    .line 676
    :goto_c
    if-eqz v22, :cond_12

    .line 677
    .line 678
    move/from16 v14, v21

    .line 679
    .line 680
    goto :goto_d

    .line 681
    :cond_12
    move/from16 v14, v20

    .line 682
    .line 683
    :goto_d
    if-eqz v22, :cond_13

    .line 684
    .line 685
    move/from16 v15, v24

    .line 686
    .line 687
    goto :goto_e

    .line 688
    :cond_13
    move/from16 v15, v23

    .line 689
    .line 690
    :goto_e
    if-eqz v22, :cond_14

    .line 691
    .line 692
    move/from16 v36, v23

    .line 693
    .line 694
    goto :goto_f

    .line 695
    :cond_14
    move/from16 v36, v24

    .line 696
    .line 697
    :goto_f
    mul-float/2addr v15, v10

    .line 698
    const v10, 0x3ef4e26d    # 0.47829f

    .line 699
    .line 700
    .line 701
    mul-float/2addr v15, v10

    .line 702
    mul-float/2addr v8, v15

    .line 703
    mul-float/2addr v15, v2

    .line 704
    mul-float v36, v36, v14

    .line 705
    .line 706
    mul-float v36, v36, v10

    .line 707
    .line 708
    mul-float v3, v3, v36

    .line 709
    .line 710
    mul-float v36, v36, v9

    .line 711
    .line 712
    if-eqz v19, :cond_16

    .line 713
    .line 714
    if-nez v13, :cond_15

    .line 715
    .line 716
    mul-float/2addr v8, v0

    .line 717
    mul-float/2addr v15, v0

    .line 718
    goto :goto_10

    .line 719
    :cond_15
    sub-double v9, v11, v28

    .line 720
    .line 721
    cmpl-double v2, v6, v9

    .line 722
    .line 723
    if-nez v2, :cond_16

    .line 724
    .line 725
    mul-float/2addr v3, v0

    .line 726
    mul-float v36, v36, v0

    .line 727
    .line 728
    :cond_16
    :goto_10
    sub-float/2addr v5, v8

    .line 729
    sub-float/2addr v4, v15

    .line 730
    add-float v6, v1, v3

    .line 731
    .line 732
    add-float v7, v34, v36

    .line 733
    .line 734
    move-object/from16 v2, v35

    .line 735
    .line 736
    move v3, v5

    .line 737
    move v5, v6

    .line 738
    move/from16 v9, v24

    .line 739
    .line 740
    move v6, v7

    .line 741
    move/from16 v10, v23

    .line 742
    .line 743
    move v7, v1

    .line 744
    move/from16 v15, v31

    .line 745
    .line 746
    move/from16 v8, v34

    .line 747
    .line 748
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 749
    .line 750
    .line 751
    move/from16 v8, v32

    .line 752
    .line 753
    :goto_11
    float-to-double v2, v8

    .line 754
    add-double v25, v25, v2

    .line 755
    .line 756
    xor-int/lit8 v22, v22, 0x1

    .line 757
    .line 758
    add-int/lit8 v13, v13, 0x1

    .line 759
    .line 760
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 761
    .line 762
    move-object/from16 v14, p0

    .line 763
    .line 764
    move v5, v1

    .line 765
    move/from16 v24, v9

    .line 766
    .line 767
    move/from16 v23, v10

    .line 768
    .line 769
    move v8, v15

    .line 770
    move/from16 v10, v27

    .line 771
    .line 772
    move/from16 v15, v30

    .line 773
    .line 774
    move-object/from16 v1, v33

    .line 775
    .line 776
    move-object/from16 v9, v35

    .line 777
    .line 778
    move-wide/from16 v27, v2

    .line 779
    .line 780
    move/from16 v3, v34

    .line 781
    .line 782
    goto/16 :goto_8

    .line 783
    .line 784
    :cond_17
    move-object/from16 v33, v1

    .line 785
    .line 786
    move-object/from16 v35, v9

    .line 787
    .line 788
    invoke-virtual/range {v33 .. v33}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    check-cast v0, Landroid/graphics/PointF;

    .line 793
    .line 794
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 795
    .line 796
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 797
    .line 798
    move-object/from16 v2, v35

    .line 799
    .line 800
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 804
    .line 805
    .line 806
    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 807
    .line 808
    .line 809
    move-object/from16 v0, p0

    .line 810
    .line 811
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 812
    .line 813
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 814
    .line 815
    .line 816
    const/4 v1, 0x1

    .line 817
    iput-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 818
    .line 819
    return-object v2
.end method

.method public final onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    move-object v0, p1

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 16
    .line 17
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 24
    .line 25
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->contents:Ljava/util/List;

    .line 32
    .line 33
    check-cast v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method
