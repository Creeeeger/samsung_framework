.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$finalFrom:I

.field public final synthetic val$finalTo:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalFrom:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalTo:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x4

    .line 10
    const-string v1, "edit_panel_action_list"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "basic_panel_action_list"

    .line 14
    .line 15
    if-le p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 29
    .line 30
    iget v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalFrom:I

    .line 31
    .line 32
    add-int/lit8 v5, v5, -0xa

    .line 33
    .line 34
    invoke-virtual {v4, v1, v5, v2, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 38
    .line 39
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalTo:I

    .line 40
    .line 41
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 42
    .line 43
    invoke-virtual {p1, v3, v0, v1, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-boolean p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 52
    .line 53
    invoke-virtual {p1, v3, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 67
    .line 68
    invoke-virtual {v0, v3, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 72
    .line 73
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalFrom:I

    .line 74
    .line 75
    add-int/lit8 v0, v0, -0xa

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemove(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 81
    .line 82
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalTo:I

    .line 83
    .line 84
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 85
    .line 86
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeEditPanelNone()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->addEditPanelNone()V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    .line 102
    .line 103
    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    .line 104
    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDragEnded()V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method
