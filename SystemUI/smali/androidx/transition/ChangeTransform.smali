.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final NON_TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

.field public static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field public static final TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$2;

.field public static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public final mReparent:Z

.field public final mTempMatrix:Landroid/graphics/Matrix;

.field public final mUseOverlay:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "android:changeTransform:parentMatrix"

    .line 2
    .line 3
    const-string v1, "android:changeTransform:matrix"

    .line 4
    .line 5
    const-string v2, "android:changeTransform:transforms"

    .line 6
    .line 7
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    .line 14
    .line 15
    const-class v1, [F

    .line 16
    .line 17
    const-string/jumbo v2, "nonTranslations"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

    .line 24
    .line 25
    new-instance v0, Landroidx/transition/ChangeTransform$2;

    .line 26
    .line 27
    const-class v1, Landroid/graphics/PointF;

    .line 28
    .line 29
    const-string/jumbo v2, "translations"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$2;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    sput-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 3
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 7
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 8
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 9
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v1, "reparentWithOverlay"

    .line 11
    invoke-static {p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 13
    :goto_0
    iput-boolean v1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    const-string/jumbo v1, "reparent"

    .line 14
    invoke-static {p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 16
    :goto_1
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast p1, Ljava/util/HashMap;

    .line 19
    .line 20
    const-string v2, "android:changeTransform:parent"

    .line 21
    .line 22
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroidx/transition/ChangeTransform$Transforms;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "android:changeTransform:transforms"

    .line 31
    .line 32
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 55
    :goto_1
    const-string v1, "android:changeTransform:matrix"

    .line 56
    .line 57
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    iget-boolean p0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 61
    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    new-instance p0, Landroid/graphics/Matrix;

    .line 65
    .line 66
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/view/ViewGroup;

    .line 74
    .line 75
    sget-object v2, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p0}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    neg-int v2, v2

    .line 88
    int-to-float v2, v2

    .line 89
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    neg-int v1, v1

    .line 94
    int-to-float v1, v1

    .line 95
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 96
    .line 97
    .line 98
    const-string v1, "android:changeTransform:parentMatrix"

    .line 99
    .line 100
    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    const p0, 0x7f0a0c24

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string v1, "android:changeTransform:intermediateMatrix"

    .line 111
    .line 112
    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const p0, 0x7f0a07cb

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const-string v0, "android:changeTransform:intermediateParentMatrix"

    .line 123
    .line 124
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_3
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    if-eqz v9, :cond_23

    .line 10
    .line 11
    if-eqz v0, :cond_23

    .line 12
    .line 13
    iget-object v1, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 14
    .line 15
    move-object v11, v1

    .line 16
    check-cast v11, Ljava/util/HashMap;

    .line 17
    .line 18
    const-string v12, "android:changeTransform:parent"

    .line 19
    .line 20
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_23

    .line 25
    .line 26
    iget-object v1, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 27
    .line 28
    move-object v13, v1

    .line 29
    check-cast v13, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    goto/16 :goto_14

    .line 38
    .line 39
    :cond_0
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v14, v1

    .line 44
    check-cast v14, Landroid/view/ViewGroup;

    .line 45
    .line 46
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/view/ViewGroup;

    .line 51
    .line 52
    iget-boolean v2, v7, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 53
    .line 54
    const/4 v15, 0x1

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v7, v14}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {v7, v1}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v7, v14, v15}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    iget-object v2, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 77
    .line 78
    if-ne v1, v2, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    if-ne v14, v1, :cond_3

    .line 82
    .line 83
    :goto_1
    move v1, v15

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v1, 0x0

    .line 86
    :goto_2
    if-nez v1, :cond_4

    .line 87
    .line 88
    move/from16 v16, v15

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    const/16 v16, 0x0

    .line 92
    .line 93
    :goto_3
    const-string v1, "android:changeTransform:intermediateMatrix"

    .line 94
    .line 95
    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroid/graphics/Matrix;

    .line 100
    .line 101
    const-string v2, "android:changeTransform:matrix"

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_5
    const-string v1, "android:changeTransform:intermediateParentMatrix"

    .line 109
    .line 110
    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroid/graphics/Matrix;

    .line 115
    .line 116
    const-string v5, "android:changeTransform:parentMatrix"

    .line 117
    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    invoke-virtual {v11, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_6
    iget-object v4, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 124
    .line 125
    if-eqz v16, :cond_8

    .line 126
    .line 127
    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Landroid/graphics/Matrix;

    .line 132
    .line 133
    const v1, 0x7f0a07cb

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v7, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/graphics/Matrix;

    .line 152
    .line 153
    if-nez v0, :cond_7

    .line 154
    .line 155
    new-instance v0, Landroid/graphics/Matrix;

    .line 156
    .line 157
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Landroid/graphics/Matrix;

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 173
    .line 174
    .line 175
    :cond_8
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Landroid/graphics/Matrix;

    .line 180
    .line 181
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Landroid/graphics/Matrix;

    .line 186
    .line 187
    if-nez v0, :cond_9

    .line 188
    .line 189
    sget-object v0, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroidx/transition/MatrixUtils$1;

    .line 190
    .line 191
    :cond_9
    if-nez v1, :cond_a

    .line 192
    .line 193
    sget-object v1, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroidx/transition/MatrixUtils$1;

    .line 194
    .line 195
    :cond_a
    move-object v3, v1

    .line 196
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/high16 v2, 0x3f800000    # 1.0f

    .line 201
    .line 202
    const/4 v15, 0x0

    .line 203
    const/16 v17, 0x2

    .line 204
    .line 205
    if-eqz v1, :cond_b

    .line 206
    .line 207
    move-object/from16 v21, v4

    .line 208
    .line 209
    move-object/from16 v18, v11

    .line 210
    .line 211
    move-object/from16 v20, v14

    .line 212
    .line 213
    const/4 v4, 0x0

    .line 214
    const/4 v11, 0x0

    .line 215
    move-object v14, v5

    .line 216
    goto/16 :goto_4

    .line 217
    .line 218
    :cond_b
    const-string v1, "android:changeTransform:transforms"

    .line 219
    .line 220
    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    move-object/from16 v18, v1

    .line 225
    .line 226
    check-cast v18, Landroidx/transition/ChangeTransform$Transforms;

    .line 227
    .line 228
    invoke-virtual {v4, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 232
    .line 233
    .line 234
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 235
    .line 236
    invoke-static {v4, v15}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleX(F)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleY(F)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v15}, Landroid/view/View;->setRotationX(F)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v15}, Landroid/view/View;->setRotationY(F)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v15}, Landroid/view/View;->setRotation(F)V

    .line 252
    .line 253
    .line 254
    const/16 v1, 0x9

    .line 255
    .line 256
    new-array v2, v1, [F

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 259
    .line 260
    .line 261
    new-array v0, v1, [F

    .line 262
    .line 263
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 264
    .line 265
    .line 266
    new-instance v6, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 267
    .line 268
    invoke-direct {v6, v4, v2}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    .line 269
    .line 270
    .line 271
    sget-object v15, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

    .line 272
    .line 273
    new-instance v10, Landroidx/transition/FloatArrayEvaluator;

    .line 274
    .line 275
    new-array v1, v1, [F

    .line 276
    .line 277
    invoke-direct {v10, v1}, Landroidx/transition/FloatArrayEvaluator;-><init>([F)V

    .line 278
    .line 279
    .line 280
    filled-new-array {v2, v0}, [[F

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-static {v15, v10, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iget-object v10, v7, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 289
    .line 290
    aget v15, v2, v17

    .line 291
    .line 292
    const/16 v20, 0x5

    .line 293
    .line 294
    aget v2, v2, v20

    .line 295
    .line 296
    move-object/from16 v21, v4

    .line 297
    .line 298
    aget v4, v0, v17

    .line 299
    .line 300
    aget v0, v0, v20

    .line 301
    .line 302
    invoke-virtual {v10, v15, v2, v4, v0}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    sget-object v2, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$2;

    .line 307
    .line 308
    const/4 v4, 0x0

    .line 309
    invoke-static {v2, v4, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    filled-new-array {v1, v0}, [Landroid/animation/PropertyValuesHolder;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v6, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    new-instance v15, Landroidx/transition/ChangeTransform$3;

    .line 322
    .line 323
    move-object v0, v15

    .line 324
    move-object/from16 v1, p0

    .line 325
    .line 326
    const/high16 v4, 0x3f800000    # 1.0f

    .line 327
    .line 328
    move/from16 v2, v16

    .line 329
    .line 330
    move-object/from16 v20, v14

    .line 331
    .line 332
    move v14, v4

    .line 333
    move-object/from16 v4, v21

    .line 334
    .line 335
    move-object v14, v5

    .line 336
    move-object/from16 v5, v18

    .line 337
    .line 338
    move-object/from16 v18, v11

    .line 339
    .line 340
    const/4 v11, 0x0

    .line 341
    invoke-direct/range {v0 .. v6}, Landroidx/transition/ChangeTransform$3;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v10, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v10, v15}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 348
    .line 349
    .line 350
    move-object v4, v10

    .line 351
    :goto_4
    iget-object v0, v9, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 352
    .line 353
    if-eqz v16, :cond_21

    .line 354
    .line 355
    if-eqz v4, :cond_21

    .line 356
    .line 357
    iget-boolean v1, v7, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 358
    .line 359
    if-eqz v1, :cond_21

    .line 360
    .line 361
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Landroid/graphics/Matrix;

    .line 366
    .line 367
    new-instance v2, Landroid/graphics/Matrix;

    .line 368
    .line 369
    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 370
    .line 371
    .line 372
    sget-object v1, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v8, v2}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 378
    .line 379
    .line 380
    sget v1, Landroidx/transition/GhostViewPort;->$r8$clinit:I

    .line 381
    .line 382
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 387
    .line 388
    if-eqz v1, :cond_20

    .line 389
    .line 390
    sget v1, Landroidx/transition/GhostViewHolder;->$r8$clinit:I

    .line 391
    .line 392
    const v1, 0x7f0a042e

    .line 393
    .line 394
    .line 395
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    check-cast v1, Landroidx/transition/GhostViewHolder;

    .line 400
    .line 401
    const v3, 0x7f0a042d

    .line 402
    .line 403
    .line 404
    move-object/from16 v5, v21

    .line 405
    .line 406
    invoke-virtual {v5, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    check-cast v3, Landroidx/transition/GhostViewPort;

    .line 411
    .line 412
    if-eqz v3, :cond_c

    .line 413
    .line 414
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    check-cast v6, Landroidx/transition/GhostViewHolder;

    .line 419
    .line 420
    if-eq v6, v1, :cond_c

    .line 421
    .line 422
    iget v9, v3, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 423
    .line 424
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 425
    .line 426
    .line 427
    move v6, v9

    .line 428
    const/4 v10, 0x0

    .line 429
    goto :goto_5

    .line 430
    :cond_c
    move-object v10, v3

    .line 431
    move v6, v11

    .line 432
    :goto_5
    if-nez v10, :cond_1d

    .line 433
    .line 434
    new-instance v10, Landroidx/transition/GhostViewPort;

    .line 435
    .line 436
    invoke-direct {v10, v5}, Landroidx/transition/GhostViewPort;-><init>(Landroid/view/View;)V

    .line 437
    .line 438
    .line 439
    iput-object v2, v10, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    .line 440
    .line 441
    if-nez v1, :cond_d

    .line 442
    .line 443
    new-instance v1, Landroidx/transition/GhostViewHolder;

    .line 444
    .line 445
    invoke-direct {v1, v8}, Landroidx/transition/GhostViewHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 446
    .line 447
    .line 448
    goto :goto_6

    .line 449
    :cond_d
    iget-boolean v2, v1, Landroidx/transition/GhostViewHolder;->mAttached:Z

    .line 450
    .line 451
    if-eqz v2, :cond_1c

    .line 452
    .line 453
    iget-object v2, v1, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 454
    .line 455
    new-instance v3, Landroidx/transition/ViewGroupOverlayApi18;

    .line 456
    .line 457
    invoke-direct {v3, v2}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    .line 458
    .line 459
    .line 460
    iget-object v2, v3, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 461
    .line 462
    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 463
    .line 464
    .line 465
    iget-object v2, v1, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 466
    .line 467
    new-instance v3, Landroidx/transition/ViewGroupOverlayApi18;

    .line 468
    .line 469
    invoke-direct {v3, v2}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    .line 470
    .line 471
    .line 472
    iget-object v2, v3, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 473
    .line 474
    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 475
    .line 476
    .line 477
    :goto_6
    invoke-static {v8, v1}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 478
    .line 479
    .line 480
    invoke-static {v8, v10}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 481
    .line 482
    .line 483
    new-instance v2, Ljava/util/ArrayList;

    .line 484
    .line 485
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .line 487
    .line 488
    iget-object v3, v10, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    .line 489
    .line 490
    invoke-static {v2, v3}, Landroidx/transition/GhostViewHolder;->getParents(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 491
    .line 492
    .line 493
    new-instance v3, Ljava/util/ArrayList;

    .line 494
    .line 495
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    add-int/lit8 v8, v8, -0x1

    .line 503
    .line 504
    move v9, v8

    .line 505
    move v8, v11

    .line 506
    :goto_7
    if-gt v8, v9, :cond_19

    .line 507
    .line 508
    add-int v13, v8, v9

    .line 509
    .line 510
    div-int/lit8 v13, v13, 0x2

    .line 511
    .line 512
    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 513
    .line 514
    .line 515
    move-result-object v14

    .line 516
    check-cast v14, Landroidx/transition/GhostViewPort;

    .line 517
    .line 518
    iget-object v14, v14, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    .line 519
    .line 520
    invoke-static {v3, v14}, Landroidx/transition/GhostViewHolder;->getParents(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 524
    .line 525
    .line 526
    move-result v14

    .line 527
    if-nez v14, :cond_e

    .line 528
    .line 529
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 530
    .line 531
    .line 532
    move-result v14

    .line 533
    if-nez v14, :cond_e

    .line 534
    .line 535
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v14

    .line 539
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v15

    .line 543
    if-eq v14, v15, :cond_10

    .line 544
    .line 545
    :cond_e
    move-object/from16 p1, v2

    .line 546
    .line 547
    :cond_f
    :goto_8
    move/from16 v16, v9

    .line 548
    .line 549
    goto/16 :goto_c

    .line 550
    .line 551
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 552
    .line 553
    .line 554
    move-result v14

    .line 555
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 556
    .line 557
    .line 558
    move-result v15

    .line 559
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 560
    .line 561
    .line 562
    move-result v14

    .line 563
    const/4 v15, 0x1

    .line 564
    :goto_9
    if-ge v15, v14, :cond_16

    .line 565
    .line 566
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v16

    .line 570
    move-object/from16 v11, v16

    .line 571
    .line 572
    check-cast v11, Landroid/view/View;

    .line 573
    .line 574
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v16

    .line 578
    move-object/from16 p1, v2

    .line 579
    .line 580
    move-object/from16 v2, v16

    .line 581
    .line 582
    check-cast v2, Landroid/view/View;

    .line 583
    .line 584
    if-eq v11, v2, :cond_15

    .line 585
    .line 586
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 587
    .line 588
    .line 589
    move-result-object v14

    .line 590
    check-cast v14, Landroid/view/ViewGroup;

    .line 591
    .line 592
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    .line 593
    .line 594
    .line 595
    move-result v15

    .line 596
    invoke-virtual {v11}, Landroid/view/View;->getZ()F

    .line 597
    .line 598
    .line 599
    move-result v16

    .line 600
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    .line 601
    .line 602
    .line 603
    move-result v19

    .line 604
    cmpl-float v16, v16, v19

    .line 605
    .line 606
    if-eqz v16, :cond_12

    .line 607
    .line 608
    invoke-virtual {v11}, Landroid/view/View;->getZ()F

    .line 609
    .line 610
    .line 611
    move-result v11

    .line 612
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    cmpl-float v2, v11, v2

    .line 617
    .line 618
    if-lez v2, :cond_11

    .line 619
    .line 620
    goto :goto_8

    .line 621
    :cond_11
    move/from16 v16, v9

    .line 622
    .line 623
    goto :goto_b

    .line 624
    :cond_12
    const/4 v7, 0x0

    .line 625
    :goto_a
    if-ge v7, v15, :cond_f

    .line 626
    .line 627
    move/from16 v16, v9

    .line 628
    .line 629
    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->getChildDrawingOrder(I)I

    .line 630
    .line 631
    .line 632
    move-result v9

    .line 633
    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 634
    .line 635
    .line 636
    move-result-object v9

    .line 637
    if-ne v9, v11, :cond_13

    .line 638
    .line 639
    goto :goto_b

    .line 640
    :cond_13
    if-ne v9, v2, :cond_14

    .line 641
    .line 642
    goto :goto_c

    .line 643
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 644
    .line 645
    move/from16 v9, v16

    .line 646
    .line 647
    goto :goto_a

    .line 648
    :cond_15
    move/from16 v16, v9

    .line 649
    .line 650
    add-int/lit8 v15, v15, 0x1

    .line 651
    .line 652
    const/4 v11, 0x0

    .line 653
    move-object/from16 v7, p0

    .line 654
    .line 655
    move-object/from16 v2, p1

    .line 656
    .line 657
    goto :goto_9

    .line 658
    :cond_16
    move-object/from16 p1, v2

    .line 659
    .line 660
    move/from16 v16, v9

    .line 661
    .line 662
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 663
    .line 664
    .line 665
    move-result v2

    .line 666
    if-ne v2, v14, :cond_17

    .line 667
    .line 668
    goto :goto_c

    .line 669
    :cond_17
    :goto_b
    const/4 v2, 0x0

    .line 670
    goto :goto_d

    .line 671
    :goto_c
    const/4 v2, 0x1

    .line 672
    :goto_d
    if-eqz v2, :cond_18

    .line 673
    .line 674
    add-int/lit8 v13, v13, 0x1

    .line 675
    .line 676
    move v8, v13

    .line 677
    move/from16 v9, v16

    .line 678
    .line 679
    goto :goto_e

    .line 680
    :cond_18
    add-int/lit8 v13, v13, -0x1

    .line 681
    .line 682
    move v9, v13

    .line 683
    :goto_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 684
    .line 685
    .line 686
    const/4 v11, 0x0

    .line 687
    move-object/from16 v7, p0

    .line 688
    .line 689
    move-object/from16 v2, p1

    .line 690
    .line 691
    goto/16 :goto_7

    .line 692
    .line 693
    :cond_19
    if-ltz v8, :cond_1b

    .line 694
    .line 695
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    if-lt v8, v2, :cond_1a

    .line 700
    .line 701
    goto :goto_f

    .line 702
    :cond_1a
    invoke-virtual {v1, v10, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 703
    .line 704
    .line 705
    goto :goto_10

    .line 706
    :cond_1b
    :goto_f
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 707
    .line 708
    .line 709
    :goto_10
    iput v6, v10, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 710
    .line 711
    goto :goto_11

    .line 712
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 713
    .line 714
    const-string v1, "This GhostViewHolder is detached!"

    .line 715
    .line 716
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    throw v0

    .line 720
    :cond_1d
    iput-object v2, v10, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    .line 721
    .line 722
    :goto_11
    iget v1, v10, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 723
    .line 724
    const/4 v2, 0x1

    .line 725
    add-int/2addr v1, v2

    .line 726
    iput v1, v10, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 727
    .line 728
    move-object/from16 v1, v18

    .line 729
    .line 730
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    check-cast v1, Landroid/view/ViewGroup;

    .line 735
    .line 736
    iput-object v1, v10, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    .line 737
    .line 738
    iput-object v0, v10, Landroidx/transition/GhostViewPort;->mStartView:Landroid/view/View;

    .line 739
    .line 740
    move-object/from16 v1, p0

    .line 741
    .line 742
    :goto_12
    iget-object v2, v1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 743
    .line 744
    if-eqz v2, :cond_1e

    .line 745
    .line 746
    move-object v1, v2

    .line 747
    goto :goto_12

    .line 748
    :cond_1e
    new-instance v2, Landroidx/transition/ChangeTransform$GhostListener;

    .line 749
    .line 750
    invoke-direct {v2, v5, v10}, Landroidx/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroidx/transition/GhostView;)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 754
    .line 755
    .line 756
    sget-boolean v1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    .line 757
    .line 758
    if-eqz v1, :cond_22

    .line 759
    .line 760
    if-eq v0, v5, :cond_1f

    .line 761
    .line 762
    const/4 v1, 0x0

    .line 763
    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 764
    .line 765
    .line 766
    :cond_1f
    const/high16 v0, 0x3f800000    # 1.0f

    .line 767
    .line 768
    invoke-static {v5, v0}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 769
    .line 770
    .line 771
    goto :goto_13

    .line 772
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 773
    .line 774
    const-string v1, "Ghosted views must be parented by a ViewGroup"

    .line 775
    .line 776
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    throw v0

    .line 780
    :cond_21
    sget-boolean v1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    .line 781
    .line 782
    if-nez v1, :cond_22

    .line 783
    .line 784
    move-object/from16 v1, v20

    .line 785
    .line 786
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 787
    .line 788
    .line 789
    :cond_22
    :goto_13
    return-object v4

    .line 790
    :cond_23
    :goto_14
    const/4 v0, 0x0

    .line 791
    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
