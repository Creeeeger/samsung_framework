.class public final synthetic Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/TileLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/TileLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    check-cast p2, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 15
    .line 16
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 17
    .line 18
    div-int v1, p1, v0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    add-int/2addr v1, v2

    .line 22
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 23
    .line 24
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    .line 25
    .line 26
    if-ge v1, v3, :cond_0

    .line 27
    .line 28
    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 32
    .line 33
    if-lt v1, v3, :cond_1

    .line 34
    .line 35
    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 36
    .line 37
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 40
    .line 41
    add-int v3, p1, v0

    .line 42
    .line 43
    sub-int/2addr v3, v2

    .line 44
    div-int/2addr v3, v0

    .line 45
    if-le v1, v3, :cond_2

    .line 46
    .line 47
    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 48
    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 53
    .line 54
    :cond_3
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 55
    .line 56
    if-eq p2, p0, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    move v2, v0

    .line 60
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method
