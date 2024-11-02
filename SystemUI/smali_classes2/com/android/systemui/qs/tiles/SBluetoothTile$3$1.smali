.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$3$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$1;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "SBluetoothTile"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "onBluetoothDevicesChanged "

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$1;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$1;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 23
    .line 24
    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v2, "onBluetoothDevicesChanged update: "

    .line 39
    .line 40
    invoke-static {v2, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$1;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 52
    .line 53
    .line 54
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$1;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->-$$Nest$mupdateMusicShareItems(Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method
