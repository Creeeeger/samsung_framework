.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 p2, 0x7

    .line 17
    if-eq p1, p2, :cond_3

    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mDismissPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$2;

    .line 24
    .line 25
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mShowPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;

    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    const/16 p2, 0x9

    .line 38
    .line 39
    if-ne p1, p2, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZED_PREVIEW:Z

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWindowManager:Landroid/view/WindowManager;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 68
    .line 69
    const/4 v2, -0x1

    .line 70
    const/4 v3, -0x1

    .line 71
    const/16 v4, 0xa2c

    .line 72
    .line 73
    const v5, 0x1000338

    .line 74
    .line 75
    .line 76
    const/4 v6, -0x3

    .line 77
    move-object v1, v7

    .line 78
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 79
    .line 80
    .line 81
    const-string v1, "freeform-thumbnail"

    .line 82
    .line 83
    invoke-virtual {v7, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 87
    .line 88
    const v2, 0x20000050

    .line 89
    .line 90
    .line 91
    or-int/2addr v1, v2

    .line 92
    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 93
    .line 94
    invoke-virtual {v7, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 99
    .line 100
    const v1, 0x800033

    .line 101
    .line 102
    .line 103
    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 104
    .line 105
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 106
    .line 107
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 108
    .line 109
    invoke-interface {p2, p1, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mShowPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;

    .line 117
    .line 118
    const-wide/16 v1, 0x190

    .line 119
    .line 120
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 125
    .line 126
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mDismissPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$2;

    .line 129
    .line 130
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_0
    return v0
.end method
