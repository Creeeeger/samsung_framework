.class public final Lcom/android/systemui/shade/transition/ShadeTransitionController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public currentPanelState:Ljava/lang/Integer;

.field public inSplitShade:Z

.field public lastShadeExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

.field public qs:Lcom/android/systemui/plugins/qs/QS;

.field public final scrimShadeTransitionController:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

.field public shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/dump/DumpManager;Landroid/content/Context;Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->scrimShadeTransitionController:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 9
    .line 10
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    const p6, 0x7f050046

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    iput-boolean p4, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->inSplitShade:Z

    .line 22
    .line 23
    new-instance p4, Lcom/android/systemui/shade/transition/ShadeTransitionController$1;

    .line 24
    .line 25
    invoke-direct {p4, p0}, Lcom/android/systemui/shade/transition/ShadeTransitionController$1;-><init>(Lcom/android/systemui/shade/transition/ShadeTransitionController;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 29
    .line 30
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/android/systemui/shade/transition/ShadeTransitionController$currentState$1;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/transition/ShadeTransitionController$currentState$1;-><init>(Lcom/android/systemui/shade/transition/ShadeTransitionController;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->lastShadeExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 43
    .line 44
    iput-object p1, p5, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 45
    .line 46
    invoke-virtual {p5}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->onStateChanged()V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/android/systemui/shade/transition/ShadeTransitionController$2;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/transition/ShadeTransitionController$2;-><init>(Lcom/android/systemui/shade/transition/ShadeTransitionController;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p2, Lcom/android/systemui/shade/ShadeExpansionStateManager;->stateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/android/systemui/shade/transition/ShadeTransitionController$3;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/transition/ShadeTransitionController$3;-><init>(Lcom/android/systemui/shade/transition/ShadeTransitionController;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "ShadeTransitionController"

    .line 65
    .line 66
    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
