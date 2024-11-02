.class public final Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $x:F

.field public final synthetic this$0:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1;->this$0:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1;->$x:F

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1;->this$0:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1;->$x:F

    .line 8
    .line 9
    sget v1, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->updateTabletHorizontalPanelPosition(F)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
