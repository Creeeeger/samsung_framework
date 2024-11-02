.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;
.super Landroid/view/animation/Animation;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$startHeight:I

.field public final synthetic val$startWidth:I

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->val$v:Landroid/view/View;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->val$startWidth:I

    .line 6
    .line 7
    iput p4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->val$startHeight:I

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->val$v:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->val$startWidth:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 10
    .line 11
    iget v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewWidth:I

    .line 12
    .line 13
    sub-int v1, v0, v1

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    mul-float/2addr v1, p1

    .line 17
    float-to-int v1, v1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->val$v:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->val$startHeight:I

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 30
    .line 31
    iget v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewHeight:I

    .line 32
    .line 33
    sub-int v1, v0, v1

    .line 34
    .line 35
    int-to-float v1, v1

    .line 36
    mul-float/2addr v1, p1

    .line 37
    float-to-int v1, v1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    const/high16 p2, 0x3f800000    # 1.0f

    .line 42
    .line 43
    cmpl-float p1, p1, p2

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    sget-boolean p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 48
    .line 49
    const/4 p2, -0x2

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->val$v:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->val$v:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    .line 69
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;->val$v:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final willChangeBounds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
