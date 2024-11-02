.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$4;
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
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$4;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

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
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$4;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetailItems;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p0, 0x8

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
