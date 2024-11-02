.class public final Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

.field public final synthetic val$isExpanded:Z

.field public final synthetic val$isOutSideTouchEnable:Z

.field public final synthetic val$posX:I

.field public final synthetic val$posY:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;IIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;->val$posX:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;->val$posY:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;->val$isExpanded:Z

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;->val$isOutSideTouchEnable:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;->val$posX:I

    .line 4
    .line 5
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;->val$posY:I

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;->val$isExpanded:Z

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;->val$isOutSideTouchEnable:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->showTipPopUp(IIZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
