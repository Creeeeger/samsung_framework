.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$3$2;
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
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

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
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-boolean v1, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v1, "onBluetoothScanStateChanged update = "

    .line 20
    .line 21
    const-string v2, "SBluetoothTile"

    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
