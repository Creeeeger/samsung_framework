.class public final Lcom/android/wm/shell/common/split/DividerResizeLayout$DefaultDividerResizeTarget;
.super Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final calculateBoundsForPosition(ILandroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget v5, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerSize:I

    .line 18
    .line 19
    move v0, p1

    .line 20
    move-object v2, p2

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getDirection()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Default"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo v1, "}"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
