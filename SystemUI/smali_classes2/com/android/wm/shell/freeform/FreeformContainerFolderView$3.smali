.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;
.super Lcom/android/internal/widget/RecyclerView$OnScrollListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 5
    .line 6
    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastScrollState:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 17
    .line 18
    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastScrollState:I

    .line 19
    .line 20
    return-void
.end method
