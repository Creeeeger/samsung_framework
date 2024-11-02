.class public final Lcom/android/systemui/qs/SecPagedTileLayout;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public cellWidth:I

.field public final distributeTilesConsumer:Ljava/util/function/Consumer;

.field public final distributeTilesRunnable:Ljava/lang/Runnable;

.field public final distributeTilesSupplier:Ljava/util/function/BooleanSupplier;

.field public final getColumnCountSupplier:Ljava/util/function/IntSupplier;

.field public final knoxStateCallback:Lcom/android/systemui/qs/SecPagedTileLayout$knoxStateCallback$1;

.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final lastMaxHeightConsumer:Ljava/util/function/IntConsumer;

.field public final lastMaxHeightSupplier:Ljava/util/function/IntSupplier;

.field public lastMaxWidth:I

.field public layoutDirection:I

.field public pageHeight:I

.field public final pagesSupplier:Ljava/util/function/Supplier;

.field public final resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final tilesSupplier:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(ILjava/util/function/Consumer;Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;Ljava/util/function/IntSupplier;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/TileLayout;",
            ">;>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->layoutDirection:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->distributeTilesConsumer:Ljava/util/function/Consumer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->distributeTilesSupplier:Ljava/util/function/BooleanSupplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->distributeTilesRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->getColumnCountSupplier:Ljava/util/function/IntSupplier;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->lastMaxHeightConsumer:Ljava/util/function/IntConsumer;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->lastMaxHeightSupplier:Ljava/util/function/IntSupplier;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->pagesSupplier:Ljava/util/function/Supplier;

    .line 19
    .line 20
    iput-object p12, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->tilesSupplier:Ljava/util/function/Supplier;

    .line 21
    .line 22
    const-class p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 31
    .line 32
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 41
    .line 42
    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->lastMaxWidth:I

    .line 44
    .line 45
    iput p1, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->pageHeight:I

    .line 46
    .line 47
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-interface {p10, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p11, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lcom/android/systemui/qs/SecPagedTileLayout$knoxStateCallback$1;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecPagedTileLayout$knoxStateCallback$1;-><init>(Lcom/android/systemui/qs/SecPagedTileLayout;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->knoxStateCallback:Lcom/android/systemui/qs/SecPagedTileLayout$knoxStateCallback$1;

    .line 61
    .line 62
    return-void
.end method
