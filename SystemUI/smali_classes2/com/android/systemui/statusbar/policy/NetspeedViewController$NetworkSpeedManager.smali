.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;
.super Ljava/util/Observable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static volatile sInstance:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;


# instance fields
.field public final mHandler:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->mHandler:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "NetworkSpeedManager"

    .line 13
    .line 14
    const-string v2, "getInstance == null"

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 32
    .line 33
    return-object p0
.end method


# virtual methods
.method public final addObserver(Ljava/util/Observer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->mHandler:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final deleteObserver(Ljava/util/Observer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->mHandler:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
