.class public final Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

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
    const-string v0, "com.samsung.ucs.ucsservice.stateblocked"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/systemui/knox/UcmMonitor;->mUCMVendor:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "UCS_CSNAME"

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const-string p1, "KnoxStateMonitorImpl"

    .line 36
    .line 37
    const-string p2, "com.samsung.ucs.ucsservice.stateblocked intent!"

    .line 38
    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 45
    .line 46
    const/16 p1, 0x138d

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
