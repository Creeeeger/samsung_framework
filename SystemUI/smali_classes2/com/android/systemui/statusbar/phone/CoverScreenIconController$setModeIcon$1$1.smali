.class public final Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $stream:Ljava/io/ByteArrayOutputStream;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;->$stream:Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;->$stream:Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->modeIcon:[B

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v1, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "airplane"

    .line 27
    .line 28
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->isAirplane:Z

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v2, "no_siginal"

    .line 34
    .line 35
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->noServiceType:I

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "routine_mode"

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->modeIcon:[B

    .line 44
    .line 45
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
