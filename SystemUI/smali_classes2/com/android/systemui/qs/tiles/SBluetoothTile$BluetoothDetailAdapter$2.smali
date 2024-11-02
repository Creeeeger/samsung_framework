.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$2;
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
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

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
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    .line 13
    .line 14
    const v2, 0x7f0a010f

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareTitleDivider:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
