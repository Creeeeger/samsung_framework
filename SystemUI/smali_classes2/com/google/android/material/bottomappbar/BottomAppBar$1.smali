.class public final Lcom/google/android/material/bottomappbar/BottomAppBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z

    .line 4
    .line 5
    if-nez p1, :cond_9

    .line 6
    .line 7
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    .line 10
    .line 11
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 29
    .line 30
    .line 31
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    move p1, v2

    .line 43
    move v0, p1

    .line 44
    :cond_2
    move v3, v2

    .line 45
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v3, v4, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    instance-of v5, v4, Landroidx/appcompat/widget/ActionMenuView;

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    check-cast v4, Landroidx/appcompat/widget/ActionMenuView;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    const/4 v4, 0x0

    .line 66
    :goto_1
    if-nez v4, :cond_5

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const v5, 0x7f04041c

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v3}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_6

    .line 81
    .line 82
    iget v5, v3, Landroid/util/TypedValue;->type:I

    .line 83
    .line 84
    const/16 v6, 0x10

    .line 85
    .line 86
    if-ne v5, v6, :cond_6

    .line 87
    .line 88
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    const/16 v3, 0x12c

    .line 92
    .line 93
    :goto_2
    int-to-float v3, v3

    .line 94
    const/4 v5, 0x1

    .line 95
    new-array v6, v5, [F

    .line 96
    .line 97
    const/high16 v7, 0x3f800000    # 1.0f

    .line 98
    .line 99
    aput v7, v6, v2

    .line 100
    .line 101
    const-string v8, "alpha"

    .line 102
    .line 103
    invoke-static {v4, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const v9, 0x3f4ccccd    # 0.8f

    .line 108
    .line 109
    .line 110
    mul-float/2addr v9, v3

    .line 111
    float-to-long v9, v9

    .line 112
    invoke-virtual {v6, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationX()F

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    invoke-virtual {p0, v4, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuViewTranslationX(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    int-to-float v10, v10

    .line 124
    sub-float/2addr v9, v10

    .line 125
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    cmpl-float v9, v9, v7

    .line 130
    .line 131
    if-lez v9, :cond_7

    .line 132
    .line 133
    new-array v5, v5, [F

    .line 134
    .line 135
    const/4 v7, 0x0

    .line 136
    aput v7, v5, v2

    .line 137
    .line 138
    invoke-static {v4, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const v5, 0x3e4ccccd    # 0.2f

    .line 143
    .line 144
    .line 145
    mul-float/2addr v3, v5

    .line 146
    float-to-long v7, v3

    .line 147
    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 148
    .line 149
    .line 150
    new-instance v3, Lcom/google/android/material/bottomappbar/BottomAppBar$7;

    .line 151
    .line 152
    invoke-direct {v3, p0, v4, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$7;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    .line 157
    .line 158
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 159
    .line 160
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 161
    .line 162
    .line 163
    filled-new-array {v2, v6}, [Landroid/animation/Animator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getAlpha()F

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    cmpg-float p1, p1, v7

    .line 179
    .line 180
    if-gez p1, :cond_8

    .line 181
    .line 182
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_8
    :goto_3
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 186
    .line 187
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 191
    .line 192
    .line 193
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 194
    .line 195
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;

    .line 196
    .line 197
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$6;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 201
    .line 202
    .line 203
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 206
    .line 207
    .line 208
    :cond_9
    :goto_4
    return-void
.end method
