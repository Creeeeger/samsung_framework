.class public final Lcom/android/systemui/qs/SecAutoTileManager$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecAutoTileManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$3;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

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
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "AutoTileManager"

    .line 6
    .line 7
    const-string v0, "DemoResetStarted"

    .line 8
    .line 9
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const-string p2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$3;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/systemui/qs/SecAutoTileManager;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isShopDemo(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$3;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->resetTileList()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
