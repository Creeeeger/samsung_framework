.class public final Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bouncerMessage:Lkotlinx/coroutines/flow/Flow;

.field public final factory:Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/keyguard/bouncer/domain/interactor/CountDownTimerUtil;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;->factory:Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;

    .line 5
    .line 6
    sget-object p2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    const-string p2, ""

    .line 11
    .line 12
    new-instance p4, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/16 v6, 0x1e

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v0, p4

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/ColorStateList;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/16 v8, 0x1e

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    move-object v2, v0

    .line 35
    move-object v3, p2

    .line 36
    move-object v4, p5

    .line 37
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/ColorStateList;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;

    .line 41
    .line 42
    invoke-direct {p2, p4, v0}, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;-><init>(Lcom/android/systemui/keyguard/bouncer/shared/model/Message;Lcom/android/systemui/keyguard/bouncer/shared/model/Message;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 46
    .line 47
    invoke-direct {v1, p2}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    check-cast p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;

    .line 51
    .line 52
    iget-object v2, p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 53
    .line 54
    iget-object v3, p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->biometricAuthMessage:Lkotlinx/coroutines/flow/Flow;

    .line 55
    .line 56
    iget-object v4, p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 57
    .line 58
    iget-object v5, p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 59
    .line 60
    iget-object v6, p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 61
    .line 62
    iget-object v7, p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->authFlagsMessage:Lkotlinx/coroutines/flow/Flow;

    .line 63
    .line 64
    iget-object v8, p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->biometricLockedOutMessage:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 65
    .line 66
    check-cast p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 67
    .line 68
    iget-object p1, p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 69
    .line 70
    new-instance v9, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$special$$inlined$map$1;

    .line 71
    .line 72
    invoke-direct {v9, p1, p0}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;)V

    .line 73
    .line 74
    .line 75
    filled-new-array/range {v1 .. v9}, [Lkotlinx/coroutines/flow/Flow;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_1

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-eqz p3, :cond_0

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    check-cast p3, Lkotlinx/coroutines/flow/Flow;

    .line 108
    .line 109
    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    .line 110
    .line 111
    new-instance p4, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;

    .line 112
    .line 113
    const/4 p5, 0x0

    .line 114
    invoke-direct {p4, p5}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 115
    .line 116
    .line 117
    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 118
    .line 119
    invoke-direct {p5, p2, p3, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 120
    .line 121
    .line 122
    move-object p2, p5

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    .line 125
    .line 126
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;->bouncerMessage:Lkotlinx/coroutines/flow/Flow;

    .line 131
    .line 132
    return-void

    .line 133
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 134
    .line 135
    const-string p1, "Empty collection can\'t be reduced."

    .line 136
    .line 137
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0
.end method
