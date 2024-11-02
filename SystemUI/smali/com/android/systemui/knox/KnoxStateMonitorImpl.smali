.class public final Lcom/android/systemui/knox/KnoxStateMonitorImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/knox/KnoxStateMonitor;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mBroadCastReceiver:Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

.field public final mContext:Landroid/content/Context;

.field public mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

.field public mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

.field public mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

.field public final mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

.field public mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

.field public final mUCMReceiver:Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;

.field public mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUCMReceiver:Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;

    .line 16
    .line 17
    new-instance v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mBroadCastReceiver:Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;

    .line 23
    .line 24
    new-instance v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 25
    .line 26
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;Landroid/os/Looper;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    new-instance p1, Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/android/systemui/knox/CustomSdkMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 51
    .line 52
    new-instance p1, Lcom/android/systemui/knox/ContainerMonitor;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/android/systemui/knox/ContainerMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    .line 58
    .line 59
    new-instance p1, Lcom/android/systemui/knox/DualDarMonitor;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Lcom/android/systemui/knox/DualDarMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 65
    .line 66
    new-instance p1, Lcom/android/systemui/knox/EdmMonitor;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/android/systemui/knox/EdmMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 72
    .line 73
    new-instance p1, Lcom/android/systemui/knox/SdpMonitor;

    .line 74
    .line 75
    invoke-direct {p1}, Lcom/android/systemui/knox/SdpMonitor;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

    .line 79
    .line 80
    new-instance p1, Lcom/android/systemui/knox/UcmMonitor;

    .line 81
    .line 82
    invoke-direct {p1}, Lcom/android/systemui/knox/UcmMonitor;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    .line 86
    .line 87
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_0

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->initKnoxClass()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    .line 98
    .line 99
    new-instance v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    .line 102
    .line 103
    .line 104
    const-string v1, "KnoxStateMonitorImpl"

    .line 105
    .line 106
    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/16 v0, 0xa

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "KnoxStateMonitor state:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/knox/CustomSdkMonitor;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/knox/EdmMonitor;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    .line 35
    .line 36
    if-eqz p2, :cond_4

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

    .line 42
    .line 43
    if-eqz p2, :cond_5

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :cond_5
    const-string p2, "mCallback size="

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 60
    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ge p2, v0, :cond_7

    .line 68
    .line 69
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "   -"

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, "="

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    return-void
.end method

.method public final getContainerIds()Ljava/util/List;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_2

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 50
    .line 51
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-object v0
.end method

.method public final getDualDarInnerLockoutAttemptDeadline()J
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    .line 16
    .line 17
    cmp-long v4, v2, v0

    .line 18
    .line 19
    iget-object v5, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 20
    .line 21
    if-gez v4, :cond_1

    .line 22
    .line 23
    iget-wide v6, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    .line 24
    .line 25
    const-wide/16 v8, 0x0

    .line 26
    .line 27
    cmp-long v4, v6, v8

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/DualDarMonitor;->getInnerAuthUserId(I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-wide v6, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    .line 45
    .line 46
    add-long/2addr v0, v6

    .line 47
    cmp-long v0, v2, v0

    .line 48
    .line 49
    if-lez v0, :cond_2

    .line 50
    .line 51
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/DualDarMonitor;->getInnerAuthUserId(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-virtual {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    :cond_2
    :goto_0
    return-wide v2
.end method

.method public final getInnerAuthUserId(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->getInnerAuthUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final getMainUserId(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const-string v0, "getMainUserId - userId : "

    .line 13
    .line 14
    const-string v1, ", ret : "

    .line 15
    .line 16
    const-string v2, "DualDarMonitor"

    .line 17
    .line 18
    invoke-static {v0, p1, v1, p0, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return p0
.end method

.method public final getQuickPanelItems()Ljava/util/List;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz p0, :cond_3

    .line 18
    .line 19
    const-string v0, ","

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    array-length v0, p0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v0, :cond_2

    .line 28
    .line 29
    aget-object v3, p0, v2

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-lez v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v0, v1

    .line 44
    :cond_3
    return-object v0
.end method

.method public final getQuickPanelUnavailableButtons()Ljava/util/List;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz p0, :cond_3

    .line 18
    .line 19
    const-string v0, ","

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    array-length v0, p0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v0, :cond_2

    .line 28
    .line 29
    aget-object v3, p0, v2

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-lez v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v0, v1

    .line 44
    :cond_3
    return-object v0
.end method

.method public final initKnoxClass()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo v1, "registerCallback this = "

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "CustomSdkMonitor"

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string/jumbo v0, "registerSystemUICallback() cannot reference because privateCustomDeviceManager is null"

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string/jumbo v1, "registerSystemUICallback() Failed!"

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "EdmMonitor"

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const-string/jumbo v1, "registerKnoxCallback() cannot reference because edm is null"

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_1
    move-exception v1

    .line 99
    const-string/jumbo v3, "registerKnoxCallback() Failed!"

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    .line 106
    .line 107
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    iput-boolean v1, v0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    iput-boolean v1, v0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v3, "EdmMonitor registerCallback mEnableAdminLock:"

    .line 129
    .line 130
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-boolean v3, v0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v3, "  mLicenseExpired:"

    .line 139
    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    .line 144
    .line 145
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_5

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    const-string v0, "com.samsung.ucs.ucsservice"

    .line 166
    .line 167
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v1, "SdpMonitor"

    .line 176
    .line 177
    if-nez v0, :cond_6

    .line 178
    .line 179
    const-string p0, "UcmMonitor failed to get UCM System service"

    .line 180
    .line 181
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_6
    :try_start_2
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :catch_2
    const-string p0, "UcmMonitor failed to be registered"

    .line 190
    .line 191
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    :goto_3
    return-void
.end method

.method public final isAdminLockEnabled()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p0, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move p0, v2

    .line 19
    :goto_1
    if-eqz p0, :cond_2

    .line 20
    .line 21
    move v0, v2

    .line 22
    :cond_2
    return v0
.end method

.method public final isAirplaneModeTileBlocked()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    xor-int/2addr v1, v2

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move p0, v2

    .line 24
    :goto_1
    if-eqz p0, :cond_2

    .line 25
    .line 26
    move v0, v2

    .line 27
    :cond_2
    return v0
.end method

.method public final isBlockedEdmSettingsChange$1()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    xor-int/2addr p0, v0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final isBluetoothTileBlocked()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    xor-int/2addr v1, v2

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move p0, v2

    .line 24
    :goto_1
    if-eqz p0, :cond_2

    .line 25
    .line 26
    move v0, v2

    .line 27
    :cond_2
    return v0
.end method

.method public final isBrightnessBlocked()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    xor-int/2addr p0, v0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final isDeviceDisabledForMaxFailedAttempt()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v0

    .line 18
    :goto_0
    if-nez v1, :cond_1

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 21
    .line 22
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    move v0, v2

    .line 27
    :cond_2
    return v0
.end method

.method public final isDisableDeviceByMultifactor()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMultifactorAuthEnforced()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "KnoxStateMonitorImpl"

    .line 8
    .line 9
    const-string v0, "isDisableDeviceByMultifactor( = false"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final isDualDarDeviceOwner(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final isDualDarInnerAuthRequired(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isInnerAuthRequired(I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const-string v0, "isInnerAuthRequired - userId : "

    .line 16
    .line 17
    const-string v1, ", ret : "

    .line 18
    .line 19
    const-string v2, "DualDarMonitor"

    .line 20
    .line 21
    invoke-static {v0, p1, v1, p0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method public final isDualDarInnerLayerUnlocked(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isInnerLayerUnlocked(I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const-string v0, "isDualDarInnerLayerUnlocked - userId : "

    .line 16
    .line 17
    const-string v1, ", ret : "

    .line 18
    .line 19
    const-string v2, "DualDarMonitor"

    .line 20
    .line 21
    invoke-static {v0, p1, v1, p0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method public final isFlashlightTileBlocked()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    xor-int/2addr p0, v0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final isLocationTileBlocked()Z
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_9

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    xor-int/2addr v1, v2

    .line 14
    iget-object v3, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    .line 15
    .line 16
    const-string v4, "gps"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v3, v2

    .line 38
    :goto_0
    xor-int/2addr v3, v2

    .line 39
    iget-object v5, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    .line 40
    .line 41
    const-string/jumbo v6, "network"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v5, v2

    .line 64
    :goto_1
    xor-int/2addr v5, v2

    .line 65
    iget-boolean v6, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez v3, :cond_3

    .line 80
    .line 81
    if-nez p0, :cond_2

    .line 82
    .line 83
    if-nez v6, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move v3, v0

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    :goto_2
    move v3, v2

    .line 89
    :goto_3
    if-eqz p0, :cond_4

    .line 90
    .line 91
    if-nez v6, :cond_4

    .line 92
    .line 93
    move p0, v2

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    move p0, v0

    .line 96
    :goto_4
    if-eqz v3, :cond_5

    .line 97
    .line 98
    if-nez v5, :cond_7

    .line 99
    .line 100
    :cond_5
    if-nez v1, :cond_7

    .line 101
    .line 102
    if-nez v6, :cond_6

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_6
    move v1, v0

    .line 106
    goto :goto_6

    .line 107
    :cond_7
    :goto_5
    move v1, v2

    .line 108
    :goto_6
    if-eqz p0, :cond_8

    .line 109
    .line 110
    move v1, v2

    .line 111
    :cond_8
    if-eqz v1, :cond_9

    .line 112
    .line 113
    move v0, v2

    .line 114
    :cond_9
    return v0
.end method

.method public final isLockScreenDisabledbyKNOX()Z
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForcedLock()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 19
    .line 20
    and-int/lit8 p0, p0, 0x2

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    move p0, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p0, v1

    .line 28
    :goto_0
    if-eqz p0, :cond_1

    .line 29
    .line 30
    move v1, v0

    .line 31
    :cond_1
    return v1
.end method

.method public final isMobileDataTileBlocked()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    xor-int/2addr v1, v2

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move p0, v2

    .line 24
    :goto_1
    if-eqz p0, :cond_2

    .line 25
    .line 26
    move v0, v2

    .line 27
    :cond_2
    return v0
.end method

.method public final isMultifactorAuthEnforced()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 17
    .line 18
    const-string v1, "knox_finger_print_plus"

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne p0, v1, :cond_0

    .line 30
    .line 31
    move v0, v1

    .line 32
    :cond_0
    return v0
.end method

.method public final isPersona(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    const-string p0, "isPersona for user "

    .line 18
    .line 19
    const-string v0, " is false"

    .line 20
    .line 21
    const-string v2, "ContainerMonitor"

    .line 22
    .line 23
    invoke-static {p0, p1, v0, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :cond_2
    :goto_0
    return v1
.end method

.method public final isRotationLockTileBlocked()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    xor-int/2addr p0, v0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final isSoundModeTileBlocked()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    xor-int/2addr p0, v0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final isStatusBarHidden()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final isUserMobileDataRestricted()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string/jumbo v1, "no_config_mobile_networks"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public final isWifiHotspotTileBlocked()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    xor-int/2addr v1, v2

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move p0, v2

    .line 24
    :goto_1
    if-eqz p0, :cond_2

    .line 25
    .line 26
    move v0, v2

    .line 27
    :cond_2
    return v0
.end method

.method public final isWifiTileBlocked()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    xor-int/2addr v1, v2

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p0, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move p0, v2

    .line 28
    :goto_1
    if-eqz p0, :cond_2

    .line 29
    .line 30
    move v0, v2

    .line 31
    :cond_2
    return v0
.end method

.method public final declared-synchronized registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "registerCallback() callback="

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v1, "KnoxStateMonitorImpl"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-ne v1, p1, :cond_0

    .line 44
    .line 45
    const-string p1, "KnoxStateMonitorImpl"

    .line 46
    .line 47
    const-string/jumbo v0, "removeCallback() mCallbacks has same callback"

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit p0

    .line 76
    throw p1
.end method

.method public final declared-synchronized removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "removeCallback() callback="

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v1, "KnoxStateMonitorImpl"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    :goto_0
    if-ltz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-ne v1, p1, :cond_0

    .line 45
    .line 46
    const-string v1, "KnoxStateMonitorImpl"

    .line 47
    .line 48
    const-string/jumbo v2, "removeCallback() mCallbacks has same callback"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit p0

    .line 66
    throw p1
.end method

.method public final setLockoutAttemptDeadline(II)J
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p0, -0x1

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    .line 15
    .line 16
    cmp-long p1, v0, v2

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    int-to-long v2, p2

    .line 21
    iget-wide v4, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    .line 22
    .line 23
    cmp-long p1, v2, v4

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    .line 28
    .line 29
    int-to-long p1, p2

    .line 30
    iput-wide p1, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    .line 31
    .line 32
    :cond_2
    iget-wide p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    .line 33
    .line 34
    return-wide p0
.end method
