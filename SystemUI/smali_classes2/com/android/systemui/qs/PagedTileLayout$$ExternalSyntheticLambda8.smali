.class public final synthetic Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/PagedTileLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/qs/PagedTileLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final setViewPageToSelected(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda6;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/qs/PagedTileLayout;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
