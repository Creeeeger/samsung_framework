.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;
.super Landroid/app/TaskStackListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTaskFocusChanged(IZ)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 4
    .line 5
    const/4 p2, 0x2

    .line 6
    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_4

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne p2, v1, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    .line 42
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "com.android.wm.shell.controlpanel.activity.FlexPanelActivity"

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 67
    .line 68
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 75
    .line 76
    iget-object v3, v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 77
    .line 78
    invoke-static {v3}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getTopTaskUserId(Landroid/content/Context;)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isKeepFlexPanelTask(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_3

    .line 87
    .line 88
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4, v3, v1}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    and-int/2addr v1, p2

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 100
    .line 101
    if-ne p1, p2, :cond_2

    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 104
    .line 105
    new-instance p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 115
    .line 116
    new-instance p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    invoke-direct {p2, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 126
    .line 127
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_1
    return-void
.end method
