.class public final Lcom/android/systemui/volume/store/VolumePanelStore;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# instance fields
.field public currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public isWorking:Z

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final middlewares:Ljava/util/ArrayList;

.field public final observers:Ljava/util/ArrayList;

.field public final reducer:Lcom/android/systemui/volume/reducer/VolumePanelReducer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/store/VolumePanelStore$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/store/VolumePanelStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Lcom/android/systemui/volume/VolumeDependency;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/basic/util/LogWrapper;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->observers:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v1, Lcom/android/systemui/volume/middleware/JSonLogger;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/android/systemui/volume/middleware/DeviceStateController;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Lcom/android/systemui/volume/middleware/DeviceStateController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Lcom/android/systemui/volume/middleware/AudioManagerController;

    .line 35
    .line 36
    invoke-direct {v3, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/android/systemui/volume/middleware/SmartViewInteractor;

    .line 40
    .line 41
    invoke-direct {v4, p1}, Lcom/android/systemui/volume/middleware/SmartViewInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 42
    .line 43
    .line 44
    new-instance v5, Lcom/android/systemui/volume/middleware/BluetoothInteractor;

    .line 45
    .line 46
    invoke-direct {v5, p1}, Lcom/android/systemui/volume/middleware/BluetoothInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;

    .line 50
    .line 51
    invoke-direct {v6, p1}, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 52
    .line 53
    .line 54
    new-instance v7, Lcom/android/systemui/volume/middleware/SALogger;

    .line 55
    .line 56
    invoke-direct {v7, p1}, Lcom/android/systemui/volume/middleware/SALogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 57
    .line 58
    .line 59
    filled-new-array/range {v1 .. v7}, [Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->middlewares:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 70
    .line 71
    invoke-direct {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 79
    .line 80
    new-instance p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    .line 81
    .line 82
    invoke-direct {p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->reducer:Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->observers:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->isWorking:Z

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 5
    invoke-interface {v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->isWorking:Z

    return-void
.end method

.method public final bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method public final onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VolumePanelStore#onChanged("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1000

    .line 3
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    const-string v6, "]"

    const-string v7, "  > New State : ["

    iget-object v8, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->reducer:Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    const-string/jumbo v9, "}"

    const-string/jumbo v10, "}, currentState={"

    const-string v11, "], currentAction={"

    const-string v12, " with ["

    const-string/jumbo v13, "use handler!!"

    const-string v14, "VolumePanelStore"

    iget-object v15, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v3, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->middlewares:Ljava/util/ArrayList;

    const-string v4, "dispatch ["

    if-eqz v5, :cond_7

    move-object/from16 v16, v6

    const-wide/16 v5, 0x1000

    .line 4
    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5
    :try_start_0
    iget-boolean v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->isWorking:Z

    if-nez v2, :cond_6

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    if-eq v2, v5, :cond_0

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    iget-object v5, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v5

    .line 8
    iget-object v6, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v15, v14, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v4, v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    .line 11
    invoke-interface {v4, v1}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 12
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v4

    goto :goto_0

    .line 13
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v8, v4, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->reduce(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v2

    .line 14
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v1

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    if-eq v1, v4, :cond_3

    .line 15
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    .line 17
    invoke-interface {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->applyState(Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    if-eq v1, v3, :cond_5

    .line 19
    iput-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/store/VolumePanelStore;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_2

    .line 21
    :cond_5
    iput-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 22
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x1000

    .line 23
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_6

    .line 24
    :cond_6
    :try_start_1
    new-instance v0, Lcom/android/systemui/volume/DispatchException;

    invoke-direct {v0, v13}, Lcom/android/systemui/volume/DispatchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    const-wide/16 v1, 0x1000

    .line 25
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_7
    move-object v5, v6

    .line 26
    iget-boolean v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->isWorking:Z

    if-nez v2, :cond_e

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    if-eq v2, v6, :cond_8

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    iget-object v6, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v6

    .line 29
    iget-object v13, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-object/from16 v16, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v15, v14, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object/from16 v16, v5

    .line 31
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    move-object v4, v1

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    .line 32
    invoke-interface {v4, v1}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 33
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    move-object v1, v4

    goto :goto_4

    .line 34
    :cond_a
    iget-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v8, v4, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->reduce(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v2

    .line 35
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v1

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    if-eq v1, v4, :cond_b

    .line 36
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    .line 38
    invoke-interface {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->applyState(Ljava/lang/Object;)V

    goto :goto_5

    .line 39
    :cond_c
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    if-eq v1, v3, :cond_d

    .line 40
    iput-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 41
    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/store/VolumePanelStore;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_6

    .line 42
    :cond_d
    iput-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    :goto_6
    return-void

    .line 43
    :cond_e
    new-instance v0, Lcom/android/systemui/volume/DispatchException;

    invoke-direct {v0, v13}, Lcom/android/systemui/volume/DispatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public final subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->observers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v3, "subscribe : observer count="

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", observer="

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 40
    .line 41
    const-string v2, "VolumePanelStore"

    .line 42
    .line 43
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    .line 47
    .line 48
    invoke-direct {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method
