.class public final Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/AppPairShortcutController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;->this$0:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroid/content/Intent;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;->this$0:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 19
    .line 20
    const-string v1, "com.samsung.android.permission.SEND_SPLIT_STATE_CHANGED"

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroid/content/Intent;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;->this$0:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 35
    .line 36
    const-string v1, "com.samsung.android.permission.ADD_PAIR_APP_SHORTCUT"

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method
