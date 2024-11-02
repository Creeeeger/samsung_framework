.class public final Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mPanelVisible:Z

.field public final mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

.field public final mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

.field public mScrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public mStatusBarState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$1;-><init>(Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 10
    .line 11
    .line 12
    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 13
    .line 14
    .line 15
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 20
    .line 21
    iput-object p1, p4, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateCallback:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$1;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final onPanelExpansionChanged(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/16 v0, 0x8

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-lez p1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mPanelVisible:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->updateScrimVisibility()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mPanelVisible:Z

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->updateScrimVisibility()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->onPanelExpansionChanged(F)V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mStatusBarState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mStatusBarState:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->updateScrimVisibility()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final updateScrimVisibility()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mPanelVisible:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 7
    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
