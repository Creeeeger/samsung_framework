.class public final synthetic Lcom/android/systemui/shade/SecPanelConfigurationBellTower$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/SecPanelConfigurationBellTower;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/SecPanelConfigurationBellTower;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/SecPanelConfigurationBellTower;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/SecPanelConfigurationBellTower;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mWindowVisibility:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->shouldRingBell()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->ringConfigurationBell()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
