.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->startKeyguardExitAnimationTime:J

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->goingAwayTime:J

    .line 6
    .line 7
    sub-long/2addr v1, v3

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 13
    .line 14
    iget-wide v5, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->waitStartTime:J

    .line 15
    .line 16
    sub-long/2addr v3, v5

    .line 17
    const-wide/32 v5, 0xf4240

    .line 18
    .line 19
    .line 20
    div-long/2addr v3, v5

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v7, "foreground is shown / vis="

    .line 26
    .line 27
    const-string/jumbo v8, "ms"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v9, "ms, end="

    .line 31
    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 44
    .line 45
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    :cond_0
    const-wide/16 v10, 0x0

    .line 50
    .line 51
    cmp-long v0, v1, v10

    .line 52
    .line 53
    if-lez v0, :cond_1

    .line 54
    .line 55
    div-long/2addr v1, v5

    .line 56
    sub-long v5, p1, v1

    .line 57
    .line 58
    const-string/jumbo p0, "ms, goingAway="

    .line 59
    .line 60
    .line 61
    invoke-static {v7, v3, v4, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string/jumbo v0, "ms, keyguard="

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 92
    .line 93
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    .line 94
    .line 95
    if-eqz p0, :cond_2

    .line 96
    .line 97
    const-string p0, "foreground is shown / blankScreen, vis="

    .line 98
    .line 99
    invoke-static {p0, v3, v4, v9}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-static {v7, v3, v4, v9}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    :goto_0
    const-string p1, "BioUnlock"

    .line 129
    .line 130
    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
