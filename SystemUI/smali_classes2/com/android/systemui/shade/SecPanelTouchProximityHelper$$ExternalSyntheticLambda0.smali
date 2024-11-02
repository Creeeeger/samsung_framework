.class public final synthetic Lcom/android/systemui/shade/SecPanelTouchProximityHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/SecPanelTouchProximityHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/SecPanelTouchProximityHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/SecPanelTouchProximityHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/SecPanelTouchProximityHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "SecPanelTouchProximityHelper"

    .line 12
    .line 13
    const-string v1, "Collapsing panel by ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 19
    .line 20
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->postAnimateForceCollapsePanels()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
