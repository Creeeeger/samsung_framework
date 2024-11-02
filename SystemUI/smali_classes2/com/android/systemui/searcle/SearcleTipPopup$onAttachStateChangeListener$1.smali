.class public final Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 4
    .line 5
    if-ne p1, v0, :cond_2

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/InputMonitor;->dispose()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 30
    .line 31
    :cond_1
    new-instance p1, Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->defaultDisplay:Landroid/view/Display;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const-string v1, "SearcleTip"

    .line 40
    .line 41
    invoke-direct {p1, v1, v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lcom/android/systemui/searcle/SearcleTipPopup$startInputListening$1;

    .line 55
    .line 56
    invoke-direct {v2, p0}, Lcom/android/systemui/searcle/SearcleTipPopup$startInputListening$1;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v3, p1, v0, v1, v2}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    .line 68
    .line 69
    .line 70
    iput-object v3, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 4
    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/InputMonitor;->dispose()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 30
    .line 31
    :cond_1
    return-void
.end method
