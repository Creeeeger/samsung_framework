.class public final Lcom/android/systemui/shade/NotificationPanelViewController$12;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 18
    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 42
    .line 43
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateAfterExpanding:Z

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingStarted()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 51
    .line 52
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {v2, v0}, Lcom/android/systemui/shade/QuickSettingsController;->beginJankMonitoring(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(F)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedFraction(F)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 74
    .line 75
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "onGlobalLayout: "

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, "mAnimateAfterExpanding: "

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 97
    .line 98
    iget-boolean v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateAfterExpanding:Z

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 108
    .line 109
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 110
    .line 111
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelStateInfoLog(Ljava/lang/StringBuilder;Z)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 118
    .line 119
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v2, "onGlobalLayout: NotificationShadeWindowView isVisibleToUser is false"

    .line 127
    .line 128
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelStateInfoLog(Ljava/lang/StringBuilder;Z)V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void
.end method
