.class public final Lcom/android/systemui/volume/VolumePanelImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;
.implements Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;


# instance fields
.field public actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

.field public final handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public final safetyVolumeCallback:Lcom/android/systemui/volume/VolumePanelImpl$safetyVolumeCallback$1;

.field public final soundAssistant:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

.field public final soundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

.field public final store:Lcom/android/systemui/volume/store/VolumePanelStore;

.field public storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field public subDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

.field public subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

.field public final timeOutCallback:Lcom/android/systemui/volume/VolumePanelImpl$timeOutCallback$1;

.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

.field public window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/VolumePanelImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 5
    .line 6
    check-cast p2, Lcom/android/systemui/volume/VolumeDependency;

    .line 7
    .line 8
    const-class p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 17
    .line 18
    const-class p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 27
    .line 28
    const-class p1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->soundAssistant:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 37
    .line 38
    const-class p1, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 47
    .line 48
    const-class v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->soundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 57
    .line 58
    const-class v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 65
    .line 66
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 75
    .line 76
    new-instance p1, Lcom/android/systemui/volume/VolumePanelImpl$timeOutCallback$1;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumePanelImpl$timeOutCallback$1;-><init>(Lcom/android/systemui/volume/VolumePanelImpl;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->timeOutCallback:Lcom/android/systemui/volume/VolumePanelImpl$timeOutCallback$1;

    .line 82
    .line 83
    new-instance p1, Lcom/android/systemui/volume/VolumePanelImpl$safetyVolumeCallback$1;

    .line 84
    .line 85
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumePanelImpl$safetyVolumeCallback$1;-><init>(Lcom/android/systemui/volume/VolumePanelImpl;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->safetyVolumeCallback:Lcom/android/systemui/volume/VolumePanelImpl$safetyVolumeCallback$1;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/android/systemui/volume/VolumePanelImpl$dispatch$1;

    .line 4
    .line 5
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl$dispatch$1;-><init>(Lcom/android/systemui/volume/VolumePanelImpl;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    .line 11
    .line 12
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 23
    .line 24
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final getVolumePanelCurrentState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 4
    .line 5
    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/volume/VolumePanelImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->safetyVolumeCallback:Lcom/android/systemui/volume/VolumePanelImpl$safetyVolumeCallback$1;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->timeOutCallback:Lcom/android/systemui/volume/VolumePanelImpl$timeOutCallback$1;

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanelImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanelImpl;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 25
    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :pswitch_0
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_MONITOR_PHASE_3:Z

    .line 32
    .line 33
    if-eqz p0, :cond_6

    .line 34
    .line 35
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setSafeMediaVolume()V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :pswitch_1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_MONITOR_PHASE_3:Z

    .line 41
    .line 42
    if-eqz p0, :cond_6

    .line 43
    .line 44
    invoke-virtual {v4, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :pswitch_2
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_MONITOR_PHASE_3:Z

    .line 50
    .line 51
    if-eqz p0, :cond_6

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eq p0, v3, :cond_6

    .line 58
    .line 59
    invoke-virtual {v4, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_3
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_MONITOR_PHASE_3:Z

    .line 65
    .line 66
    if-eqz p0, :cond_6

    .line 67
    .line 68
    invoke-virtual {v4, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    const-wide/32 p0, 0xea60

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, p0, p1, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(JLjava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isFolded()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 91
    .line 92
    if-eqz p1, :cond_0

    .line 93
    .line 94
    const-class p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 95
    .line 96
    check-cast v0, Lcom/android/systemui/volume/VolumeDependency;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDependency;->getNewObject(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->observeStore()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_0
    const-class p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    .line 112
    .line 113
    check-cast v0, Lcom/android/systemui/volume/VolumeDependency;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDependency;->getNewObject(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    .line 120
    .line 121
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    if-eqz p1, :cond_3

    .line 134
    .line 135
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 136
    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 140
    .line 141
    .line 142
    iget-object v1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 143
    .line 144
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 151
    .line 152
    .line 153
    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 154
    .line 155
    iget-object v1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 158
    .line 159
    .line 160
    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 161
    .line 162
    if-nez p1, :cond_2

    .line 163
    .line 164
    move-object p1, v0

    .line 165
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 168
    .line 169
    .line 170
    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    .line 175
    .line 176
    if-eqz p1, :cond_6

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->dismiss()V

    .line 179
    .line 180
    .line 181
    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 184
    .line 185
    .line 186
    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_5
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startLeBroadcastActivity()V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :pswitch_6
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startHearingEnhancementsActivity()V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :pswitch_7
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startVolumeSettingsActivity()V

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->recreateVolumePanelForNewConfig()V

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :pswitch_9
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startSettingsActivity()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    if-eq p0, v3, :cond_4

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    if-nez p0, :cond_6

    .line 219
    .line 220
    :cond_4
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendSystemDialogsCloseAction()V

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :pswitch_a
    invoke-virtual {v4, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :pswitch_b
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    if-nez p0, :cond_5

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    if-eqz p0, :cond_6

    .line 242
    .line 243
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOut()I

    .line 244
    .line 245
    .line 246
    move-result p0

    .line 247
    invoke-virtual {v4, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 248
    .line 249
    .line 250
    int-to-long p0, p0

    .line 251
    invoke-virtual {v4, p0, p1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(JLjava/lang/Runnable;)V

    .line 252
    .line 253
    .line 254
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :pswitch_c
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOut()I

    .line 259
    .line 260
    .line 261
    move-result p0

    .line 262
    invoke-virtual {v4, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 263
    .line 264
    .line 265
    int-to-long p0, p0

    .line 266
    invoke-virtual {v4, p0, p1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(JLjava/lang/Runnable;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    .line 270
    .line 271
    .line 272
    const/4 p0, 0x1

    .line 273
    invoke-interface {v6, p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    .line 274
    .line 275
    .line 276
    goto :goto_0

    .line 277
    :pswitch_d
    invoke-interface {v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    .line 278
    .line 279
    .line 280
    :cond_6
    :goto_0
    return-void

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final recreateVolumePanelForNewConfig()V
    .locals 3

    .line 1
    const-string v0, "VolumePanelImpl"

    .line 2
    .line 3
    const-string/jumbo v1, "recreateVolumePanelForNewConfig"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->dispose()V

    .line 15
    .line 16
    .line 17
    const-class v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 20
    .line 21
    check-cast v1, Lcom/android/systemui/volume/VolumeDependency;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->getNewObject(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->observeStore()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 42
    .line 43
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 67
    .line 68
    .line 69
    const-class v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->getNewObject(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->observeStore()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method public final restoreToDefaultStore()V
    .locals 2

    .line 1
    const-string v0, "VolumePanelImpl"

    .line 2
    .line 3
    const-string/jumbo v1, "restoreToDefaultStore"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->observeStore()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->soundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;->updateState(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setActionObserver(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setActionObserver : newActionObserver="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", volumeStarVersion=0"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "VolumePanelImpl"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->dispose()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 32
    .line 33
    return-void
.end method

.method public final setStateObservable(Lcom/samsung/systemui/splugins/volume/VolumeObservable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setStateObservable : newStateObservable="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", volumeStarVersion=0"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "VolumePanelImpl"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->dispose()V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeObservable;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->soundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;->updateState(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
