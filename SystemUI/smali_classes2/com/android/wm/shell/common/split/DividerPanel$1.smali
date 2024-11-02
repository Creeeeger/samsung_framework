.class public final Lcom/android/wm/shell/common/split/DividerPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerPanel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel$1;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel$1;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mH:Lcom/android/wm/shell/common/split/DividerPanel$H;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
