.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 5
    .line 6
    .line 7
    const-string v0, "[FolderView] mOpenFolderRunnable Run()"

    .line 8
    .line 9
    const-string v2, "FreeformContainer"

    .line 10
    .line 11
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sub-int/2addr v0, v1

    .line 23
    :goto_0
    if-ltz v0, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    const-string v4, "[FolderView] openAnim, itemView="

    .line 39
    .line 40
    invoke-static {v4, v0, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 46
    .line 47
    iput-boolean v1, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mBlockDataUpdate:Z

    .line 48
    .line 49
    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 50
    .line 51
    new-instance v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v5, p0, v3}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v6, 0xd5

    .line 57
    .line 58
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 63
    .line 64
    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const v5, 0x7f0101ae

    .line 67
    .line 68
    .line 69
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    new-instance v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$1;

    .line 74
    .line 75
    invoke-direct {v5, p0, v3}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpandAnimating:Z

    .line 91
    .line 92
    return-void
.end method
