.class public final Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$3;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$3;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaView:Landroid/widget/LinearLayout;

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
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$3;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mFadeIn:Landroid/view/animation/Animation;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
