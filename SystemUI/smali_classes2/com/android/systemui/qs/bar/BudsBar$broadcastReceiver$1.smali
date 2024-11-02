.class public final Lcom/android/systemui/qs/bar/BudsBar$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BudsBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/BudsBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar$broadcastReceiver$1;->this$0:Lcom/android/systemui/qs/bar/BudsBar;

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
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, 0x0

    .line 17
    :goto_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BudsBar$broadcastReceiver$1;->this$0:Lcom/android/systemui/qs/bar/BudsBar;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "onReceive"

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string p1, "com.samsung.bluetooth.device.extra.META_DATA"

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object p2, Lcom/android/systemui/qs/bar/BudsBar;->BATTERY_TAG_KEYS:[B

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BudsBar;->updateBarContents([B)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
