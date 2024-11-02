.class public abstract Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

.field public static final DEBUG:Z


# instance fields
.field public final context:Landroid/content/Context;

.field public distance:F

.field public hasDozeAmount:Z

.field public intercepting:Z

.field public isMultiTouch:Z

.field public isTouching:Z

.field public isUnlockExecuted:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final lastMovePos:Landroid/graphics/PointF;

.field public lockEditorTouchSlop:I

.field public longPressAllowHeight:I

.field public swipeUnlockRadius:I

.field public final touchDownPos:Landroid/graphics/PointF;

.field public touchSlop:I

.field public updateDistanceCount:I

.field public userActivityInvokedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

    .line 8
    .line 9
    const-string v0, "KeyguardTouchBase"

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput-boolean v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->DEBUG:Z

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    new-instance p1, Landroid/graphics/PointF;

    .line 9
    .line 10
    const/high16 p2, -0x40800000    # -1.0f

    .line 11
    .line 12
    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    .line 16
    .line 17
    new-instance p1, Landroid/graphics/PointF;

    .line 18
    .line 19
    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lastMovePos:Landroid/graphics/PointF;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getCanBeUnlock()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    .line 6
    .line 7
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    cmpl-float v4, v2, v3

    .line 11
    .line 12
    if-ltz v4, :cond_0

    .line 13
    .line 14
    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 15
    .line 16
    cmpl-float v3, v4, v3

    .line 17
    .line 18
    if-ltz v3, :cond_0

    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v3, 0x0

    .line 33
    :goto_0
    if-nez v3, :cond_1

    .line 34
    .line 35
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 36
    .line 37
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 38
    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 40
    .line 41
    const-string v5, "canBeUnlock touchStart=("

    .line 42
    .line 43
    const-string v6, ", "

    .line 44
    .line 45
    const-string v7, "), multiTouch="

    .line 46
    .line 47
    invoke-static {v5, v2, v6, v1, v7}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, ", unlockExecuted="

    .line 52
    .line 53
    const-string v5, ", deviceInteractive="

    .line 54
    .line 55
    invoke-static {v1, v4, v2, p0, v5}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string v0, "KeyguardTouchBase"

    .line 66
    .line 67
    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return v3
.end method

.method public final initDimens()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/DisplayInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateAffordace(Landroid/view/DisplayInfo;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const v3, 0x7f070a10

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    iput v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->longPressAllowHeight:I

    .line 31
    .line 32
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 33
    .line 34
    int-to-float v2, v2

    .line 35
    iget v3, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 36
    .line 37
    div-float/2addr v2, v3

    .line 38
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 39
    .line 40
    int-to-float v3, v3

    .line 41
    iget v4, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 42
    .line 43
    div-float/2addr v3, v4

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/high16 v3, 0x40900000    # 4.5f

    .line 49
    .line 50
    cmpl-float v3, v2, v3

    .line 51
    .line 52
    if-lez v3, :cond_0

    .line 53
    .line 54
    const v2, 0x3e99999a    # 0.3f

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/high16 v3, 0x40600000    # 3.5f

    .line 59
    .line 60
    cmpl-float v3, v2, v3

    .line 61
    .line 62
    if-lez v3, :cond_1

    .line 63
    .line 64
    const v2, 0x3ecccccd    # 0.4f

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const v3, 0x3fe66666    # 1.8f

    .line 69
    .line 70
    .line 71
    cmpl-float v2, v2, v3

    .line 72
    .line 73
    if-lez v2, :cond_2

    .line 74
    .line 75
    const/high16 v2, 0x3f000000    # 0.5f

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const v2, 0x3f333333    # 0.7f

    .line 79
    .line 80
    .line 81
    :goto_0
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 82
    .line 83
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 84
    .line 85
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    int-to-float v0, v0

    .line 90
    mul-float/2addr v0, v2

    .line 91
    float-to-int v0, v0

    .line 92
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 93
    .line 94
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const v2, 0x7f0706bf

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    add-int/2addr v1, v0

    .line 116
    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lockEditorTouchSlop:I

    .line 117
    .line 118
    return-void
.end method

.method public final setIntercept(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "setIntercept "

    .line 6
    .line 7
    .line 8
    const-string v1, "KeyguardTouchBase"

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    .line 14
    .line 15
    return-void
.end method

.method public final setTouch(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "setTouch "

    .line 6
    .line 7
    .line 8
    const-string v1, "KeyguardTouchBase"

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    .line 14
    .line 15
    return-void
.end method

.method public updateAffordace(Landroid/view/DisplayInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateDistance(Landroid/view/MotionEvent;Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lastMovePos:Landroid/graphics/PointF;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    .line 22
    .line 23
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 24
    .line 25
    const/high16 v3, -0x40800000    # -1.0f

    .line 26
    .line 27
    cmpg-float v2, v2, v3

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    move v2, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v4

    .line 35
    :goto_0
    if-nez v2, :cond_5

    .line 36
    .line 37
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 38
    .line 39
    cmpg-float v2, v2, v3

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v1, v4

    .line 45
    :goto_1
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 53
    .line 54
    sub-float/2addr v1, v2

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 60
    .line 61
    sub-float/2addr v2, v0

    .line 62
    float-to-double v0, v1

    .line 63
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 64
    .line 65
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    float-to-double v5, v2

    .line 70
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    add-double/2addr v2, v0

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    double-to-float v0, v0

    .line 80
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 81
    .line 82
    sget-boolean v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->DEBUG:Z

    .line 83
    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 101
    .line 102
    const-string/jumbo v1, "updateDistance curX="

    .line 103
    .line 104
    .line 105
    const-string v2, " curY="

    .line 106
    .line 107
    const-string v3, " distance="

    .line 108
    .line 109
    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p0, " fullScreen="

    .line 117
    .line 118
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string p1, "KeyguardTouchBase"

    .line 129
    .line 130
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_4
    return-void

    .line 134
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 135
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 136
    .line 137
    iput v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    .line 138
    .line 139
    return-void
.end method
