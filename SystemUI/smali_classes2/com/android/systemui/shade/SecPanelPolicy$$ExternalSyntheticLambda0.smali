.class public final synthetic Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/SecPanelPolicy;

.field public final synthetic f$1:Lcom/android/systemui/shade/SecPanelTouchProximityHelper;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/SecPanelPolicy;Lcom/android/systemui/shade/SecPanelTouchProximityHelper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/SecPanelPolicy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/shade/SecPanelTouchProximityHelper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/SecPanelPolicy;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/shade/SecPanelTouchProximityHelper;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 11
    .line 12
    invoke-direct {v1, v0, v2, p0}, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/SecPanelPolicy;Lcom/android/systemui/shade/SecPanelTouchProximityHelper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mMainHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
