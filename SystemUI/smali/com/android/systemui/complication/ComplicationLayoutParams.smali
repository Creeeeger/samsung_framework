.class public final Lcom/android/systemui/complication/ComplicationLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INVALID_DIRECTIONS:Ljava/util/Map;

.field public static final INVALID_POSITIONS:[I


# instance fields
.field public final mConstraint:I

.field public final mDirection:I

.field public final mDirectionalSpacing:I

.field public final mPosition:I

.field public final mSnapToGuide:Z

.field public final mWeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/16 v1, 0xc

    .line 3
    .line 4
    filled-new-array {v0, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/systemui/complication/ComplicationLayoutParams;->INVALID_POSITIONS:[I

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/systemui/complication/ComplicationLayoutParams;->INVALID_DIRECTIONS:Ljava/util/Map;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/complication/ComplicationLayoutParams;-><init>(IIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 9

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/complication/ComplicationLayoutParams;-><init>(IIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/complication/ComplicationLayoutParams;-><init>(IIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 4

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-nez p3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    sget-object v0, Lcom/android/systemui/complication/ComplicationLayoutParams;->INVALID_POSITIONS:[I

    move v1, p1

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    aget v2, v0, v1

    and-int v3, p3, v2

    if-ne v3, v2, :cond_1

    :goto_1
    move v0, p1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_2
    if-eqz v0, :cond_6

    .line 7
    iput p3, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mPosition:I

    move v0, p2

    :goto_3
    const/16 v1, 0x8

    if-gt v0, v1, :cond_4

    and-int v1, p3, v0

    if-ne v1, v0, :cond_3

    .line 8
    sget-object v1, Lcom/android/systemui/complication/ComplicationLayoutParams;->INVALID_DIRECTIONS:Ljava/util/Map;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p4

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move p1, p2

    :goto_4
    if-eqz p1, :cond_5

    .line 11
    iput p4, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    .line 12
    iput p5, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mWeight:I

    .line 13
    iput p6, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirectionalSpacing:I

    .line 14
    iput p7, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mConstraint:I

    .line 15
    iput-boolean p8, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mSnapToGuide:Z

    return-void

    .line 16
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid direction:"

    .line 17
    invoke-static {p1, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid position:"

    .line 20
    invoke-static {p1, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 9

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/complication/ComplicationLayoutParams;-><init>(IIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/complication/ComplicationLayoutParams;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mPosition:I

    iput v0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mPosition:I

    .line 44
    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    iput v0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    .line 45
    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mWeight:I

    iput v0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mWeight:I

    .line 46
    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirectionalSpacing:I

    iput v0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirectionalSpacing:I

    .line 47
    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mConstraint:I

    iput v0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mConstraint:I

    .line 48
    iget-boolean p1, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mSnapToGuide:Z

    iput-boolean p1, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mSnapToGuide:Z

    return-void
.end method

.method public static iteratePositions(ILjava/util/function/Consumer;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    const/16 v1, 0x8

    .line 3
    .line 4
    if-gt v0, v1, :cond_1

    .line 5
    .line 6
    and-int v1, p0, v0

    .line 7
    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method
