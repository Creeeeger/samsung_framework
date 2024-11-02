.class public final Lcom/android/systemui/keyguard/ViewMediatorProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final adjustStatusBarLocked:Lkotlin/jvm/functions/Function0;

.field public final alarmManager:Lkotlin/jvm/functions/Function0;

.field public final cancelKeyguardExitAnimMsg:Lkotlin/jvm/functions/Function0;

.field public final dismissMsg:Lkotlin/jvm/functions/Function0;

.field public final doKeyguardLaterLocked:Lkotlin/jvm/functions/Function0;

.field public final doKeyguardLocked:Lkotlin/jvm/functions/Function1;

.field public final getDelayedShowingSequence:Lkotlin/jvm/functions/Function0;

.field public final getLockTimeout:Lkotlin/jvm/functions/Function1;

.field public final getStateCallbackCount:Lkotlin/jvm/functions/Function0;

.field public final getSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

.field public final handleHide:Lkotlin/jvm/functions/Function0;

.field public final handler:Lkotlin/jvm/functions/Function0;

.field public final hasPendingLock:Lkotlin/jvm/functions/Function0;

.field public final hideLocked:Lkotlin/jvm/functions/Function0;

.field public final hideMsg:Lkotlin/jvm/functions/Function0;

.field public final increaseDelayedShowingSeq:Lkotlin/jvm/functions/Function0;

.field public final isBootCompleted:Lkotlin/jvm/functions/Function0;

.field public final isExternallyEnabled:Lkotlin/jvm/functions/Function0;

.field public final isKeyguardDonePending:Lkotlin/jvm/functions/Function0;

.field public final isShowing:Lkotlin/jvm/functions/Function0;

.field public final isWakeAndUnlocking:Lkotlin/jvm/functions/Function0;

.field public final keyguardDOnePendingTimeoutMsg:Lkotlin/jvm/functions/Function0;

.field public final keyguardDoneDrawingMsg:Lkotlin/jvm/functions/Function0;

.field public final keyguardDoneMsg:Lkotlin/jvm/functions/Function0;

.field public final keyguardTimeoutMsg:Lkotlin/jvm/functions/Function0;

.field public final lock:Lkotlin/jvm/functions/Function0;

.field public final notifyFinishedGoingToSleepMsg:Lkotlin/jvm/functions/Function0;

.field public final notifyStartedGoingToSleepMsg:Lkotlin/jvm/functions/Function0;

.field public final notifyStartedWakingUoMsg:Lkotlin/jvm/functions/Function0;

.field public final playSound:Lkotlin/jvm/functions/Function1;

.field public final resetMsg:Lkotlin/jvm/functions/Function0;

.field public final resetPendingLock:Lkotlin/jvm/functions/Function0;

.field public final resetPendingReset:Lkotlin/jvm/functions/Function0;

.field public final resetStateLocked:Lkotlin/jvm/functions/Function0;

.field public final resetSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

.field public final setHiding:Lkotlin/jvm/functions/Function1;

.field public final setOccludedMsg:Lkotlin/jvm/functions/Function0;

.field public final setShowingLocked:Lkotlin/jvm/functions/Function2;

.field public final showKeyguardWakeLock:Lkotlin/jvm/functions/Function0;

.field public final showMsg:Lkotlin/jvm/functions/Function0;

.field public final startKeyguardExitAnimMsg:Lkotlin/jvm/functions/Function0;

.field public final systemReadyMsg:Lkotlin/jvm/functions/Function0;

.field public final tryKeyguardDone:Lkotlin/jvm/functions/Function0;

.field public final updatePhoneState:Lkotlin/jvm/functions/Function1;

.field public final userPresentIntent:Lkotlin/jvm/functions/Function0;

.field public final verityUnlockMsg:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->showMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->hideMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->verityUnlockMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->notifyFinishedGoingToSleepMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->keyguardDoneMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->keyguardDoneDrawingMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setOccludedMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->keyguardTimeoutMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->dismissMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->startKeyguardExitAnimMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->keyguardDOnePendingTimeoutMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->notifyStartedWakingUoMsg:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->notifyStartedGoingToSleepMsg:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->systemReadyMsg:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->cancelKeyguardExitAnimMsg:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->lock:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->handler:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->alarmManager:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->showKeyguardWakeLock:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->userPresentIntent:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isWakeAndUnlocking:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->hasPendingLock:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isShowing:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p26

    .line 26
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isExternallyEnabled:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p28

    .line 27
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isBootCompleted:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p29

    .line 28
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isKeyguardDonePending:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p30

    .line 29
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getDelayedShowingSequence:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p31

    .line 30
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p32

    .line 31
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p33

    .line 32
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetStateLocked:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p34

    .line 33
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->adjustStatusBarLocked:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p35

    .line 34
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->doKeyguardLaterLocked:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p36

    .line 35
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->handleHide:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p37

    .line 36
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->hideLocked:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p38

    .line 37
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->tryKeyguardDone:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p39

    .line 38
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setShowingLocked:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p40

    .line 39
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->doKeyguardLocked:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p41

    .line 40
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->playSound:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p42

    .line 41
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetPendingLock:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p43

    .line 42
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetPendingReset:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p44

    .line 43
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setHiding:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p45

    .line 44
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->increaseDelayedShowingSeq:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p46

    .line 45
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getStateCallbackCount:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p47

    .line 46
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getLockTimeout:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p48

    .line 47
    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->updatePhoneState:Lkotlin/jvm/functions/Function1;

    return-void
.end method
