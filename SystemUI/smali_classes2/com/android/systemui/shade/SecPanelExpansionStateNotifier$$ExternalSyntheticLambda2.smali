.class public final synthetic Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string/jumbo v2, "sem_statusbar"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/app/SemStatusBarManager;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 21
    .line 22
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-ne p0, v1, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/SemStatusBarManager;->setPanelExpandState(Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method
