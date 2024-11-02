.class public final synthetic Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/IntFunction;


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
    iput-object p1, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/systemui/qs/SecTileLayout;->tileVerticalMargin:I

    .line 8
    .line 9
    add-int/2addr v0, p0

    .line 10
    mul-int/2addr v0, p1

    .line 11
    add-int/2addr v0, p0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
