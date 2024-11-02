.class public final Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/CustomTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/android/systemui/qs/external/CustomTile;->mIntentAction:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onUnlockComplete()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/external/TileServiceManager;->setWaitingUnlockState(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mStopUnlockAndRun:Lcom/android/systemui/qs/external/CustomTile$2;

    .line 35
    .line 36
    const-wide/16 v0, 0x3e8

    .line 37
    .line 38
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    return-void
.end method
