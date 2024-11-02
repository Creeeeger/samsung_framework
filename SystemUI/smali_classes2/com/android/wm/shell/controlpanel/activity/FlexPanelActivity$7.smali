.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;
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
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;->val$finalFrom:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;->val$finalTo:I

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
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;->val$finalFrom:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0xa

    .line 6
    .line 7
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;->val$finalTo:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, -0xa

    .line 10
    .line 11
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 12
    .line 13
    sget v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    .line 14
    .line 15
    const-string v3, "edit_panel_action_list"

    .line 16
    .line 17
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDragEnded()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
