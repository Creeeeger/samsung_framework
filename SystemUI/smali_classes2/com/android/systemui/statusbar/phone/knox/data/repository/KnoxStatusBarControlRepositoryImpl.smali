.class public final Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepository;


# instance fields
.field public final enableLog:Z

.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

.field public final knoxStatusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->enableLog:Z

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    .line 13
    .line 14
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-boolean v3, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v3, v1

    .line 32
    :goto_0
    const/4 v8, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    move-object v4, v8

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 38
    .line 39
    :goto_1
    if-nez p1, :cond_2

    .line 40
    .line 41
    move v5, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget v5, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 44
    .line 45
    :goto_2
    if-nez p1, :cond_3

    .line 46
    .line 47
    move v6, v1

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    iget v6, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    .line 50
    .line 51
    :goto_3
    if-nez p1, :cond_4

    .line 52
    .line 53
    move v7, v1

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    iget p1, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 56
    .line 57
    move v7, p1

    .line 58
    :goto_4
    move-object v1, v0

    .line 59
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;-><init>(ZZLjava/lang/String;III)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    .line 63
    .line 64
    new-instance p1, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;

    .line 65
    .line 66
    invoke-direct {p1, p0, v8}, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;-><init>(Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    .line 74
    .line 75
    invoke-static {v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {p1, p2, v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 84
    .line 85
    return-void
.end method
