.class public final synthetic Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda5;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda5;->f$0:I

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda5;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;

    .line 6
    .line 7
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;->onSecPanelExpansionStateChanged(IZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
