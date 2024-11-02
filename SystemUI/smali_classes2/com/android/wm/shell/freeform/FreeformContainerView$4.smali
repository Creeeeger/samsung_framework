.class public final Lcom/android/wm/shell/freeform/FreeformContainerView$4;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

.field public final synthetic val$iconListSize:I

.field public final synthetic val$label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->val$label:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->val$iconListSize:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->val$label:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-ne p2, v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->val$iconListSize:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 30
    .line 31
    const/16 v2, 0x1e

    .line 32
    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x2

    .line 38
    if-lt v0, v2, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method
