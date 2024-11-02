.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmContextSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmDisplayManager(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Landroid/hardware/display/DisplayManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Lcom/android/systemui/log/SecPanelLogger;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "onDisplayChanged : "

    .line 41
    .line 42
    invoke-static {v1, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    const/4 v1, 0x1

    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    move v2, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v2, v0

    .line 58
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 59
    .line 60
    invoke-static {v3}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmIsRotation0(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eq v2, v3, :cond_2

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 67
    .line 68
    invoke-static {v3, v2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmIsRotation0(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    .line 69
    .line 70
    .line 71
    :cond_2
    const/4 v2, 0x2

    .line 72
    if-ne p1, v2, :cond_3

    .line 73
    .line 74
    move v0, v1

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmIsRotation180(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eq v0, v2, :cond_4

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 84
    .line 85
    invoke-static {v2, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmIsRotation180(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    .line 86
    .line 87
    .line 88
    :cond_4
    if-eq p1, v1, :cond_5

    .line 89
    .line 90
    const/4 v0, 0x3

    .line 91
    if-ne p1, v0, :cond_6

    .line 92
    .line 93
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 94
    .line 95
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmInstantCollapseRunnable(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/lang/Runnable;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 100
    .line 101
    .line 102
    :cond_6
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
