.class public final Lcom/android/systemui/keyguard/KeyguardUnlockInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z

.field public static final HISTORY_MAX:I

.field public static final INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

.field public static authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field public static final history:Ljava/util/Queue;

.field public static securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

.field public static unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->DEBUG:Z

    .line 25
    .line 26
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 27
    .line 28
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 29
    .line 30
    new-instance v0, Ljava/util/LinkedList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->history:Ljava/util/Queue;

    .line 36
    .line 37
    const/16 v0, 0x32

    .line 38
    .line 39
    sput v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->HISTORY_MAX:I

    .line 40
    .line 41
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->reset()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static leaveHistory(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeDateTimeStr(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, " "

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->history:Ljava/util/Queue;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    move-object v2, v1

    .line 19
    check-cast v2, Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sget v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->HISTORY_MAX:I

    .line 26
    .line 27
    if-le v2, v3, :cond_0

    .line 28
    .line 29
    move-object v2, v1

    .line 30
    check-cast v2, Ljava/util/LinkedList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    move-object v2, v1

    .line 36
    check-cast v2, Ljava/util/LinkedList;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit v1

    .line 42
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->DEBUG:Z

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    :cond_1
    const-string p1, "KeyguardUnlockInfo"

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {p1, p0, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v1

    .line 59
    throw p0
.end method

.method public static synthetic leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final reset()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 2
    .line 3
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 7
    .line 8
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    .line 11
    .line 12
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 13
    .line 14
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 15
    .line 16
    return-void
.end method

.method public static final setAuthDetail(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 2
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAuthDetail: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static final setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    .line 6
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 7
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 9
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAuthDetail: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static final setAuthDetailSkipBouncer(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SKIP_BOUNCER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 2
    .line 3
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 7
    .line 8
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 9
    .line 10
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v1, "setAuthDetailSkipBouncer: "

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    .line 38
    .line 39
    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static final setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, p0, :cond_1

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v0, "setUnlockTrigger already set type "

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v0, "setUnlockTrigger: "

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static final setUnlockTriggerByRemoteLock(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p0, v1, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq p0, v1, :cond_0

    .line 12
    .line 13
    move-object p0, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_KNOX_GUARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_RMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_CARRIER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 25
    .line 26
    :goto_0
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 27
    .line 28
    if-eqz p0, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v1, "setUnlockTriggerByRemoteLock: "

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    .line 54
    .line 55
    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static final setUnlockTriggerIfNotSet(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, p0, :cond_1

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v0, "setUnlockTriggerIfNotSet already set type "

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v0, v2

    .line 49
    :goto_0
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v4, "setUnlockTriggerIfNotSet: "

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, " "

    .line 71
    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 86
    .line 87
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 88
    .line 89
    if-ne v0, v1, :cond_4

    .line 90
    .line 91
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 92
    .line 93
    :cond_4
    return-void
.end method
