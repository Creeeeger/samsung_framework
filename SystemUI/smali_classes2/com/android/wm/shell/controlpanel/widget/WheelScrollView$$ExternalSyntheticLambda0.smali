.class public final synthetic Lcom/android/wm/shell/controlpanel/widget/WheelScrollView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->removeView()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
