.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

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
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 6
    .line 7
    new-instance v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$1;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$3;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onBluetoothScanStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$2;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$2;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$3;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mAvailableItemList:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    int-to-long v0, p1

    .line 33
    const-string p1, "4919"

    .line 34
    .line 35
    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(JLjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final onBluetoothStateChange(Z)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "onBluetoothStateChange enabled: "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, " isShowingDetail(): "

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 23
    .line 24
    const-string v1, "SBluetoothTile"

    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 33
    .line 34
    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/16 v3, 0xc

    .line 38
    .line 39
    if-ne v0, v3, :cond_0

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v4, v2

    .line 44
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 45
    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    const-string v5, "onBluetoothStateChange isShowingDetail bluetoothState: "

    .line 49
    .line 50
    invoke-static {v5, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/16 v1, 0xa

    .line 54
    .line 55
    if-eq v0, v3, :cond_1

    .line 56
    .line 57
    if-eq v0, v1, :cond_1

    .line 58
    .line 59
    const/16 v3, 0xd

    .line 60
    .line 61
    if-ne v0, v3, :cond_3

    .line 62
    .line 63
    :cond_1
    if-eqz v4, :cond_2

    .line 64
    .line 65
    const/16 v3, 0x17

    .line 66
    .line 67
    move-object v5, p1

    .line 68
    check-cast v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 69
    .line 70
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->setScanMode(I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 74
    .line 75
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 79
    .line 80
    invoke-virtual {p1, v4}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V

    .line 81
    .line 82
    .line 83
    if-ne v0, v1, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public final onMusicShareDiscoveryStateChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "onMusicShareDiscoveryStateChanged() : "

    .line 12
    .line 13
    const-string v1, "SBluetoothTile"

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 21
    .line 22
    check-cast p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scanMusicShareDevices(ZZ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
