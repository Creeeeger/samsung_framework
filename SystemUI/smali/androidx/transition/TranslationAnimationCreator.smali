.class public final Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-object v4, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 12
    .line 13
    const v5, 0x7f0a0c22

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, [I

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    aget v7, v4, v6

    .line 27
    .line 28
    sub-int/2addr v7, p2

    .line 29
    int-to-float v7, v7

    .line 30
    add-float/2addr v7, v2

    .line 31
    aget v4, v4, v5

    .line 32
    .line 33
    sub-int v4, v4, p3

    .line 34
    .line 35
    int-to-float v4, v4

    .line 36
    add-float/2addr v4, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move/from16 v7, p4

    .line 39
    .line 40
    move/from16 v4, p5

    .line 41
    .line 42
    :goto_0
    sub-float v8, v7, v2

    .line 43
    .line 44
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    add-int/2addr v8, p2

    .line 49
    sub-float v9, v4, v3

    .line 50
    .line 51
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    add-int v9, v9, p3

    .line 56
    .line 57
    invoke-virtual {p0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 61
    .line 62
    .line 63
    cmpl-float v10, v7, p6

    .line 64
    .line 65
    if-nez v10, :cond_1

    .line 66
    .line 67
    cmpl-float v10, v4, p7

    .line 68
    .line 69
    if-nez v10, :cond_1

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    return-object v0

    .line 73
    :cond_1
    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 74
    .line 75
    const/4 v11, 0x2

    .line 76
    new-array v12, v11, [F

    .line 77
    .line 78
    aput v7, v12, v6

    .line 79
    .line 80
    aput p6, v12, v5

    .line 81
    .line 82
    invoke-static {v10, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 87
    .line 88
    new-array v11, v11, [F

    .line 89
    .line 90
    aput v4, v11, v6

    .line 91
    .line 92
    aput p7, v11, v5

    .line 93
    .line 94
    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    filled-new-array {v7, v4}, [Landroid/animation/PropertyValuesHolder;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    new-instance v5, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    .line 107
    .line 108
    iget-object v1, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 109
    .line 110
    move-object p1, v5

    .line 111
    move-object p2, p0

    .line 112
    move-object/from16 p3, v1

    .line 113
    .line 114
    move/from16 p4, v8

    .line 115
    .line 116
    move/from16 p5, v9

    .line 117
    .line 118
    move/from16 p6, v2

    .line 119
    .line 120
    move/from16 p7, v3

    .line 121
    .line 122
    invoke-direct/range {p1 .. p7}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    .line 123
    .line 124
    .line 125
    move-object/from16 v0, p9

    .line 126
    .line 127
    invoke-virtual {v0, v5}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 134
    .line 135
    .line 136
    move-object/from16 v0, p8

    .line 137
    .line 138
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    .line 140
    .line 141
    return-object v4
.end method
