.class public final Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

.field public final synthetic $drawHole:Z

.field public final synthetic $endBottom:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $endBottomCornerRadius:F

.field public final synthetic $endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $endLeft:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $endRight:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $endState:Lcom/android/systemui/animation/LaunchAnimator$State;

.field public final synthetic $endTop:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $endTopCornerRadius:F

.field public final synthetic $endWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $fadeOutWindowBackgroundLayer:Z

.field public final synthetic $launchContainer:Landroid/view/ViewGroup;

.field public final synthetic $launchContainerOverlay:Landroid/view/ViewGroupOverlay;

.field public final synthetic $moveBackgroundLayerWhenAppIsVisible:Z

.field public final synthetic $movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $openingWindowSyncView:Landroid/view/View;

.field public final synthetic $openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

.field public final synthetic $startBottom:I

.field public final synthetic $startBottomCornerRadius:F

.field public final synthetic $startCenterX:F

.field public final synthetic $startTop:I

.field public final synthetic $startTopCornerRadius:F

.field public final synthetic $startWidth:I

.field public final synthetic $state:Lcom/android/systemui/animation/LaunchAnimator$State;

.field public final synthetic $windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic this$0:Lcom/android/systemui/animation/LaunchAnimator;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/animation/LaunchAnimator;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFZLkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$Controller;ZZLcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 2

    .line 1
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    move v1, p3

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startCenterX:F

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    move v1, p5

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startWidth:I

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    move v1, p8

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTop:I

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    move v1, p10

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottom:I

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    move v1, p12

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTopCornerRadius:F

    move v1, p13

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTopCornerRadius:F

    move/from16 v1, p14

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottomCornerRadius:F

    move/from16 v1, p15

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottomCornerRadius:F

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$moveBackgroundLayerWhenAppIsVisible:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$launchContainerOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$launchContainer:Landroid/view/ViewGroup;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$openingWindowSyncView:Landroid/view/View;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$fadeOutWindowBackgroundLayer:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$drawHole:Z

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endState:Lcom/android/systemui/animation/LaunchAnimator$State;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endLeft:Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endRight:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endState:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endLeft:Lkotlin/jvm/internal/Ref$IntRef;

    .line 17
    .line 18
    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endRight:Lkotlin/jvm/internal/Ref$IntRef;

    .line 19
    .line 20
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 21
    .line 22
    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    .line 23
    .line 24
    sget-object v8, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    .line 25
    .line 26
    iget v8, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 27
    .line 28
    iget v9, v2, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 29
    .line 30
    const/high16 v10, 0x40000000    # 2.0f

    .line 31
    .line 32
    if-ne v8, v9, :cond_1

    .line 33
    .line 34
    iget v8, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 35
    .line 36
    iget v11, v2, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 37
    .line 38
    if-ne v8, v11, :cond_1

    .line 39
    .line 40
    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 41
    .line 42
    iget v11, v2, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 43
    .line 44
    if-ne v8, v11, :cond_1

    .line 45
    .line 46
    iget v8, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 47
    .line 48
    iget v11, v2, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 49
    .line 50
    if-eq v8, v11, :cond_2

    .line 51
    .line 52
    :cond_1
    iput v9, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 53
    .line 54
    iget v1, v2, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 55
    .line 56
    iput v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 57
    .line 58
    iget v1, v2, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 59
    .line 60
    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 61
    .line 62
    iget v1, v2, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 63
    .line 64
    iput v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 65
    .line 66
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 67
    .line 68
    add-int v3, v2, v1

    .line 69
    .line 70
    int-to-float v3, v3

    .line 71
    div-float/2addr v3, v10

    .line 72
    iput v3, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 73
    .line 74
    sub-int/2addr v1, v2

    .line 75
    iput v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 76
    .line 77
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/systemui/animation/LaunchAnimator;->interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->positionInterpolator:Landroid/view/animation/Interpolator;

    .line 86
    .line 87
    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    .line 92
    .line 93
    iget-object v3, v3, Lcom/android/systemui/animation/LaunchAnimator;->interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 94
    .line 95
    iget-object v3, v3, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->positionXInterpolator:Landroid/view/animation/Interpolator;

    .line 96
    .line 97
    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    iget v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startCenterX:F

    .line 102
    .line 103
    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 104
    .line 105
    iget v5, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 106
    .line 107
    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    iget v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startWidth:I

    .line 112
    .line 113
    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    .line 114
    .line 115
    iget v5, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 116
    .line 117
    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    div-float/2addr v4, v10

    .line 122
    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 123
    .line 124
    iget v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTop:I

    .line 125
    .line 126
    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    .line 127
    .line 128
    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 129
    .line 130
    invoke-static {v6, v7, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    iput v6, v5, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 139
    .line 140
    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 141
    .line 142
    iget v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottom:I

    .line 143
    .line 144
    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    .line 145
    .line 146
    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 147
    .line 148
    invoke-static {v6, v7, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    iput v6, v5, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 157
    .line 158
    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 159
    .line 160
    sub-float v6, v3, v4

    .line 161
    .line 162
    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    iput v6, v5, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 167
    .line 168
    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 169
    .line 170
    add-float/2addr v3, v4

    .line 171
    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    iput v3, v5, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 176
    .line 177
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 178
    .line 179
    iget v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTopCornerRadius:F

    .line 180
    .line 181
    iget v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTopCornerRadius:F

    .line 182
    .line 183
    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    iput v4, v3, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    .line 188
    .line 189
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 190
    .line 191
    iget v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottomCornerRadius:F

    .line 192
    .line 193
    iget v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottomCornerRadius:F

    .line 194
    .line 195
    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    iput v4, v3, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    .line 200
    .line 201
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 202
    .line 203
    sget-object v4, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    .line 204
    .line 205
    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    .line 206
    .line 207
    iget-object v11, v5, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 208
    .line 209
    iget-wide v13, v11, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDelay:J

    .line 210
    .line 211
    iget-wide v5, v11, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDuration:J

    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    move v12, v1

    .line 217
    move-wide v15, v5

    .line 218
    invoke-static/range {v11 .. v16}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    const/high16 v5, 0x3f800000    # 1.0f

    .line 223
    .line 224
    cmpg-float v4, v4, v5

    .line 225
    .line 226
    const/4 v6, 0x0

    .line 227
    const/4 v7, 0x1

    .line 228
    if-gez v4, :cond_3

    .line 229
    .line 230
    move v4, v7

    .line 231
    goto :goto_0

    .line 232
    :cond_3
    move v4, v6

    .line 233
    :goto_0
    iput-boolean v4, v3, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    .line 234
    .line 235
    iget-boolean v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$moveBackgroundLayerWhenAppIsVisible:Z

    .line 236
    .line 237
    if-eqz v3, :cond_4

    .line 238
    .line 239
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 240
    .line 241
    iget-boolean v3, v3, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    .line 242
    .line 243
    if-nez v3, :cond_4

    .line 244
    .line 245
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 246
    .line 247
    iget-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 248
    .line 249
    if-nez v4, :cond_4

    .line 250
    .line 251
    iput-boolean v7, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 252
    .line 253
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$launchContainerOverlay:Landroid/view/ViewGroupOverlay;

    .line 254
    .line 255
    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    .line 256
    .line 257
    invoke-virtual {v3, v4}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 258
    .line 259
    .line 260
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    .line 261
    .line 262
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    .line 266
    .line 267
    invoke-virtual {v3, v4}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 268
    .line 269
    .line 270
    sget-object v3, Lcom/android/systemui/animation/ViewRootSync;->INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

    .line 271
    .line 272
    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$launchContainer:Landroid/view/ViewGroup;

    .line 273
    .line 274
    iget-object v8, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$openingWindowSyncView:Landroid/view/View;

    .line 275
    .line 276
    sget-object v9, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2$1;->INSTANCE:Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2$1;

    .line 277
    .line 278
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    invoke-static {v4, v8, v9}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 282
    .line 283
    .line 284
    :cond_4
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 285
    .line 286
    iget-boolean v3, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 287
    .line 288
    if-eqz v3, :cond_5

    .line 289
    .line 290
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$openingWindowSyncView:Landroid/view/View;

    .line 291
    .line 292
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_5
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    .line 297
    .line 298
    invoke-interface {v3}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    :goto_1
    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    .line 303
    .line 304
    iget-object v8, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    .line 305
    .line 306
    iget-object v9, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 307
    .line 308
    iget-boolean v10, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$fadeOutWindowBackgroundLayer:Z

    .line 309
    .line 310
    iget-boolean v15, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$drawHole:Z

    .line 311
    .line 312
    iget-object v11, v4, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    .line 313
    .line 314
    invoke-virtual {v3, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 315
    .line 316
    .line 317
    iget v3, v9, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 318
    .line 319
    aget v12, v11, v6

    .line 320
    .line 321
    sub-int/2addr v3, v12

    .line 322
    iget v13, v9, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 323
    .line 324
    aget v11, v11, v7

    .line 325
    .line 326
    sub-int/2addr v13, v11

    .line 327
    iget v14, v9, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 328
    .line 329
    sub-int/2addr v14, v12

    .line 330
    iget v12, v9, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 331
    .line 332
    sub-int/2addr v12, v11

    .line 333
    invoke-virtual {v8, v3, v13, v14, v12}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 334
    .line 335
    .line 336
    iget v3, v9, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    .line 337
    .line 338
    iget-object v11, v4, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    .line 339
    .line 340
    aput v3, v11, v6

    .line 341
    .line 342
    aput v3, v11, v7

    .line 343
    .line 344
    const/4 v6, 0x2

    .line 345
    aput v3, v11, v6

    .line 346
    .line 347
    const/4 v6, 0x3

    .line 348
    aput v3, v11, v6

    .line 349
    .line 350
    iget v3, v9, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    .line 351
    .line 352
    const/4 v6, 0x4

    .line 353
    aput v3, v11, v6

    .line 354
    .line 355
    const/4 v6, 0x5

    .line 356
    aput v3, v11, v6

    .line 357
    .line 358
    const/4 v6, 0x6

    .line 359
    aput v3, v11, v6

    .line 360
    .line 361
    const/4 v6, 0x7

    .line 362
    aput v3, v11, v6

    .line 363
    .line 364
    invoke-virtual {v8, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 365
    .line 366
    .line 367
    iget-object v3, v4, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 368
    .line 369
    iget-wide v13, v3, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDelay:J

    .line 370
    .line 371
    iget-wide v11, v3, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDuration:J

    .line 372
    .line 373
    move-wide/from16 v16, v11

    .line 374
    .line 375
    move-object v11, v3

    .line 376
    move v12, v1

    .line 377
    move v6, v15

    .line 378
    move-wide/from16 v15, v16

    .line 379
    .line 380
    invoke-static/range {v11 .. v16}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    cmpg-float v5, v9, v5

    .line 385
    .line 386
    iget-object v4, v4, Lcom/android/systemui/animation/LaunchAnimator;->interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 387
    .line 388
    const/16 v15, 0xff

    .line 389
    .line 390
    if-gez v5, :cond_6

    .line 391
    .line 392
    iget-object v3, v4, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 393
    .line 394
    invoke-interface {v3, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    int-to-float v4, v15

    .line 399
    mul-float/2addr v3, v4

    .line 400
    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 405
    .line 406
    .line 407
    goto :goto_2

    .line 408
    :cond_6
    if-eqz v10, :cond_7

    .line 409
    .line 410
    iget-wide v13, v3, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDelay:J

    .line 411
    .line 412
    iget-wide v9, v3, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDuration:J

    .line 413
    .line 414
    move-object v11, v3

    .line 415
    move v12, v1

    .line 416
    move v3, v15

    .line 417
    move-wide v15, v9

    .line 418
    invoke-static/range {v11 .. v16}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    int-to-float v7, v7

    .line 423
    iget-object v4, v4, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 424
    .line 425
    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    sub-float/2addr v7, v4

    .line 430
    int-to-float v3, v3

    .line 431
    mul-float/2addr v7, v3

    .line 432
    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 437
    .line 438
    .line 439
    if-eqz v6, :cond_8

    .line 440
    .line 441
    sget-object v3, Lcom/android/systemui/animation/LaunchAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    .line 442
    .line 443
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 444
    .line 445
    .line 446
    goto :goto_2

    .line 447
    :cond_7
    move v3, v15

    .line 448
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 449
    .line 450
    .line 451
    :cond_8
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    .line 452
    .line 453
    iget-object v0, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 454
    .line 455
    invoke-interface {v3, v0, v2, v1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    .line 456
    .line 457
    .line 458
    return-void
.end method
