.class public final Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;->mMainHandler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDeviceProvisionedChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;->mMainHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
