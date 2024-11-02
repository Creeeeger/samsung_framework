.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$4;

.field public static final BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$3;

.field public static final DRAWABLE_ORIGIN_PROPERTY:Landroidx/transition/ChangeBounds$1;

.field public static final POSITION_PROPERTY:Landroidx/transition/ChangeBounds$6;

.field public static final TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$5;

.field public static final TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final sRectEvaluator:Landroidx/transition/RectEvaluator;

.field public static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public mResizeClip:Z

.field public final mTempLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "android:changeBounds:clip"

    .line 2
    .line 3
    const-string v1, "android:changeBounds:parent"

    .line 4
    .line 5
    const-string v2, "android:changeBounds:bounds"

    .line 6
    .line 7
    const-string v3, "android:changeBounds:windowX"

    .line 8
    .line 9
    const-string v4, "android:changeBounds:windowY"

    .line 10
    .line 11
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Landroidx/transition/ChangeBounds$1;

    .line 18
    .line 19
    const-class v1, Landroid/graphics/PointF;

    .line 20
    .line 21
    const-string v2, "boundsOrigin"

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroidx/transition/ChangeBounds$1;

    .line 27
    .line 28
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    .line 29
    .line 30
    const-class v1, Landroid/graphics/PointF;

    .line 31
    .line 32
    const-string/jumbo v2, "topLeft"

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 39
    .line 40
    new-instance v0, Landroidx/transition/ChangeBounds$3;

    .line 41
    .line 42
    const-class v1, Landroid/graphics/PointF;

    .line 43
    .line 44
    const-string v3, "bottomRight"

    .line 45
    .line 46
    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$3;

    .line 50
    .line 51
    new-instance v0, Landroidx/transition/ChangeBounds$4;

    .line 52
    .line 53
    const-class v1, Landroid/graphics/PointF;

    .line 54
    .line 55
    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$4;

    .line 59
    .line 60
    new-instance v0, Landroidx/transition/ChangeBounds$5;

    .line 61
    .line 62
    const-class v1, Landroid/graphics/PointF;

    .line 63
    .line 64
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$5;

    .line 68
    .line 69
    new-instance v0, Landroidx/transition/ChangeBounds$6;

    .line 70
    .line 71
    const-class v1, Landroid/graphics/PointF;

    .line 72
    .line 73
    const-string/jumbo v2, "position"

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$6;

    .line 80
    .line 81
    new-instance v0, Landroidx/transition/RectEvaluator;

    .line 82
    .line 83
    invoke-direct {v0}, Landroidx/transition/RectEvaluator;-><init>()V

    .line 84
    .line 85
    .line 86
    sput-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    .line 87
    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 7
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v1, "resizeClip"

    .line 9
    invoke-static {p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .line 45
    .line 46
    check-cast p1, Ljava/util/HashMap;

    .line 47
    .line 48
    const-string v2, "android:changeBounds:bounds"

    .line 49
    .line 50
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "android:changeBounds:parent"

    .line 58
    .line 59
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-boolean p0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 63
    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api18Impl;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v0, "android:changeBounds:clip"

    .line 71
    .line 72
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    if-eqz v0, :cond_1b

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_d

    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v3, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 16
    .line 17
    check-cast v0, Ljava/util/HashMap;

    .line 18
    .line 19
    const-string v4, "android:changeBounds:parent"

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Landroid/view/ViewGroup;

    .line 26
    .line 27
    check-cast v3, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Landroid/view/ViewGroup;

    .line 34
    .line 35
    if-eqz v5, :cond_1a

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    goto/16 :goto_c

    .line 40
    .line 41
    :cond_1
    const-string v4, "android:changeBounds:bounds"

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/graphics/Rect;

    .line 54
    .line 55
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    iget v9, v5, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 62
    .line 63
    iget v11, v5, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    iget v12, v4, Landroid/graphics/Rect;->right:I

    .line 66
    .line 67
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 70
    .line 71
    sub-int v4, v11, v6

    .line 72
    .line 73
    sub-int v14, v5, v9

    .line 74
    .line 75
    sub-int v15, v12, v7

    .line 76
    .line 77
    sub-int v2, v13, v10

    .line 78
    .line 79
    const-string v1, "android:changeBounds:clip"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    move-object v3, v1

    .line 92
    check-cast v3, Landroid/graphics/Rect;

    .line 93
    .line 94
    if-eqz v4, :cond_2

    .line 95
    .line 96
    if-nez v14, :cond_3

    .line 97
    .line 98
    :cond_2
    if-eqz v15, :cond_7

    .line 99
    .line 100
    if-eqz v2, :cond_7

    .line 101
    .line 102
    :cond_3
    if-ne v6, v7, :cond_5

    .line 103
    .line 104
    if-eq v9, v10, :cond_4

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    const/16 v16, 0x0

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    :goto_0
    const/16 v16, 0x1

    .line 111
    .line 112
    :goto_1
    if-ne v11, v12, :cond_6

    .line 113
    .line 114
    if-eq v5, v13, :cond_8

    .line 115
    .line 116
    :cond_6
    add-int/lit8 v16, v16, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_7
    const/16 v16, 0x0

    .line 120
    .line 121
    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v17

    .line 127
    if-eqz v17, :cond_a

    .line 128
    .line 129
    :cond_9
    if-nez v0, :cond_b

    .line 130
    .line 131
    if-eqz v3, :cond_b

    .line 132
    .line 133
    :cond_a
    add-int/lit8 v16, v16, 0x1

    .line 134
    .line 135
    :cond_b
    move/from16 v1, v16

    .line 136
    .line 137
    if-lez v1, :cond_19

    .line 138
    .line 139
    move-object/from16 v16, v3

    .line 140
    .line 141
    iget-boolean v3, v8, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 142
    .line 143
    move-object/from16 v18, v0

    .line 144
    .line 145
    move-object/from16 v0, p3

    .line 146
    .line 147
    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 148
    .line 149
    if-nez v3, :cond_10

    .line 150
    .line 151
    invoke-static {v0, v6, v9, v11, v5}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 152
    .line 153
    .line 154
    const/4 v3, 0x2

    .line 155
    if-ne v1, v3, :cond_d

    .line 156
    .line 157
    if-ne v4, v15, :cond_c

    .line 158
    .line 159
    if-ne v14, v2, :cond_c

    .line 160
    .line 161
    iget-object v1, v8, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 162
    .line 163
    int-to-float v2, v6

    .line 164
    int-to-float v3, v9

    .line 165
    int-to-float v4, v7

    .line 166
    int-to-float v5, v10

    .line 167
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    sget-object v2, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$6;

    .line 172
    .line 173
    const/4 v3, 0x0

    .line 174
    invoke-static {v0, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    goto :goto_4

    .line 179
    :cond_c
    new-instance v1, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 180
    .line 181
    invoke-direct {v1, v0}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 182
    .line 183
    .line 184
    iget-object v2, v8, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 185
    .line 186
    int-to-float v3, v6

    .line 187
    int-to-float v4, v9

    .line 188
    int-to-float v6, v7

    .line 189
    int-to-float v7, v10

    .line 190
    invoke-virtual {v2, v3, v4, v6, v7}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    sget-object v3, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 195
    .line 196
    const/4 v4, 0x0

    .line 197
    invoke-static {v1, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    iget-object v3, v8, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 202
    .line 203
    int-to-float v6, v11

    .line 204
    int-to-float v5, v5

    .line 205
    int-to-float v7, v12

    .line 206
    int-to-float v9, v13

    .line 207
    invoke-virtual {v3, v6, v5, v7, v9}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    sget-object v5, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$3;

    .line 212
    .line 213
    invoke-static {v1, v5, v4, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 218
    .line 219
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 220
    .line 221
    .line 222
    filled-new-array {v2, v3}, [Landroid/animation/Animator;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 227
    .line 228
    .line 229
    new-instance v2, Landroidx/transition/ChangeBounds$7;

    .line 230
    .line 231
    invoke-direct {v2, v8, v1}, Landroidx/transition/ChangeBounds$7;-><init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_d
    if-ne v6, v7, :cond_f

    .line 239
    .line 240
    if-eq v9, v10, :cond_e

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_e
    iget-object v1, v8, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 244
    .line 245
    int-to-float v2, v11

    .line 246
    int-to-float v3, v5

    .line 247
    int-to-float v4, v12

    .line 248
    int-to-float v5, v13

    .line 249
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    sget-object v2, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$4;

    .line 254
    .line 255
    const/4 v3, 0x0

    .line 256
    invoke-static {v0, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    goto :goto_4

    .line 261
    :cond_f
    :goto_3
    const/4 v3, 0x0

    .line 262
    iget-object v1, v8, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 263
    .line 264
    int-to-float v2, v6

    .line 265
    int-to-float v4, v9

    .line 266
    int-to-float v5, v7

    .line 267
    int-to-float v6, v10

    .line 268
    invoke-virtual {v1, v2, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    sget-object v2, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$5;

    .line 273
    .line 274
    invoke-static {v0, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    :goto_4
    move-object v4, v1

    .line 279
    :goto_5
    move-object v15, v0

    .line 280
    const/4 v10, 0x1

    .line 281
    goto/16 :goto_b

    .line 282
    .line 283
    :cond_10
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    add-int/2addr v1, v6

    .line 292
    add-int/2addr v3, v9

    .line 293
    invoke-static {v0, v6, v9, v1, v3}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 294
    .line 295
    .line 296
    if-ne v6, v7, :cond_12

    .line 297
    .line 298
    if-eq v9, v10, :cond_11

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_11
    const/4 v9, 0x0

    .line 302
    goto :goto_7

    .line 303
    :cond_12
    :goto_6
    iget-object v1, v8, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 304
    .line 305
    int-to-float v3, v6

    .line 306
    int-to-float v5, v9

    .line 307
    int-to-float v6, v7

    .line 308
    int-to-float v9, v10

    .line 309
    invoke-virtual {v1, v3, v5, v6, v9}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    sget-object v3, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$6;

    .line 314
    .line 315
    const/4 v5, 0x0

    .line 316
    invoke-static {v0, v3, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    move-object v9, v3

    .line 321
    :goto_7
    if-nez v18, :cond_13

    .line 322
    .line 323
    new-instance v1, Landroid/graphics/Rect;

    .line 324
    .line 325
    const/4 v3, 0x0

    .line 326
    invoke-direct {v1, v3, v3, v4, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 327
    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_13
    const/4 v3, 0x0

    .line 331
    move-object/from16 v1, v18

    .line 332
    .line 333
    :goto_8
    if-nez v16, :cond_14

    .line 334
    .line 335
    new-instance v4, Landroid/graphics/Rect;

    .line 336
    .line 337
    invoke-direct {v4, v3, v3, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_14
    move-object/from16 v4, v16

    .line 342
    .line 343
    :goto_9
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-nez v2, :cond_15

    .line 348
    .line 349
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 350
    .line 351
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat$Api18Impl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 352
    .line 353
    .line 354
    sget-object v2, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    .line 355
    .line 356
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    const-string v3, "clipBounds"

    .line 361
    .line 362
    invoke-static {v0, v3, v2, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 363
    .line 364
    .line 365
    move-result-object v11

    .line 366
    new-instance v14, Landroidx/transition/ChangeBounds$8;

    .line 367
    .line 368
    move-object v15, v0

    .line 369
    move-object v0, v14

    .line 370
    const/4 v6, 0x1

    .line 371
    move-object/from16 v1, p0

    .line 372
    .line 373
    move-object v2, v15

    .line 374
    move-object/from16 v3, v16

    .line 375
    .line 376
    move v4, v7

    .line 377
    move v5, v10

    .line 378
    move v10, v6

    .line 379
    move v6, v12

    .line 380
    move v7, v13

    .line 381
    invoke-direct/range {v0 .. v7}, Landroidx/transition/ChangeBounds$8;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v11, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 385
    .line 386
    .line 387
    move-object v2, v11

    .line 388
    goto :goto_a

    .line 389
    :cond_15
    move-object v15, v0

    .line 390
    const/4 v10, 0x1

    .line 391
    const/4 v2, 0x0

    .line 392
    :goto_a
    if-nez v9, :cond_16

    .line 393
    .line 394
    move-object v4, v2

    .line 395
    goto :goto_b

    .line 396
    :cond_16
    if-nez v2, :cond_17

    .line 397
    .line 398
    move-object v4, v9

    .line 399
    goto :goto_b

    .line 400
    :cond_17
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 401
    .line 402
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 403
    .line 404
    .line 405
    filled-new-array {v9, v2}, [Landroid/animation/Animator;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 410
    .line 411
    .line 412
    move-object v4, v0

    .line 413
    :goto_b
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 418
    .line 419
    if-eqz v0, :cond_18

    .line 420
    .line 421
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    check-cast v0, Landroid/view/ViewGroup;

    .line 426
    .line 427
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 428
    .line 429
    .line 430
    new-instance v1, Landroidx/transition/ChangeBounds$9;

    .line 431
    .line 432
    invoke-direct {v1, v8, v0}, Landroidx/transition/ChangeBounds$9;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v8, v1}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 436
    .line 437
    .line 438
    :cond_18
    return-object v4

    .line 439
    :cond_19
    const/4 v0, 0x0

    .line 440
    return-object v0

    .line 441
    :cond_1a
    :goto_c
    const/4 v0, 0x0

    .line 442
    return-object v0

    .line 443
    :cond_1b
    :goto_d
    const/4 v0, 0x0

    .line 444
    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
