.class public final Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    sub-int v4, v0, v1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    sub-int v5, p1, v0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 34
    .line 35
    iget p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mCornerRadius:I

    .line 36
    .line 37
    int-to-float v6, p0

    .line 38
    move-object v1, p2

    .line 39
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
