.class final Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;->onInputEvent(Landroid/view/InputEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 26
    .line 27
    .line 28
    throw v1
.end method
