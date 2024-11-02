.class public final Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 4
    .line 5
    new-instance v1, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$1;-><init>(Lcom/android/systemui/ShelfToolTipManager;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->panelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 14
    .line 15
    new-instance v1, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$2;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$2;-><init>(Lcom/android/systemui/ShelfToolTipManager;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->registerTicket(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$3;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$3;-><init>(Lcom/android/systemui/ShelfToolTipManager;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 34
    .line 35
    new-instance v1, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$4;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$4;-><init>(Lcom/android/systemui/ShelfToolTipManager;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addQsExpansionListener(Lcom/android/systemui/shade/ShadeQsExpansionListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
