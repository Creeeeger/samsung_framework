.class public final Lcom/android/systemui/qs/SecAutoTileManager$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

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
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager$1;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$1;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    .line 21
    const-string p0, "AutoTileManager"

    .line 22
    .line 23
    const-string/jumbo v0, "unregister PreInstallerFinished"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
