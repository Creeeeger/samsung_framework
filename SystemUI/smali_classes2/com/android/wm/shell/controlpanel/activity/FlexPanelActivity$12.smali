.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;
.super Landroid/view/View$DragShadowBuilder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$draggedView:Landroid/view/View;

.field public final synthetic val$gridLayoutSize:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->val$gridLayoutSize:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->val$draggedView:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->val$gridLayoutSize:I

    .line 2
    .line 3
    mul-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->val$draggedView:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    div-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->val$draggedView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    div-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const v1, 0x7f0702f6

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    add-int/2addr p0, v0

    .line 38
    invoke-virtual {p2, p1, p0}, Landroid/graphics/Point;->set(II)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
