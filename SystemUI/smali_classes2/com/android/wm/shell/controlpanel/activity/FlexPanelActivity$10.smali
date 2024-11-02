.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$animator:Landroid/animation/AnimatorSet;

.field public final synthetic val$finalGridLayout:Landroid/widget/GridLayout;

.field public final synthetic val$finalTo:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/widget/GridLayout;ILandroid/animation/AnimatorSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$finalGridLayout:Landroid/widget/GridLayout;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$finalTo:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$animator:Landroid/animation/AnimatorSet;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$finalGridLayout:Landroid/widget/GridLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$finalGridLayout:Landroid/widget/GridLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getLeft()I

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$finalTo:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0xa

    .line 18
    .line 19
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$finalGridLayout:Landroid/widget/GridLayout;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$animator:Landroid/animation/AnimatorSet;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$finalGridLayout:Landroid/widget/GridLayout;

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$finalGridLayout:Landroid/widget/GridLayout;

    .line 40
    .line 41
    add-int/lit8 v5, v0, -0x1

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    sget v5, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v3, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 59
    .line 60
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/lit8 v0, v0, -0xa

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;->val$animator:Landroid/animation/AnimatorSet;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 78
    .line 79
    .line 80
    return-void
.end method
