.class public final Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$reset$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$reset$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$reset$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->hintList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_9

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->getHintView(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v4, v3

    .line 38
    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->getHintView(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move-object v2, v3

    .line 59
    :goto_2
    if-eqz v2, :cond_0

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 66
    .line 67
    .line 68
    iput-object v3, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    .line 69
    .line 70
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 73
    .line 74
    iget v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 75
    .line 76
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->isCanMove:Z

    .line 77
    .line 78
    const-string/jumbo v4, "scaleY"

    .line 79
    .line 80
    .line 81
    const-string/jumbo v6, "scaleX"

    .line 82
    .line 83
    .line 84
    const/4 v7, 0x1

    .line 85
    const/4 v8, 0x0

    .line 86
    if-nez v3, :cond_5

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    if-eq v2, v7, :cond_7

    .line 90
    .line 91
    const/4 v3, 0x3

    .line 92
    if-eq v2, v3, :cond_6

    .line 93
    .line 94
    :goto_3
    move-object v2, v6

    .line 95
    goto :goto_4

    .line 96
    :cond_6
    const/high16 v2, -0x80000000

    .line 97
    .line 98
    move v3, v2

    .line 99
    move-object v2, v4

    .line 100
    goto :goto_5

    .line 101
    :cond_7
    move-object v2, v4

    .line 102
    :goto_4
    move v3, v8

    .line 103
    :goto_5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    const-wide/16 v10, 0xc8

    .line 108
    .line 109
    const/4 v12, 0x0

    .line 110
    if-lez v9, :cond_8

    .line 111
    .line 112
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    new-array v13, v7, [F

    .line 117
    .line 118
    aput v8, v13, v12

    .line 119
    .line 120
    invoke-static {v9, v2, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    new-instance v9, Landroid/animation/AnimatorSet;

    .line 125
    .line 126
    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 127
    .line 128
    .line 129
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 137
    .line 138
    .line 139
    new-instance v2, Landroid/view/animation/PathInterpolator;

    .line 140
    .line 141
    const v13, 0x3e2e147b    # 0.17f

    .line 142
    .line 143
    .line 144
    const v14, 0x3dcccccd    # 0.1f

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, v13, v13, v14, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 154
    .line 155
    .line 156
    :cond_8
    new-array v2, v7, [F

    .line 157
    .line 158
    aput v5, v2, v12

    .line 159
    .line 160
    invoke-static {v1, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    new-array v6, v7, [F

    .line 165
    .line 166
    aput v5, v6, v12

    .line 167
    .line 168
    invoke-static {v1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    new-array v5, v7, [F

    .line 173
    .line 174
    aput v3, v5, v12

    .line 175
    .line 176
    const-string/jumbo v3, "translationX"

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    new-array v5, v7, [F

    .line 184
    .line 185
    aput v8, v5, v12

    .line 186
    .line 187
    const-string/jumbo v6, "translationY"

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 195
    .line 196
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 197
    .line 198
    .line 199
    filled-new-array {v2, v4, v3, v1}, [Landroid/animation/Animator;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 207
    .line 208
    .line 209
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 210
    .line 211
    const v2, 0x3f4ccccd    # 0.8f

    .line 212
    .line 213
    .line 214
    const v3, 0x3f547ae1    # 0.83f

    .line 215
    .line 216
    .line 217
    invoke-direct {v1, v2, v8, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_9
    return-void
.end method
