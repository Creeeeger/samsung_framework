.class public final Lcom/android/systemui/qp/SubscreenBleController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController$1;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBluetoothDevicesChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBluetoothScanStateChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBluetoothStateChange(Z)V
    .locals 2

    .line 1
    const-string v0, "onBluetoothStateChange = "

    .line 2
    .line 3
    const-string v1, "SubscreenBleController"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController$1;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenBleController;->isTransient()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    .line 21
    .line 22
    invoke-interface {p0, p1}, Lcom/android/systemui/qp/SubscreenQSControllerContract$View;->updateView(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
