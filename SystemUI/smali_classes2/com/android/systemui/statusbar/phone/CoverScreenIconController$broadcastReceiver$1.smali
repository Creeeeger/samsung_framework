.class public final Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

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
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 4
    .line 5
    new-instance p2, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;-><init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v0, 0x64

    .line 11
    .line 12
    invoke-interface {p1, v0, v1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 13
    .line 14
    .line 15
    return-void
.end method
