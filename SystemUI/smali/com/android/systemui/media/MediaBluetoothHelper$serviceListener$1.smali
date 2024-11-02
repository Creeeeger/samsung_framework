.class public final Lcom/android/systemui/media/MediaBluetoothHelper$serviceListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaBluetoothHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaBluetoothHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/MediaBluetoothHelper$serviceListener$1;->this$0:Lcom/android/systemui/media/MediaBluetoothHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onServiceConnected"

    .line 2
    .line 3
    .line 4
    const-string v1, "MediaBluetoothHelper"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/media/MediaBluetoothHelper$serviceListener$1;->this$0:Lcom/android/systemui/media/MediaBluetoothHelper;

    .line 13
    .line 14
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/media/MediaBluetoothHelper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo p0, "onServiceConnected: "

    .line 20
    .line 21
    .line 22
    const-string p2, " is not supported"

    .line 23
    .line 24
    invoke-static {p0, p1, p2, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onServiceDisconnected"

    .line 2
    .line 3
    .line 4
    const-string v1, "MediaBluetoothHelper"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/media/MediaBluetoothHelper$serviceListener$1;->this$0:Lcom/android/systemui/media/MediaBluetoothHelper;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/systemui/media/MediaBluetoothHelper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p0, "onServiceDisconnected: "

    .line 19
    .line 20
    .line 21
    const-string v0, " is not supported"

    .line 22
    .line 23
    invoke-static {p0, p1, v0, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
