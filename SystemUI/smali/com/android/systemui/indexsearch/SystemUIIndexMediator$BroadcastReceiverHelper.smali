.class public final Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v0, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p2, p0, p1, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->clearTileSearchResults()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
