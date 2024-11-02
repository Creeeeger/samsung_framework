.class public final Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSPanelController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/SecQSPanelController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;->this$0:Lcom/android/systemui/qs/SecQSPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSPanelController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;-><init>(Lcom/android/systemui/qs/SecQSPanelController;)V

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_HIDE_TILE_FROM_BAR:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;->this$0:Lcom/android/systemui/qs/SecQSPanelController;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->setTiles()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    .line 16
    .line 17
    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method
