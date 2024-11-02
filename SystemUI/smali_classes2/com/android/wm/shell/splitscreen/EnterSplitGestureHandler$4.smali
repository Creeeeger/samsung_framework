.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

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
    const-string v0, "com.samsung.android.action.LOCK_TASK_MODE"

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
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 14
    .line 15
    const-string v0, "enable"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput-boolean p2, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsLockTaskMode:Z

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 25
    .line 26
    const-string p1, "lock task mode changed"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->updateEnableState(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
