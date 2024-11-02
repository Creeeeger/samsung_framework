.class public final Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

.field public mDismissButtonShowing:Z

.field public mDismissingIconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/wm/shell/common/DismissButtonManager;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/common/DismissButtonManager;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissButtonManager;->createDismissButtonView()V

    .line 16
    .line 17
    .line 18
    const/16 p1, 0x8

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final show(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    const-string v0, "FreeformContainer"

    .line 2
    .line 3
    const-string v1, "[FreeformContainerDismissButtonView] show()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getStableInsets(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 44
    .line 45
    invoke-static {p1}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonManager;->show()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
