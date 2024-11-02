.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$7;
.super Landroid/view/BatchedInputEventReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$7;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$7;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Landroid/view/MotionEvent;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
