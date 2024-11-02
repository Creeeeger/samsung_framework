.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$editPanelView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->val$editPanelView:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 13
    .line 14
    const v1, 0x7f0a0443

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewWidth:I

    .line 43
    .line 44
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewHeight:I

    .line 51
    .line 52
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 55
    .line 56
    .line 57
    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;

    .line 58
    .line 59
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;II)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->i_22_25_0_1:Landroid/view/animation/Interpolator;

    .line 63
    .line 64
    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v2, 0x1c2

    .line 68
    .line 69
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;

    .line 77
    .line 78
    invoke-direct {v3, v0, v1, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 85
    .line 86
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->val$editPanelView:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;Landroid/widget/LinearLayout;)V

    .line 94
    .line 95
    .line 96
    const-wide/16 v3, 0x64

    .line 97
    .line 98
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    .line 100
    .line 101
    return-void
.end method
