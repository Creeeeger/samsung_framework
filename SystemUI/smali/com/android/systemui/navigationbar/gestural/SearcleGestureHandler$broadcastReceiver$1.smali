.class public final Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$broadcastReceiver$1;->this$0:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;

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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$broadcastReceiver$1;->this$0:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->ACTION_LOCK_TASK_MODE:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$broadcastReceiver$1;->this$0:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;

    .line 20
    .line 21
    const-string v0, "enable"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iput-boolean p2, p1, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->isInLockTaskMode:Z

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$broadcastReceiver$1;->this$0:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->isInLockTaskMode:Z

    .line 35
    .line 36
    const-string p2, "isInLockTaskMode="

    .line 37
    .line 38
    invoke-static {p2, p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
