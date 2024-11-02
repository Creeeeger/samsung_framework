.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    move v0, p0

    .line 17
    :cond_0
    return v0
.end method

.method public final onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 2
    .line 3
    const-string p0, "[FolderView] onBindViewHolder: position="

    .line 4
    .line 5
    const-string p1, "FreeformContainer"

    .line 6
    .line 7
    invoke-static {p0, p2, p1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0d00ff

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public final onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 27
    .line 28
    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 48
    .line 49
    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mDescription:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 59
    .line 60
    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpandAnimating:Z

    .line 61
    .line 62
    if-eqz p0, :cond_1

    .line 63
    .line 64
    const/4 p0, 0x4

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 p0, 0x0

    .line 67
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZED_PREVIEW:Z

    .line 71
    .line 72
    if-nez p0, :cond_2

    .line 73
    .line 74
    iget-object p0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mDescription:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltip(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    return-void
.end method

.method public final onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
