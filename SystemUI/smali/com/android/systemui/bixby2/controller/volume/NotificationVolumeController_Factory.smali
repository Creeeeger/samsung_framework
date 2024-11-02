.class public final Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController_Factory;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController_Factory$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController_Factory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newInstance()Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;
    .locals 0

    .line 2
    invoke-static {}, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController_Factory;->newInstance()Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController_Factory;->get()Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;

    move-result-object p0

    return-object p0
.end method
