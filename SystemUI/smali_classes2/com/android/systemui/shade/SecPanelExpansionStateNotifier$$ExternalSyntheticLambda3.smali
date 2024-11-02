.class public final synthetic Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelExpanded:Z

    .line 9
    .line 10
    iget-boolean v1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelExpanded:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->updatePanelOpenState()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelFirstDepthFraction:F

    .line 20
    .line 21
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 22
    .line 23
    cmpg-float v0, v0, p1

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-nez v0, :cond_2

    .line 31
    .line 32
    iput p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelFirstDepthFraction:F

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->updatePanelOpenState()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method
