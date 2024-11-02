.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

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
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 24
    .line 25
    .line 26
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->-$$Nest$mupdateMusicShareItems(Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
