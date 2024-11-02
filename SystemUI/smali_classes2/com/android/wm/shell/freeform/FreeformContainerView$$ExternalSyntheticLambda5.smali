.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda5;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda5;->f$1:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 16
    .line 17
    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideDismissButtonAndDismissIcon(Lcom/android/wm/shell/freeform/FreeformContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget p0, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerX:F

    .line 26
    .line 27
    iget v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerY:F

    .line 28
    .line 29
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
