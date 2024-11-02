.class public final Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field public mInitTime:J

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public final mNaturalSwitchingStartedCallback:Ljava/lang/Runnable;

.field public final mNsController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

.field public final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

.field public mScaleDownAnimator:Landroid/animation/ValueAnimator;

.field public mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

.field public mState:I

.field public mTaskId:I

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskVanishedTimeout:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;

.field public mWaitingForTaskVanished:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/RectEvaluator;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipTouchState;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskVanishedTimeout:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskId:I

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 24
    .line 25
    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 26
    .line 27
    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mNsController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    .line 28
    .line 29
    iput-object p8, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mNaturalSwitchingStartedCallback:Ljava/lang/Runnable;

    .line 30
    .line 31
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskVanishedCallback:Ljava/util/function/Consumer;

    .line 37
    .line 38
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "RUNNING"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-string p0, "INITIALIZING"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const-string p0, "NONE"

    .line 21
    .line 22
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final clearAllAnimations()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "clearAllAnimations: "

    .line 5
    .line 6
    const-string v3, "PipNaturalSwitchingHandler"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final setState(I)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v1, "setState: "

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    .line 15
    .line 16
    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->stateToString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " -> "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->stateToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "PipNaturalSwitchingHandler"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_7

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    if-eq p1, v2, :cond_6

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    if-eq p1, v3, :cond_1

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mNaturalSwitchingStartedCallback:Ljava/lang/Runnable;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    :cond_3
    move v0, v2

    .line 82
    :cond_4
    if-eqz v0, :cond_5

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v0, "startEnterAnimation: failed, already animating, "

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_5
    new-instance p1, Landroid/graphics/Rect;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    .line 116
    .line 117
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Landroid/graphics/Rect;

    .line 121
    .line 122
    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 123
    .line 124
    .line 125
    const v5, 0x3f75c28f    # 0.96f

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 129
    .line 130
    .line 131
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    sub-int/2addr v6, v7

    .line 142
    div-int/2addr v6, v3

    .line 143
    add-int/2addr v6, v5

    .line 144
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    sub-int/2addr v7, v8

    .line 155
    div-int/2addr v7, v3

    .line 156
    add-int/2addr v7, v5

    .line 157
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 158
    .line 159
    .line 160
    new-array v3, v3, [F

    .line 161
    .line 162
    fill-array-data v3, :array_0

    .line 163
    .line 164
    .line 165
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    iput-object v3, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 170
    .line 171
    const-wide/16 v5, 0x12c

    .line 172
    .line 173
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    .line 175
    .line 176
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 177
    .line 178
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    .line 179
    .line 180
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 197
    .line 198
    new-instance v6, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;

    .line 199
    .line 200
    invoke-direct {v6, p0, v0, p1, v4}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    .line 205
    .line 206
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 207
    .line 208
    new-instance v5, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;

    .line 209
    .line 210
    invoke-direct {v5, p0, v3}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;-><init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    iput-object v4, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 221
    .line 222
    new-instance v4, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 223
    .line 224
    const/high16 v5, 0x435c0000    # 220.0f

    .line 225
    .line 226
    const v6, 0x3ef0a3d7    # 0.47f

    .line 227
    .line 228
    .line 229
    invoke-direct {v4, v5, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 230
    .line 231
    .line 232
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 233
    .line 234
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 243
    .line 244
    sget-object v7, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    int-to-float v8, v8

    .line 251
    const/4 v9, 0x0

    .line 252
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 253
    .line 254
    .line 255
    sget-object v7, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    int-to-float v8, v8

    .line 262
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 263
    .line 264
    .line 265
    sget-object v7, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 266
    .line 267
    iget v8, p1, Landroid/graphics/Rect;->left:I

    .line 268
    .line 269
    int-to-float v8, v8

    .line 270
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 271
    .line 272
    .line 273
    sget-object v7, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    .line 274
    .line 275
    iget v8, p1, Landroid/graphics/Rect;->top:I

    .line 276
    .line 277
    int-to-float v8, v8

    .line 278
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 279
    .line 280
    .line 281
    new-instance v4, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;

    .line 282
    .line 283
    invoke-direct {v4, p0, p1, v0}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, v6, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;

    .line 292
    .line 293
    invoke-direct {p1, v5, v2}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 294
    .line 295
    .line 296
    filled-new-array {p1}, [Ljava/lang/Runnable;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {v6, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    .line 301
    .line 302
    .line 303
    const-string/jumbo p1, "startEnterAnimation: down="

    .line 304
    .line 305
    .line 306
    const-string v0, ", up="

    .line 307
    .line 308
    invoke-static {p1, v3, v0, v5, v1}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 312
    .line 313
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 314
    .line 315
    .line 316
    goto :goto_0

    .line 317
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 318
    .line 319
    .line 320
    move-result-wide v0

    .line 321
    iput-wide v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mInitTime:J

    .line 322
    .line 323
    goto :goto_0

    .line 324
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 325
    .line 326
    .line 327
    move-result-wide v2

    .line 328
    iget-wide v4, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mInitTime:J

    .line 329
    .line 330
    sub-long/2addr v2, v4

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v4, "onFinishNaturalSwitching: dur="

    .line 334
    .line 335
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v2, "ms"

    .line 342
    .line 343
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->clearAllAnimations()V

    .line 354
    .line 355
    .line 356
    const-string/jumbo p1, "reset"

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->updateWaitingForTaskVanished(Ljava/lang/String;Z)V

    .line 360
    .line 361
    .line 362
    const-wide/16 v0, 0x0

    .line 363
    .line 364
    iput-wide v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mInitTime:J

    .line 365
    .line 366
    const/4 p1, 0x0

    .line 367
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 368
    .line 369
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mLeash:Landroid/view/SurfaceControl;

    .line 370
    .line 371
    const/4 p1, -0x1

    .line 372
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskId:I

    .line 373
    .line 374
    :goto_0
    return-void

    .line 375
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PipNaturalSwitchingHandler{state="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->stateToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", pkg="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "none"

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", leash="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mLeash:Landroid/view/SurfaceControl;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string/jumbo p0, "}"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public final updateWaitingForTaskVanished(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mWaitingForTaskVanished:Z

    .line 2
    .line 3
    if-eq v0, p2, :cond_1

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mWaitingForTaskVanished:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 8
    .line 9
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskVanishedTimeout:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v3, "setWaitingForTaskVanished: "

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", reason="

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, "PipNaturalSwitchingHandler"

    .line 33
    .line 34
    invoke-static {v2, p1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    const-wide/16 p0, 0x7d0

    .line 40
    .line 41
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(JLjava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->setState(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method
