.class public final Lcom/android/systemui/keyguard/KeyguardDumpLog;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

.field public static final STATE_MSG:[Ljava/lang/String;

.field public static logger:Lcom/android/systemui/log/SamsungServiceLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardDumpLog;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    .line 7
    .line 8
    const-string/jumbo v0, "screen_toggled"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "occluded"

    .line 12
    .line 13
    .line 14
    const-string v2, "keyguardGoingAway"

    .line 15
    .line 16
    const-string/jumbo v3, "setLockScreenShown"

    .line 17
    .line 18
    .line 19
    const-string v4, "externalEnabled"

    .line 20
    .line 21
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->STATE_MSG:[Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const-string v0, " "

    .line 8
    .line 9
    invoke-static {p2, v0, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_0
    sget-object p3, Lcom/android/systemui/keyguard/KeyguardDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    check-cast p3, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    .line 18
    .line 19
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public static state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIII)V
    .locals 2

    .line 1
    and-int/lit8 v0, p7, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p2, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p7, 0x4

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move p3, v1

    .line 12
    :cond_1
    and-int/lit8 v0, p7, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    move p4, v1

    .line 17
    :cond_2
    and-int/lit8 v0, p7, 0x10

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    move p5, v1

    .line 23
    :cond_3
    and-int/lit8 p7, p7, 0x20

    .line 24
    .line 25
    if-eqz p7, :cond_4

    .line 26
    .line 27
    move p6, v1

    .line 28
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string p0, " "

    .line 32
    .line 33
    if-eqz p1, :cond_9

    .line 34
    .line 35
    const/4 p7, 0x1

    .line 36
    if-eq p1, p7, :cond_8

    .line 37
    .line 38
    const/4 p3, 0x2

    .line 39
    if-eq p1, p3, :cond_7

    .line 40
    .line 41
    const/4 p3, 0x3

    .line 42
    if-eq p1, p3, :cond_5

    .line 43
    .line 44
    const/4 p3, 0x4

    .line 45
    if-eq p1, p3, :cond_7

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_5
    invoke-static {p0, p5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p5, :cond_6

    .line 53
    .line 54
    if-eq p5, p7, :cond_6

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p0, " why:"

    .line 66
    .line 67
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    goto :goto_1

    .line 78
    :cond_7
    invoke-static {p0, p2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    goto :goto_1

    .line 83
    :cond_8
    new-instance p5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-nez p2, :cond_b

    .line 102
    .line 103
    const-string p2, " failed"

    .line 104
    .line 105
    invoke-static {p0, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    goto :goto_1

    .line 110
    :cond_9
    if-eqz p2, :cond_a

    .line 111
    .line 112
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    goto :goto_0

    .line 117
    :cond_a
    const-string p2, "failed"

    .line 118
    .line 119
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :cond_b
    :goto_1
    sget-object p2, Lcom/android/systemui/keyguard/KeyguardDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 132
    .line 133
    if-eqz p2, :cond_c

    .line 134
    .line 135
    sget-object p3, Lcom/android/systemui/keyguard/KeyguardDumpLog;->STATE_MSG:[Ljava/lang/String;

    .line 136
    .line 137
    aget-object p1, p3, p1

    .line 138
    .line 139
    sget-object p3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 140
    .line 141
    check-cast p2, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    .line 142
    .line 143
    invoke-virtual {p2, p1, p3, p0}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_c
    return-void
.end method
