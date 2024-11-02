.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$3;
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
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailItems;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x8

    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareTitleDivider:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
