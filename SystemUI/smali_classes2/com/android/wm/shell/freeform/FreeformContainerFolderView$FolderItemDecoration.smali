.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;
.super Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mItemMargin:Landroid/graphics/Rect;

.field public mItemSpace:I

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 6
    .line 7
    iget-object p3, p3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutManager:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;

    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/android/internal/widget/GridLayoutManager;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    add-int/lit8 p3, p3, -0x1

    .line 14
    .line 15
    iget-object p4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget v0, p4, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 24
    .line 25
    iget-object p4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 26
    .line 27
    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView;->isLayoutRtl()Z

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    if-eqz p4, :cond_2

    .line 32
    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    iget-object p4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget p4, p4, Landroid/graphics/Rect;->right:I

    .line 38
    .line 39
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 40
    .line 41
    :cond_0
    if-ne p2, p3, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 44
    .line 45
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    .line 51
    .line 52
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-nez p2, :cond_3

    .line 56
    .line 57
    iget-object p4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 58
    .line 59
    iget p4, p4, Landroid/graphics/Rect;->left:I

    .line 60
    .line 61
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    :cond_3
    if-ne p2, p3, :cond_4

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 66
    .line 67
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    .line 73
    .line 74
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    :goto_0
    return-void
.end method
