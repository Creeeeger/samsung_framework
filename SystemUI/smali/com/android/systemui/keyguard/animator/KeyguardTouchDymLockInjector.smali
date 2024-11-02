.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

.field public mIsDynamicLockEnabled:Z

.field public mLockStarEnabled:Z

.field public mNonSwipeMode:I

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPluginLockStateListener:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;

.field public mViewMode:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mLockStarEnabled:Z

    .line 15
    .line 16
    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockStateListener:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "KeyguardTouchDymLockInjector pluginLockMediator: "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v3, "KeyguardTouchDymLockInjector"

    .line 40
    .line 41
    invoke-static {v3, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 45
    .line 46
    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 13
    .line 14
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    .line 15
    .line 16
    int-to-double v0, p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    :goto_0
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    sub-double/2addr v2, v0

    .line 29
    cmpl-double p0, p1, v2

    .line 30
    .line 31
    if-gez p0, :cond_5

    .line 32
    .line 33
    const-wide v2, -0x3f99800000000000L    # -180.0

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    add-double/2addr v2, v0

    .line 39
    cmpg-double p0, p1, v2

    .line 40
    .line 41
    if-gtz p0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    neg-double v2, v0

    .line 45
    cmpl-double p0, p1, v2

    .line 46
    .line 47
    if-ltz p0, :cond_2

    .line 48
    .line 49
    cmpg-double p0, p1, v0

    .line 50
    .line 51
    if-gtz p0, :cond_2

    .line 52
    .line 53
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->RIGHT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    const-wide v2, -0x3fa9800000000000L    # -90.0

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    sub-double v4, v2, v0

    .line 62
    .line 63
    cmpl-double p0, p1, v4

    .line 64
    .line 65
    if-ltz p0, :cond_3

    .line 66
    .line 67
    add-double/2addr v2, v0

    .line 68
    cmpg-double p0, p1, v2

    .line 69
    .line 70
    if-gtz p0, :cond_3

    .line 71
    .line 72
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->UP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_3
    const-wide v2, 0x4056800000000000L    # 90.0

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    sub-double v4, v2, v0

    .line 81
    .line 82
    cmpl-double p0, p1, v4

    .line 83
    .line 84
    if-ltz p0, :cond_4

    .line 85
    .line 86
    add-double/2addr v0, v2

    .line 87
    cmpg-double p0, p1, v0

    .line 88
    .line 89
    if-gtz p0, :cond_4

    .line 90
    .line 91
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->DOWN:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_4
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_5
    :goto_1
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->LEFT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 98
    .line 99
    return-object p0
.end method

.method public final resetDynamicLock()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "resetDynamicLock mIsDynamicLockEnabled: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v3, "KeyguardTouchDymLockInjector"

    .line 22
    .line 23
    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final updateDirection(IFFLandroid/view/MotionEvent;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p2

    .line 3
    .line 4
    move/from16 v2, p3

    .line 5
    .line 6
    iget v3, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getRawX()F

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getRawY()F

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    sub-float v6, v4, v1

    .line 20
    .line 21
    float-to-int v6, v6

    .line 22
    sub-float v7, v5, v2

    .line 23
    .line 24
    float-to-int v7, v7

    .line 25
    int-to-double v8, v6

    .line 26
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 27
    .line 28
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    int-to-double v12, v7

    .line 33
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide v10

    .line 37
    add-double/2addr v10, v8

    .line 38
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    float-to-double v10, v1

    .line 43
    float-to-double v1, v2

    .line 44
    float-to-double v12, v4

    .line 45
    float-to-double v4, v5

    .line 46
    sub-double/2addr v12, v10

    .line 47
    sub-double/2addr v4, v1

    .line 48
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    mul-double/2addr v1, v4

    .line 58
    move v4, p1

    .line 59
    int-to-double v4, v4

    .line 60
    cmpl-double v4, v8, v4

    .line 61
    .line 62
    if-lez v4, :cond_5

    .line 63
    .line 64
    and-int/lit8 v4, v3, 0x1

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    if-gez v6, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->LEFT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    and-int/lit8 v4, v3, 0x2

    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    if-lez v6, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->RIGHT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    and-int/lit8 v4, v3, 0x4

    .line 103
    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    if-gez v7, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->UP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    and-int/lit8 v3, v3, 0x8

    .line 122
    .line 123
    if-eqz v3, :cond_4

    .line 124
    .line 125
    if-lez v7, :cond_4

    .line 126
    .line 127
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->DOWN:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 132
    .line 133
    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_4
    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_5
    and-int/lit8 v1, v3, 0x10

    .line 144
    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->TAP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 151
    .line 152
    :goto_0
    iput-object v5, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 153
    .line 154
    return-void
.end method
