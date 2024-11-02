.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;

.field public final synthetic f$1:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;->f$1:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;->f$1:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 6
    .line 7
    const v2, 0x7f0a0396

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderIn:Landroid/view/animation/Animation;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
