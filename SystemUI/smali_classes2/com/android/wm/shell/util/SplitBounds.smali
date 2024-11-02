.class public final Lcom/android/wm/shell/util/SplitBounds;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wm/shell/util/SplitBounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final appsStackedVertically:Z

.field public final cellDividerBounds:Landroid/graphics/Rect;

.field public final cellDividerHeightPercent:F

.field public final cellDividerWidthPercent:F

.field public final cellLeftTaskPercent:F

.field public final cellPosition:I

.field public final cellTaskBounds:Landroid/graphics/Rect;

.field public final cellTaskId:I

.field public final cellTopTaskPercent:F

.field public final dividerHeightPercent:F

.field public final dividerWidthPercent:F

.field public final leftTaskPercent:F

.field public final leftTopBounds:Landroid/graphics/Rect;

.field public final leftTopTaskId:I

.field public final rightBottomBounds:Landroid/graphics/Rect;

.field public final rightBottomTaskId:I

.field public final topTaskPercent:F

.field public final visualDividerBounds:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/util/SplitBounds$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/wm/shell/util/SplitBounds$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/wm/shell/util/SplitBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 9

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIII)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    .line 5
    iput p4, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    .line 6
    iput p5, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    .line 8
    iput p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    .line 9
    iput p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    .line 10
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_7

    const/4 p4, -0x1

    if-eq p6, p4, :cond_7

    .line 11
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/high16 p6, 0x3f800000    # 1.0f

    if-nez p8, :cond_3

    .line 12
    iput-boolean v0, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    and-int/lit8 p5, p7, 0x8

    if-eqz p5, :cond_1

    .line 13
    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 14
    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p8, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p8

    int-to-float p5, p5

    .line 15
    new-instance p8, Landroid/graphics/Rect;

    iget v0, p4, Landroid/graphics/Rect;->right:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p8, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    .line 16
    new-instance p7, Landroid/graphics/Rect;

    iget p8, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p7, p8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 17
    :cond_0
    new-instance p7, Landroid/graphics/Rect;

    iget p8, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p7, p8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 19
    iget p5, p4, Landroid/graphics/Rect;->right:I

    iget p8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p8

    int-to-float p5, p5

    .line 20
    new-instance p8, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    iget v3, p4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p8, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_2

    .line 21
    new-instance p7, Landroid/graphics/Rect;

    iget p8, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p7, p8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 22
    :cond_2
    new-instance p7, Landroid/graphics/Rect;

    iget p8, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p7, p8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    .line 24
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    .line 25
    iput p6, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    .line 26
    iput p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    .line 27
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    goto/16 :goto_2

    .line 28
    :cond_3
    iput-boolean p5, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    and-int/lit8 p5, p7, 0x10

    if-eqz p5, :cond_5

    .line 29
    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 30
    iget p5, p2, Landroid/graphics/Rect;->bottom:I

    iget p8, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p8

    int-to-float p5, p5

    .line 31
    new-instance p8, Landroid/graphics/Rect;

    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p8, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_4

    .line 32
    new-instance p7, Landroid/graphics/Rect;

    iget p8, p3, Landroid/graphics/Rect;->right:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p7, p8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 33
    :cond_4
    new-instance p7, Landroid/graphics/Rect;

    iget p8, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p7, p8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 34
    :cond_5
    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 35
    iget p5, p4, Landroid/graphics/Rect;->bottom:I

    iget p8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p8

    int-to-float p5, p5

    .line 36
    new-instance p8, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p4, Landroid/graphics/Rect;->right:I

    iget v3, p4, Landroid/graphics/Rect;->top:I

    invoke-direct {p8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p8, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_6

    .line 37
    new-instance p7, Landroid/graphics/Rect;

    iget p8, p3, Landroid/graphics/Rect;->right:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p7, p8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 38
    :cond_6
    new-instance p7, Landroid/graphics/Rect;

    iget p8, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p7, p8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    .line 39
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p7

    int-to-float p7, p7

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p7, p1

    iput p7, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    .line 40
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    .line 41
    iput p6, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    .line 42
    iput p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    .line 43
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    move v4, p5

    move p5, p1

    move p1, v4

    .line 44
    :goto_2
    iget-object p2, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p5

    iput p2, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerWidthPercent:F

    .line 45
    iget-object p2, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    iput p2, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerHeightPercent:F

    .line 46
    iget-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerWidthPercent:F

    .line 47
    iget-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerHeightPercent:F

    goto :goto_4

    .line 48
    :cond_7
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    if-le p3, p4, :cond_8

    .line 49
    new-instance p3, Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->left:I

    iget p6, p1, Landroid/graphics/Rect;->bottom:I

    iget p7, p1, Landroid/graphics/Rect;->right:I

    iget p8, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p3, p4, p6, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    .line 50
    iput-boolean p5, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    goto :goto_3

    .line 51
    :cond_8
    new-instance p3, Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget p5, p1, Landroid/graphics/Rect;->top:I

    iget p6, p2, Landroid/graphics/Rect;->left:I

    iget p7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, p4, p5, p6, p7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    .line 52
    iput-boolean v0, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    .line 53
    :goto_3
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget p4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p4

    int-to-float p3, p3

    .line 54
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p3

    iput p4, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    .line 57
    iget-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p3

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerWidthPercent:F

    .line 58
    iget-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerHeightPercent:F

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 60
    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    .line 61
    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerWidthPercent:F

    .line 63
    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerHeightPercent:F

    :goto_4
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    .line 66
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    .line 67
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerWidthPercent:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerHeightPercent:F

    .line 75
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    .line 78
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerWidthPercent:F

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerHeightPercent:F

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/wm/shell/util/SplitBounds;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/wm/shell/util/SplitBounds;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    .line 30
    .line 31
    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    .line 32
    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    .line 36
    .line 37
    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    .line 38
    .line 39
    if-ne v0, v2, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget-object v2, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget p0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    .line 52
    .line 53
    iget p1, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    .line 54
    .line 55
    if-ne p0, p1, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget p0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LeftTop: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", taskId: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "\nRightBottom: "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "\ncell: "

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "\n(Percent) top="

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ", left="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", cell_top="

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ", cell_left="

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, "\nDivider: "

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, "\nCellDivider: "

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, "\nCellPosition: "

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, "\nAppsVertical? "

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-boolean p0, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerWidthPercent:F

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerHeightPercent:F

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 69
    .line 70
    .line 71
    iget p2, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 74
    .line 75
    .line 76
    iget p2, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 79
    .line 80
    .line 81
    iget p2, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerWidthPercent:F

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    .line 85
    .line 86
    iget p0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerHeightPercent:F

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
