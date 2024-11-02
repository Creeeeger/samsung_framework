.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;
.super Landroid/view/animation/Animation;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$targetHeight:I

.field public final synthetic val$targetWidth:I

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$targetWidth:I

    .line 6
    .line 7
    iput p4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$targetHeight:I

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
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewWidth:I

    .line 10
    .line 11
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$targetWidth:I

    .line 12
    .line 13
    sub-int/2addr v1, v0

    .line 14
    int-to-float v1, v1

    .line 15
    mul-float/2addr v1, p1

    .line 16
    float-to-int v1, v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 27
    .line 28
    iget v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewHeight:I

    .line 29
    .line 30
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$targetHeight:I

    .line 31
    .line 32
    sub-int/2addr v1, v0

    .line 33
    int-to-float v1, v1

    .line 34
    mul-float/2addr v1, p1

    .line 35
    float-to-int v1, v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    const/high16 p2, 0x3f800000    # 1.0f

    .line 40
    .line 41
    cmpl-float p1, p1, p2

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    sget-boolean p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 46
    .line 47
    const/4 p2, -0x2

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    .line 67
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final willChangeBounds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
