.class public final Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $lock:Ljava/lang/Object;

.field public final synthetic $newChangesSinceDialogWasDismissed:Ljava/util/function/Consumer;

.field public final synthetic $onDialogDismissedRunnable:Ljava/lang/Runnable;

.field public final synthetic $updateAppItemsLockedRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecFgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/systemui/qs/SecFgsManagerControllerImpl;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "Lcom/android/systemui/qs/SecFgsManagerControllerImpl;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->$newChangesSinceDialogWasDismissed:Ljava/util/function/Consumer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->$lock:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->$onDialogDismissedRunnable:Ljava/lang/Runnable;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->this$0:Lcom/android/systemui/qs/SecFgsManagerControllerImpl;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->$updateAppItemsLockedRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->$newChangesSinceDialogWasDismissed:Ljava/util/function/Consumer;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->$lock:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->this$0:Lcom/android/systemui/qs/SecFgsManagerControllerImpl;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->$updateAppItemsLockedRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl;->dialogConsumer:Ljava/util/function/Consumer;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v3, v0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl;->noItemTextView:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit p1

    .line 29
    iget-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->$onDialogDismissedRunnable:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setOnDismissListener$1;->this$0:Lcom/android/systemui/qs/SecFgsManagerControllerImpl;

    .line 35
    .line 36
    const-string p1, "dismiss dialog"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecFgsManagerControllerImpl;->log(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit p1

    .line 44
    throw p0
.end method
