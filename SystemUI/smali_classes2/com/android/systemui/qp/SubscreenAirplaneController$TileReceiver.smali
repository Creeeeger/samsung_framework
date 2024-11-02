.class public final Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenAirplaneController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenAirplaneController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "SAC onReceive action: "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "SubscreenAirplaneController"

    .line 20
    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string p1, "AIRPLANE_MODE_CHANGE"

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 54
    .line 55
    xor-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    iget-object p2, p2, Lcom/android/systemui/qp/SubscreenAirplaneController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    .line 65
    .line 66
    invoke-interface {p0, p1}, Lcom/android/systemui/qp/SubscreenQSControllerContract$View;->updateView(Z)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method
