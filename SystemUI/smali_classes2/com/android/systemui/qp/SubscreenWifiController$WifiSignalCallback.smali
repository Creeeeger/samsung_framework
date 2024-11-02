.class public final Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenWifiController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qp/SubscreenWifiController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;->this$0:Lcom/android/systemui/qp/SubscreenWifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubscreenWifiController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;-><init>(Lcom/android/systemui/qp/SubscreenWifiController;)V

    return-void
.end method


# virtual methods
.method public final setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setWifiIndicators enabled="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    .line 10
    .line 11
    const-string v2, "SubscreenWifiController"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;->this$0:Lcom/android/systemui/qp/SubscreenWifiController;

    .line 17
    .line 18
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiState:Z

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lcom/android/systemui/qp/SubscreenQSControllerContract$View;->updateView(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
