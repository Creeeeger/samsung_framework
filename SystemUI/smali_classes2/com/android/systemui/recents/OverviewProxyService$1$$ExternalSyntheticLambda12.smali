.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:Landroid/view/MotionEvent;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/phone/CentralSurfaces;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$1:Landroid/view/MotionEvent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$2:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$1:Landroid/view/MotionEvent;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$2:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "OverviewProxyService"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v6, "onStatusBarMotionEvent ACTION_DOWN"

    .line 21
    .line 22
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 26
    .line 27
    iput-boolean v5, v6, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    iput v7, v6, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    .line 34
    .line 35
    iget-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    iput-wide v7, v6, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    .line 42
    .line 43
    iget-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 44
    .line 45
    iget-boolean v6, v6, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 46
    .line 47
    move-object v7, p0

    .line 48
    check-cast v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    invoke-virtual {v7, v8, v6, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onInputFocusTransfer(FZZ)V

    .line 52
    .line 53
    .line 54
    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    .line 55
    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setNextUpdateHorizontalPosition(F)V

    .line 63
    .line 64
    .line 65
    :cond_0
    const/4 v6, 0x3

    .line 66
    if-eq v2, v5, :cond_1

    .line 67
    .line 68
    if-ne v2, v6, :cond_3

    .line 69
    .line 70
    :cond_1
    const-string v7, "onStatusBarMotionEvent ACTION_UP / ACTION_CANCEL"

    .line 71
    .line 72
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 76
    .line 77
    iput-boolean v4, v3, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 84
    .line 85
    iget v7, v7, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    .line 86
    .line 87
    sub-float/2addr v3, v7

    .line 88
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v7

    .line 92
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 93
    .line 94
    iget-wide v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    .line 95
    .line 96
    sub-long/2addr v7, v9

    .line 97
    long-to-float v7, v7

    .line 98
    div-float/2addr v3, v7

    .line 99
    iget-boolean v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 100
    .line 101
    if-ne v2, v6, :cond_2

    .line 102
    .line 103
    move v4, v5

    .line 104
    :cond_2
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 105
    .line 106
    invoke-virtual {p0, v3, v0, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onInputFocusTransfer(FZZ)V

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 110
    .line 111
    .line 112
    return-void
.end method
