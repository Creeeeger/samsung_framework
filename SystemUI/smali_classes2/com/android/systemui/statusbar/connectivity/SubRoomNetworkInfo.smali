.class public final Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# instance fields
.field public isAirplane:Z

.field public modeIcon:[B

.field public noServiceType:I

.field public stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCloseFinished()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCloseStarted()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onOpenFinished()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onOpenStarted()V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 3
    .line 4
    return-void
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    const-string v0, "STATE_NETWORK_INFO"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p2, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string p1, "airplane"

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->isAirplane:Z

    .line 17
    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    const-string p1, "no_siginal"

    .line 22
    .line 23
    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->noServiceType:I

    .line 24
    .line 25
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo p1, "routine_mode"

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->modeIcon:[B

    .line 32
    .line 33
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object p2
.end method

.method public final setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 2
    .line 3
    return-void
.end method
