.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final synthetic $powerManager:Landroid/os/PowerManager;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->$keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->$powerManager:Landroid/os/PowerManager;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const-string v0, "KeyguardTouchAnimator"

    .line 2
    .line 3
    const-string/jumbo v1, "onDoubleTap"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->doubleTapDownEvent:Landroid/view/MotionEvent;

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_7

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->doubleTapDownEvent:Landroid/view/MotionEvent;

    .line 12
    .line 13
    const-string v4, "KeyguardTouchAnimator"

    .line 14
    .line 15
    if-eqz v3, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    sub-long/2addr v5, v7

    .line 26
    const-wide/16 v7, 0x12c

    .line 27
    .line 28
    cmp-long v7, v5, v7

    .line 29
    .line 30
    if-lez v7, :cond_0

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "isConsideredDoubleTap: time out deltaTime="

    .line 35
    .line 36
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    float-to-int v5, v5

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    float-to-int v6, v6

    .line 60
    sub-int/2addr v5, v6

    .line 61
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    float-to-int v6, v6

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    float-to-int v7, v7

    .line 71
    sub-int/2addr v6, v7

    .line 72
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getFlags()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    and-int/lit8 v3, v3, 0x8

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    move v3, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move v3, v1

    .line 83
    :goto_0
    if-eqz v3, :cond_2

    .line 84
    .line 85
    move v0, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    iget v0, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->doubleTapSlop:I

    .line 88
    .line 89
    mul-int/2addr v0, v0

    .line 90
    :goto_1
    mul-int v3, v5, v5

    .line 91
    .line 92
    mul-int v7, v6, v6

    .line 93
    .line 94
    add-int/2addr v7, v3

    .line 95
    if-lt v7, v0, :cond_3

    .line 96
    .line 97
    const-string v0, "isConsideredDoubleTap: over slop="

    .line 98
    .line 99
    const-string v3, ", deltaX="

    .line 100
    .line 101
    const-string v8, ", deltaY="

    .line 102
    .line 103
    invoke-static {v0, v7, v3, v5, v8}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0, v6, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    move v0, v2

    .line 112
    goto :goto_3

    .line 113
    :cond_4
    :goto_2
    move v0, v1

    .line 114
    :goto_3
    if-eqz v0, :cond_6

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 117
    .line 118
    iget-object v3, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 119
    .line 120
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 121
    .line 122
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 123
    .line 124
    if-nez v3, :cond_6

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->isFingerprintArea(Landroid/view/MotionEvent;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_5

    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->$keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_6

    .line 141
    .line 142
    :cond_5
    move p1, v2

    .line 143
    goto :goto_4

    .line 144
    :cond_6
    move p1, v1

    .line 145
    :goto_4
    const-string/jumbo v0, "onDoubleTapEvent executeDoubleTap="

    .line 146
    .line 147
    .line 148
    invoke-static {v0, p1, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    if-eqz p1, :cond_7

    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->$powerManager:Landroid/os/PowerManager;

    .line 154
    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v3

    .line 159
    const/16 v0, 0x17

    .line 160
    .line 161
    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    const-string p0, "101"

    .line 170
    .line 171
    const-string p1, "1012"

    .line 172
    .line 173
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move v1, v2

    .line 177
    :cond_7
    return v1
.end method
