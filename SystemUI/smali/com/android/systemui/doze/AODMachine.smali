.class public final Lcom/android/systemui/doze/AODMachine;
.super Lcom/android/systemui/doze/DozeMachine;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAOD$Callback;


# instance fields
.field public mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

.field public mAODUi:Lcom/android/systemui/doze/AODUi;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;Lcom/android/systemui/settings/UserTracker;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getState(I)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_1
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_DISPLAY_STATE_ON:Lcom/android/systemui/doze/DozeMachine$State;

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_2
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_3
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_4
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_5
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_6
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final dozeTimeTick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    instance-of v4, v3, Lcom/android/systemui/doze/AODUi;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    check-cast v3, Lcom/android/systemui/doze/AODUi;

    .line 18
    .line 19
    iput-object v3, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 30
    .line 31
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeTimeTick()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/android/systemui/doze/AODUi$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/android/systemui/doze/AODUi$$ExternalSyntheticLambda0;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 42
    .line 43
    invoke-interface {v1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public final getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine;->mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    instance-of v4, v3, Lcom/android/systemui/doze/AODScreenBrightness;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    check-cast v3, Lcom/android/systemui/doze/AODScreenBrightness;

    .line 18
    .line 19
    iput-object v3, p0, Lcom/android/systemui/doze/AODMachine;->mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/AODMachine;->mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

    .line 26
    .line 27
    return-object p0
.end method

.method public final onFinishMOD(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    .line 2
    .line 3
    not-int p1, p1

    .line 4
    and-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 10
    .line 11
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 16
    .line 17
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onRequestMOD(I)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {v0}, Lcom/android/systemui/doze/AODMachine;->getState(I)Lcom/android/systemui/doze/DozeMachine$State;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    .line 13
    .line 14
    return-void
.end method

.method public final onRequestState(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/systemui/doze/AODMachine;->getState(I)Lcom/android/systemui/doze/DozeMachine$State;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onUpdateDozeBrightness(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODMachine;->getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/doze/AODScreenBrightness;->updateDozeBrightness(III)V

    :cond_0
    return-void
.end method

.method public final onUpdateDozeBrightness(III)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_HYSTERESIS_BRIGHTNESS:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODMachine;->getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/doze/AODScreenBrightness;->updateDozeBrightness(III)V

    :cond_0
    return-void
.end method

.method public final onUpdateWindowLayoutParams()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    instance-of v4, v3, Lcom/android/systemui/doze/AODUi;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    check-cast v3, Lcom/android/systemui/doze/AODUi;

    .line 18
    .line 19
    iput-object v3, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 30
    .line 31
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 34
    .line 35
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 36
    .line 37
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 40
    .line 41
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 44
    .line 45
    iput-boolean v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method
