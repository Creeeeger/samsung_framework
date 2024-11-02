.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$animator:Landroid/animation/AnimatorSet;

.field public final synthetic val$finalTo:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;ILandroid/animation/AnimatorSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->val$finalTo:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->val$animator:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->val$finalTo:I

    .line 13
    .line 14
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ge v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->val$animator:Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 39
    .line 40
    add-int/lit8 v4, v0, -0x1

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v2, v1, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 51
    .line 52
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 53
    .line 54
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->val$animator:Landroid/animation/AnimatorSet;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 87
    .line 88
    .line 89
    return-void
.end method
