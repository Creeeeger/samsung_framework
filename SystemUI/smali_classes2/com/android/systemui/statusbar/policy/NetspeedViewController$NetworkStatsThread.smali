.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;
.super Ljava/lang/Thread;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "connectivity"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    const-string v2, "NetspeedViewController"

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "Couldn\'t get connectivity manager"

    .line 18
    .line 19
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, "Network is not connected,NetworkInfo.mDetailedState = "

    .line 57
    .line 58
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string v1, "There is not active network"

    .line 77
    .line 78
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 82
    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStats:Z

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, "NetworkStatsThread-mNetworkStats = "

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    .line 92
    .line 93
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStats:Z

    .line 94
    .line 95
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUpdateRunnable:Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    return-void
.end method
