.class public final synthetic Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventScheduled:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {p0, v1, v2}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventScheduled:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventScheduled:Z

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
