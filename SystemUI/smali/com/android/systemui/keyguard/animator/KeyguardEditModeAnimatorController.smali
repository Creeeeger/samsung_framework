.class public final Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;
.super Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final alphaViews:Ljava/util/List;

.field public animatorSet:Landroid/animation/AnimatorSet;

.field public cancelAnimatorSet:Landroid/animation/AnimatorSet;

.field public final keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public longPressJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final noScaleViews:Ljava/util/List;

.field public final scaleViews:Ljava/util/List;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public startActivityJob:Lkotlinx/coroutines/Job;

.field public touchDownAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 9
    .line 10
    move-object/from16 v2, p3

    .line 11
    .line 12
    iput-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 13
    .line 14
    move-object/from16 v2, p4

    .line 15
    .line 16
    iput-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 17
    .line 18
    move-object/from16 v2, p6

    .line 19
    .line 20
    iput-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 21
    .line 22
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 28
    .line 29
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 35
    .line 36
    const/4 v2, 0x7

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/16 v3, 0x8

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    const/16 v3, 0x9

    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    const/16 v3, 0xa

    .line 54
    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    const/4 v3, 0x3

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    const/4 v3, 0x6

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    const/4 v3, 0x2

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v15

    .line 74
    move-object v3, v2

    .line 75
    move-object v4, v10

    .line 76
    move-object v5, v11

    .line 77
    move-object v6, v12

    .line 78
    move-object v7, v13

    .line 79
    move-object v8, v14

    .line 80
    move-object v9, v15

    .line 81
    filled-new-array/range {v3 .. v9}, [Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iput-object v3, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->alphaViews:Ljava/util/List;

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const/4 v3, 0x4

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v16

    .line 101
    const/4 v3, 0x5

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v17

    .line 106
    move-object v3, v2

    .line 107
    move-object v5, v10

    .line 108
    move-object v6, v11

    .line 109
    move-object v7, v12

    .line 110
    move-object v8, v13

    .line 111
    move-object v9, v14

    .line 112
    move-object v10, v15

    .line 113
    move-object/from16 v11, v16

    .line 114
    .line 115
    move-object/from16 v12, v17

    .line 116
    .line 117
    filled-new-array/range {v3 .. v12}, [Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iput-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->scaleViews:Ljava/util/List;

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const/16 v3, 0xb

    .line 133
    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    filled-new-array {v2, v3}, [Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iput-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->noScaleViews:Ljava/util/List;

    .line 147
    .line 148
    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;

    .line 149
    .line 150
    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    .line 151
    .line 152
    .line 153
    move-object/from16 v3, p5

    .line 154
    .line 155
    invoke-virtual {v3, v2}, Lcom/android/keyguard/SecRotationWatcher;->addCallback(Ljava/util/function/IntConsumer;)V

    .line 156
    .line 157
    .line 158
    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$2;

    .line 159
    .line 160
    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$2;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    .line 161
    .line 162
    .line 163
    move-object v3, v1

    .line 164
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 165
    .line 166
    iput-object v2, v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isAnimationRunning:Lkotlin/jvm/functions/Function0;

    .line 167
    .line 168
    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$3;

    .line 169
    .line 170
    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$3;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    .line 171
    .line 172
    .line 173
    move-object v3, v1

    .line 174
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 175
    .line 176
    iput-object v2, v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isTouchDownAnimationRunning:Lkotlin/jvm/functions/Function0;

    .line 177
    .line 178
    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$4;

    .line 179
    .line 180
    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$4;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    .line 181
    .line 182
    .line 183
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 184
    .line 185
    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->startCancelAnimationFunction:Lkotlin/jvm/functions/Function0;

    .line 186
    .line 187
    const-class v1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 188
    .line 189
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 194
    .line 195
    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$5;

    .line 196
    .line 197
    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$5;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->registerTicket(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;)V

    .line 201
    .line 202
    .line 203
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 204
    .line 205
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 206
    .line 207
    .line 208
    iput-object v1, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->cancelAnimatorSet:Landroid/animation/AnimatorSet;

    .line 209
    .line 210
    return-void
.end method


# virtual methods
.method public final animate(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v0, v2

    .line 34
    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    instance-of v3, v1, Landroid/view/ViewGroup;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    check-cast v1, Landroid/view/ViewGroup;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    :goto_0
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->getEditModePivot()Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->getEditModePivot()Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 95
    .line 96
    .line 97
    iget-object v9, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 98
    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 102
    .line 103
    move-object v0, v9

    .line 104
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 105
    .line 106
    iget v3, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    .line 107
    .line 108
    const-wide/16 v4, 0x1f4

    .line 109
    .line 110
    const-wide/16 v6, 0x0

    .line 111
    .line 112
    move-object v0, p0

    .line 113
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move-object v1, v9

    .line 118
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 119
    .line 120
    iget v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 123
    .line 124
    .line 125
    move-object v1, v9

    .line 126
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 127
    .line 128
    iget v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 134
    .line 135
    const/high16 v3, 0x3f800000    # 1.0f

    .line 136
    .line 137
    const-wide/16 v4, 0x1f4

    .line 138
    .line 139
    const-wide/16 v6, 0x64

    .line 140
    .line 141
    move-object v0, p0

    .line 142
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    .line 143
    .line 144
    .line 145
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->noScaleViews:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_5

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object v3, v2

    .line 167
    check-cast v3, Ljava/lang/Number;

    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_4

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_7

    .line 192
    .line 193
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Ljava/lang/Number;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->getEditModePivot()Lkotlin/Pair;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Ljava/lang/Number;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotX(F)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->getEditModePivot()Lkotlin/Pair;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Ljava/lang/Number;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 239
    .line 240
    .line 241
    const/high16 v0, 0x3f800000    # 1.0f

    .line 242
    .line 243
    if-eqz p1, :cond_6

    .line 244
    .line 245
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 246
    .line 247
    move-object v3, v9

    .line 248
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 249
    .line 250
    iget v3, v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    .line 251
    .line 252
    div-float v3, v0, v3

    .line 253
    .line 254
    const-wide/16 v4, 0x1f4

    .line 255
    .line 256
    const-wide/16 v6, 0x0

    .line 257
    .line 258
    move-object v0, p0

    .line 259
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_6
    move-object v1, v9

    .line 264
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 265
    .line 266
    iget v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    .line 267
    .line 268
    div-float v1, v0, v1

    .line 269
    .line 270
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 271
    .line 272
    .line 273
    move-object v1, v9

    .line 274
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 275
    .line 276
    iget v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    .line 277
    .line 278
    div-float/2addr v0, v1

    .line 279
    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 280
    .line 281
    .line 282
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 283
    .line 284
    const/high16 v3, 0x3f800000    # 1.0f

    .line 285
    .line 286
    const-wide/16 v4, 0x1f4

    .line 287
    .line 288
    const-wide/16 v6, 0x64

    .line 289
    .line 290
    move-object v0, p0

    .line 291
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .line 299
    .line 300
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->alphaViews:Ljava/util/List;

    .line 301
    .line 302
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_9

    .line 311
    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    move-object v3, v2

    .line 317
    check-cast v3, Ljava/lang/Number;

    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_8

    .line 328
    .line 329
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 334
    .line 335
    .line 336
    move-result-object v10

    .line 337
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_b

    .line 342
    .line 343
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Ljava/lang/Number;

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz p1, :cond_a

    .line 354
    .line 355
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 356
    .line 357
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    const/4 v3, 0x0

    .line 362
    const-wide/16 v4, 0x96

    .line 363
    .line 364
    const-wide/16 v6, 0x0

    .line 365
    .line 366
    move-object v0, p0

    .line 367
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAlphaAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    .line 368
    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    const/4 v0, 0x0

    .line 376
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 377
    .line 378
    .line 379
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 380
    .line 381
    const/high16 v3, 0x3f800000    # 1.0f

    .line 382
    .line 383
    const-wide/16 v4, 0x12c

    .line 384
    .line 385
    const-wide/16 v6, 0x12c

    .line 386
    .line 387
    move-object v0, p0

    .line 388
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAlphaAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    .line 389
    .line 390
    .line 391
    goto :goto_5

    .line 392
    :cond_b
    if-eqz p1, :cond_e

    .line 393
    .line 394
    new-instance v0, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .line 398
    .line 399
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->scaleViews:Ljava/util/List;

    .line 400
    .line 401
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_d

    .line 410
    .line 411
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    move-object v3, v2

    .line 416
    check-cast v3, Ljava/lang/Number;

    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-eqz v3, :cond_c

    .line 427
    .line 428
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    goto :goto_6

    .line 432
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 433
    .line 434
    .line 435
    move-result-object v10

    .line 436
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_e

    .line 441
    .line 442
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    check-cast v0, Ljava/lang/Number;

    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 457
    .line 458
    const/high16 v3, 0x3f800000    # 1.0f

    .line 459
    .line 460
    const-wide/16 v4, 0x1f4

    .line 461
    .line 462
    const-wide/16 v6, 0x0

    .line 463
    .line 464
    move-object v0, p0

    .line 465
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    .line 466
    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 470
    .line 471
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 472
    .line 473
    .line 474
    check-cast v9, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 475
    .line 476
    invoke-virtual {v9, p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->startAnimation(Z)V

    .line 477
    .line 478
    .line 479
    if-eqz p1, :cond_f

    .line 480
    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-virtual {v0, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 486
    .line 487
    .line 488
    :cond_f
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 489
    .line 490
    if-eqz p1, :cond_10

    .line 491
    .line 492
    const-string v1, "1"

    .line 493
    .line 494
    goto :goto_8

    .line 495
    :cond_10
    const-string v1, "2"

    .line 496
    .line 497
    :goto_8
    const-string v2, "1011E"

    .line 498
    .line 499
    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    return-void
.end method

.method public final cancel$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 6

    .line 1
    const-string v0, "KeyguardEditModeAnimatorController"

    .line 2
    .line 3
    const-string v1, "cancel()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 9
    .line 10
    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setThumbnailVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lkotlinx/coroutines/AbstractCoroutine;->isActive()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v2, v4, :cond_0

    .line 27
    .line 28
    move v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v3

    .line 31
    :goto_0
    const/4 v5, 0x0

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const-string v2, "longPressJob?.cancel"

    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2, v5}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    const-string v2, "cancel : isAnimationRunning"

    .line 68
    .line 69
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ne v2, v4, :cond_4

    .line 92
    .line 93
    move v2, v4

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    move v2, v3

    .line 96
    :goto_1
    if-nez v2, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startCancelAnimation()V

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->isKeyguardState()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_7

    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    .line 108
    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-ne v2, v4, :cond_6

    .line 116
    .line 117
    move v3, v4

    .line 118
    :cond_6
    if-eqz v3, :cond_7

    .line 119
    .line 120
    const-string/jumbo v2, "startActivityJob?.cancel"

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    .line 127
    .line 128
    if-eqz p0, :cond_7

    .line 129
    .line 130
    invoke-interface {p0, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 131
    .line 132
    .line 133
    :cond_7
    iget-object p0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 134
    .line 135
    if-eqz p0, :cond_8

    .line 136
    .line 137
    invoke-interface {p0, v4}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 138
    .line 139
    .line 140
    :cond_8
    return-void
.end method

.method public final getEditModePivot()Lkotlin/Pair;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->windowManager:Landroid/view/WindowManager;

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lkotlin/Pair;

    .line 16
    .line 17
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    div-int/lit8 v2, v2, 0x2

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 27
    .line 28
    int-to-float v0, v0

    .line 29
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewTopMargin:F

    .line 30
    .line 31
    mul-float/2addr v0, v3

    .line 32
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    .line 33
    .line 34
    const/high16 v3, 0x3f800000    # 1.0f

    .line 35
    .line 36
    sub-float/2addr v3, p0

    .line 37
    div-float/2addr v0, v3

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method public final isEditMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 6
    .line 7
    return p0
.end method

.method public final isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "KeyguardEditModeAnimatorController"

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "long pressed false"

    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    :goto_0
    const-string p0, "long pressed"

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final isNotSupportedAnimation()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v3

    .line 24
    :goto_0
    if-nez v0, :cond_3

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 29
    .line 30
    const-string/jumbo v0, "remove_animations"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-ne p0, v2, :cond_1

    .line 42
    .line 43
    move p0, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move p0, v3

    .line 46
    :goto_1
    if-eqz p0, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v2, v3

    .line 50
    :cond_3
    :goto_2
    return v2
.end method

.method public final resetViews()V
    .locals 6

    .line 1
    const-string v0, "KeyguardEditModeAnimatorController"

    .line 2
    .line 3
    const-string/jumbo v1, "resetViews"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->noScaleViews:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    move-object v5, v4

    .line 43
    check-cast v5, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/lang/Number;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->alphaViews:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    move-object v5, v4

    .line 112
    check-cast v5, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_3

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Ljava/lang/Number;

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->scaleViews:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_7

    .line 172
    .line 173
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    move-object v5, v4

    .line 178
    check-cast v5, Ljava/lang/Number;

    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-eqz v5, :cond_6

    .line 189
    .line 190
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_8

    .line 203
    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    check-cast v3, Ljava/lang/Number;

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 226
    .line 227
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->cancel()V

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    .line 233
    .line 234
    if-eqz v1, :cond_9

    .line 235
    .line 236
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    const/4 v2, 0x1

    .line 241
    if-ne v1, v2, :cond_9

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_9
    const/4 v2, 0x0

    .line 245
    :goto_6
    if-eqz v2, :cond_a

    .line 246
    .line 247
    const-string/jumbo v1, "startActivityJob?.cancel"

    .line 248
    .line 249
    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    .line 254
    .line 255
    if-eqz p0, :cond_a

    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 259
    .line 260
    .line 261
    :cond_a
    return-void
.end method

.method public final startCancelAnimation()V
    .locals 8

    .line 1
    const-string v0, "KeyguardEditModeAnimatorController"

    .line 2
    .line 3
    const-string/jumbo v1, "startCancelAnimation"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->isKeyguardState()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string/jumbo v1, "startCancelAnimation : is not keyguard state"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->resetViews()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    .line 48
    cmpg-float v0, v0, v1

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    move v0, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, v3

    .line 57
    :goto_0
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 60
    .line 61
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->cancel()V

    .line 64
    .line 65
    .line 66
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->cancelAnimatorSet:Landroid/animation/AnimatorSet;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v0, v4, v1, v1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 88
    .line 89
    .line 90
    new-instance v4, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->alphaViews:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_6

    .line 106
    .line 107
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    move-object v7, v6

    .line 112
    check-cast v7, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    invoke-virtual {p0, v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_5

    .line 123
    .line 124
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_7

    .line 137
    .line 138
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, Ljava/lang/Number;

    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 153
    .line 154
    new-array v7, v2, [F

    .line 155
    .line 156
    aput v1, v7, v3

    .line 157
    .line 158
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    iget-object v6, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->alphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 163
    .line 164
    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    .line 166
    .line 167
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 168
    .line 169
    filled-new-array {v5}, [Landroid/animation/Animator;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->noScaleViews:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_9

    .line 193
    .line 194
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    move-object v5, v4

    .line 199
    check-cast v5, Ljava/lang/Number;

    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_8

    .line 210
    .line 211
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_a

    .line 224
    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    check-cast v3, Ljava/lang/Number;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {v0, v3, v1, v1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_a
    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;

    .line 244
    .line 245
    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    .line 250
    .line 251
    const-wide/16 v1, 0xc8

    .line 252
    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 257
    .line 258
    .line 259
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->cancelAnimatorSet:Landroid/animation/AnimatorSet;

    .line 260
    .line 261
    return-void
.end method
