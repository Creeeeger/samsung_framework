.class public final Lcom/android/systemui/qs/SecTileLayout;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final cellHeightSupplier:Ljava/util/function/IntSupplier;

.field public final cellMarginHorizontalSupplier:Ljava/util/function/IntSupplier;

.field public final cellWidthSupplier:Ljava/util/function/IntSupplier;

.field public final columnsConsumer:Ljava/util/function/IntConsumer;

.field public final columnsSupplier:Ljava/util/function/IntSupplier;

.field public final contextSupplier:Ljava/util/function/Supplier;

.field public final getLayoutDirectionSupplier:Ljava/util/function/IntSupplier;

.field public final getRowTopFunction:Ljava/util/function/IntFunction;

.field public height:I

.field public final lastCellWidthSupplier:Ljava/util/function/IntSupplier;

.field public final records:Ljava/util/ArrayList;

.field public final resourcePicker$delegate:Lkotlin/Lazy;

.field public final rowsSupplier:Ljava/util/function/IntSupplier;

.field public final settingsHelper$delegate:Lkotlin/Lazy;

.field public final sidePaddingSupplier:Ljava/util/function/IntSupplier;

.field public tileVerticalMargin:I

.field public final updateMaxRowsBiFunction:Ljava/util/function/BiFunction;


# direct methods
.method public constructor <init>(Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntFunction;Ljava/util/ArrayList;Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/BiFunction;Ljava/util/function/IntSupplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntFunction<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;",
            ">;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/IntSupplier;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/SecTileLayout;->cellHeightSupplier:Ljava/util/function/IntSupplier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/SecTileLayout;->cellMarginHorizontalSupplier:Ljava/util/function/IntSupplier;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/SecTileLayout;->cellWidthSupplier:Ljava/util/function/IntSupplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/SecTileLayout;->columnsConsumer:Ljava/util/function/IntConsumer;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/SecTileLayout;->columnsSupplier:Ljava/util/function/IntSupplier;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/qs/SecTileLayout;->contextSupplier:Ljava/util/function/Supplier;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/qs/SecTileLayout;->getLayoutDirectionSupplier:Ljava/util/function/IntSupplier;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/qs/SecTileLayout;->getRowTopFunction:Ljava/util/function/IntFunction;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/qs/SecTileLayout;->records:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/qs/SecTileLayout;->rowsSupplier:Ljava/util/function/IntSupplier;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/qs/SecTileLayout;->sidePaddingSupplier:Ljava/util/function/IntSupplier;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/systemui/qs/SecTileLayout;->updateMaxRowsBiFunction:Ljava/util/function/BiFunction;

    .line 27
    .line 28
    iput-object p13, p0, Lcom/android/systemui/qs/SecTileLayout;->lastCellWidthSupplier:Ljava/util/function/IntSupplier;

    .line 29
    .line 30
    sget-object p1, Lcom/android/systemui/qs/SecTileLayout$resourcePicker$2;->INSTANCE:Lcom/android/systemui/qs/SecTileLayout$resourcePicker$2;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/systemui/qs/SecTileLayout;->resourcePicker$delegate:Lkotlin/Lazy;

    .line 37
    .line 38
    sget-object p1, Lcom/android/systemui/qs/SecTileLayout$settingsHelper$2;->INSTANCE:Lcom/android/systemui/qs/SecTileLayout$settingsHelper$2;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/SecTileLayout;->settingsHelper$delegate:Lkotlin/Lazy;

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    iput p1, p0, Lcom/android/systemui/qs/SecTileLayout;->height:I

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/SecTileLayout;->resourcePicker$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 8
    .line 9
    return-object p0
.end method

.method public final update(Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecTileLayout;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/SecTileLayout;->contextSupplier:Ljava/util/function/Supplier;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p2, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;->accept(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
