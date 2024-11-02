.class public final Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ShelfToolTipManager"

    .line 2
    .line 3
    return-object p0
.end method

.method public final onSecPanelExpansionStateChanged(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    move p1, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-nez p1, :cond_2

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    iget p1, p0, Lcom/android/systemui/ShelfToolTipManager;->panelExpandedCount:I

    .line 20
    .line 21
    iget p2, p0, Lcom/android/systemui/ShelfToolTipManager;->THRESHOLD_COUNT:I

    .line 22
    .line 23
    if-ge p1, p2, :cond_1

    .line 24
    .line 25
    add-int/2addr p1, v0

    .line 26
    iput p1, p0, Lcom/android/systemui/ShelfToolTipManager;->panelExpandedCount:I

    .line 27
    .line 28
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mJustBeginToOpen:Z

    .line 29
    .line 30
    :cond_2
    return-void
.end method
