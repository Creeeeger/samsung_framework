.class public final Lcom/android/systemui/doze/AODUi;
.super Lcom/android/systemui/doze/DozeUi;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mHostCallback:Lcom/android/systemui/doze/AODUi$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Landroid/hardware/display/AmbientDisplayConfiguration;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/doze/AODUi$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/systemui/doze/AODUi$1;-><init>(Lcom/android/systemui/doze/AODUi;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/doze/AODUi;->mHostCallback:Lcom/android/systemui/doze/AODUi$1;

    .line 10
    .line 11
    iput-object p9, p0, Lcom/android/systemui/doze/AODUi;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/doze/DozeUi;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/android/systemui/doze/AODUi$2;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    aget p1, p1, p2

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/doze/AODUi;->mHostCallback:Lcom/android/systemui/doze/AODUi$1;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 16
    .line 17
    if-eq p1, p2, :cond_1

    .line 18
    .line 19
    const/4 p2, 0x2

    .line 20
    if-eq p1, p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method
