.class public final synthetic Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    sub-int/2addr v2, v3

    .line 15
    :goto_0
    if-ltz v2, :cond_2

    .line 16
    .line 17
    iget-object v4, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    iget-object v5, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {v4, v1, v5}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->calculateBoundsForPosition(ILandroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->updateDismissSide(I)Z

    .line 33
    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    move v7, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    move v7, v6

    .line 41
    :goto_1
    invoke-virtual {v4, v7}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v7, 0x12c

    .line 45
    .line 46
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startBoundsAnimation(Landroid/graphics/Rect;ZJ)V

    .line 47
    .line 48
    .line 49
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method
