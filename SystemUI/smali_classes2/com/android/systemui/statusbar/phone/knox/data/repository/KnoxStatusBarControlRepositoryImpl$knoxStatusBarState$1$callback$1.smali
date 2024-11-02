.class public final Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUpdateStatusBarHidden()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->enableLog:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v2

    .line 10
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v3, "Status bar hidden is called="

    .line 17
    .line 18
    const-string v4, "KnoxStatusBarControlRepository"

    .line 19
    .line 20
    invoke-static {v3, v1, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    .line 24
    .line 25
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v11, 0x0

    .line 36
    const/16 v12, 0x3e

    .line 37
    .line 38
    invoke-static/range {v5 .. v12}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->copy$default(Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;ZZLjava/lang/String;IIII)Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 43
    .line 44
    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onUpdateStatusBarIcons()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->enableLog:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v2

    .line 10
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v3, "Status bar icon is called="

    .line 17
    .line 18
    const-string v4, "KnoxStatusBarControlRepository"

    .line 19
    .line 20
    invoke-static {v3, v1, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 27
    .line 28
    iget-object v0, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-boolean v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    move v7, v0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    const/16 v12, 0x3d

    .line 45
    .line 46
    invoke-static/range {v5 .. v12}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->copy$default(Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;ZZLjava/lang/String;IIII)Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 51
    .line 52
    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onUpdateStatusBarText()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->enableLog:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    move-object v1, v3

    .line 11
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    move-object v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, v1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 20
    .line 21
    :goto_0
    const-string v4, "Status bar text is updated="

    .line 22
    .line 23
    const-string v5, "KnoxStatusBarControlRepository"

    .line 24
    .line 25
    invoke-static {v4, v1, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    move-object v0, v3

    .line 33
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 41
    .line 42
    :goto_1
    move-object v9, v2

    .line 43
    move-object v0, v3

    .line 44
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    move v10, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 54
    .line 55
    move v10, v0

    .line 56
    :goto_2
    move-object v0, v3

    .line 57
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 60
    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    move v11, v1

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    .line 66
    .line 67
    move v11, v0

    .line 68
    :goto_3
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 69
    .line 70
    iget-object v0, v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 71
    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    move v12, v1

    .line 75
    goto :goto_4

    .line 76
    :cond_5
    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 77
    .line 78
    move v12, v0

    .line 79
    :goto_4
    const/4 v13, 0x3

    .line 80
    invoke-static/range {v6 .. v13}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->copy$default(Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;ZZLjava/lang/String;IIII)Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 85
    .line 86
    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    return-void
.end method
