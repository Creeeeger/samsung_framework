.class public final Lcom/android/systemui/qs/SecQSFragment;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public expandImmediate:Ljava/util/function/BooleanSupplier;

.field public qsCinemaFragmentAdapter:Lcom/android/systemui/qs/cinema/QSCinemaCompany;

.field public final qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field public final quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

.field public final quickBar:Lcom/android/systemui/qs/QuickBar;

.field public final quickPanel:Lcom/android/systemui/qs/QuickPanel;

.field public final quickTile:Lcom/android/systemui/qs/QuickTile;

.field public final shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public stackScrollerOverscrolling:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/SecQSFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/SecQSFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Ljava/util/function/BooleanSupplier;Lcom/android/systemui/qs/SecQSDetailDisplayer;Ljava/util/function/Supplier;Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Ljava/util/function/BooleanSupplier;",
            "Lcom/android/systemui/qs/SecQSDetailDisplayer;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSFragment;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/systemui/qs/SecQSFragment;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 7
    .line 8
    new-instance p3, Lcom/android/systemui/qs/QuickAnimation;

    .line 9
    .line 10
    invoke-direct {p3, p2, p4}, Lcom/android/systemui/qs/QuickAnimation;-><init>(Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;)V

    .line 11
    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 14
    .line 15
    new-instance p3, Lcom/android/systemui/qs/QuickBar;

    .line 16
    .line 17
    invoke-direct {p3, p2}, Lcom/android/systemui/qs/QuickBar;-><init>(Ljava/util/function/BooleanSupplier;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 21
    .line 22
    new-instance p3, Lcom/android/systemui/qs/QuickPanel;

    .line 23
    .line 24
    invoke-direct {p3, p2}, Lcom/android/systemui/qs/QuickPanel;-><init>(Ljava/util/function/BooleanSupplier;)V

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/systemui/qs/SecQSFragment;->quickPanel:Lcom/android/systemui/qs/QuickPanel;

    .line 28
    .line 29
    new-instance p3, Lcom/android/systemui/qs/QuickTile;

    .line 30
    .line 31
    invoke-direct {p3, p1}, Lcom/android/systemui/qs/QuickTile;-><init>(Lcom/android/systemui/plugins/FalsingManager;)V

    .line 32
    .line 33
    .line 34
    iput-object p3, p0, Lcom/android/systemui/qs/SecQSFragment;->quickTile:Lcom/android/systemui/qs/QuickTile;

    .line 35
    .line 36
    new-instance p0, Lcom/android/systemui/shade/SecPanelFoldHelper;

    .line 37
    .line 38
    invoke-direct {p0, p2}, Lcom/android/systemui/shade/SecPanelFoldHelper;-><init>(Ljava/util/function/BooleanSupplier;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
